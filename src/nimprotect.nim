import std/[macros, times, md5]
import strutils
import sequtils
import RC4

macro protectString*(data: static[string]): string =
  # rc4 key = md5(cpu time())
  let key = getMD5($cpuTime())
  # encrypt the string
  let encrypted_data = toRC4(key, data)
  # convert vars to NimNode in order to inject it to the code
  let encrypted_data_nn = newLit(encrypted_data)
  let key_nn = newLit(key)
  # inject the new line back to code 
  quote do:
    fromRC4(`key_nn`, `encrypted_data_nn`)

macro splitString*(data: static[string]): string =
  # split the string
  let splited = toSeq(data.items)
  # convert to NimNode
  let splited_nn = newLit(splited)
  # inject the new line back to code 
  quote do:
    join(`splited_nn`)
