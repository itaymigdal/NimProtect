
# NimProtect

NimProtect is a tiny macro library for protecting sensitive strings in compiled binaries. 

I built it in order to fullfill the need for compile-time string encryptor that will decrypt the strings at runtime whenever needed, just as the great but abandoned [nim-strenc](https://github.com/Yardanico/nim-strenc) did.

Every string is RC4 encrypted with different MD5 key (quick disclaimer: remember that RC4 is insecure algorithm and all strings can be decrypted with some reverse engineering work).

Compile with: `--benchmarkVM:on`

### Update:

Added `splitString()` macro to split and hide big suspicious strings (takes LONG to compile!)

## Installation

```
nimble install NimProtect
```

## Usage

```
import nimprotect

let c2_url = protectString("https://protected-c2-server.com")
let malicious_base64_shellcode_blob = protectString(splitString("H4sIAAAAAAAACuy9eXgUxdYw3hMyEBCYY..."))  # Takes long to compile, be patient
```

### *Easy Peasy :grin: :metal:*
  
