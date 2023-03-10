
# NimProtect

NimProtect is a tiny single-macro library for protecting sensitive strings in compiled binaries. 

I built it in order to fullfill the need for compile-time string encryptor that will decrypt the strings at runtime whenever needed, just as the great but abandoned [nim-strenc](https://github.com/Yardanico/nim-strenc) did.

Every string is RC4 encrypted with different MD5 key (quick disclaimer: remember that RC4 is insecure algorithm and all strings can be decrypted with some reverse engineering work).

Compile with: `--benchmarkVM:on`

## Installation

```
nimble install nimprotect
```

## Usage

```
import nimprotect

let c2_url = protectString("https://protected-c2-server.com")
```

### *Easy Peasy :grin: :metal:*
  
