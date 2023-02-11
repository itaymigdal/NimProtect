import std/[macros, times, md5]
import RC4

macro protectString*(data: static[string]): string =
  # rc4 key = md5(cpu time())
  let key = getMD5($cpuTime())
  echo key
  # encrypt the string
  let encrypted_data = toRC4(key, data)
  # convert vars to NimNode in order to inject it to the code
  let encrypted_data_nn = newLit(encrypted_data)
  let key_nn = newLit(key)
  # inject the new line back to code 
  quote do:
    fromRC4(`key_nn`, `encrypted_data_nn`)


echo protectString("heloo")
echo protectString("helloo")