
# NimProtect

NimProtect is a tiny single-macro library for protecting sensitive strings in compiled binaries. 

I built it in order to fullfill the need for compile-time string encryptor that will decrypt the strings at runtime whenever needed, just as the great but abandoned [nim-srenc](https://github.com/Yardanico/nim-strenc) did.

## Installation

```
nimble install https://github.com/itaymigdal/NimProtect
```

## Usage

```
import nimprotect

let c2_url = protectString("https://protected-c2-server.com")
```

### *Easy Peasy :grin: :metal:*
  