// Compilation command for building a 32-bit Forth interpreter
// gcc -m32 -nostdlib -static -Wl,-Ttext,0 -Wl,--build-id=none -o laoforth laoforth.S
//
// Flag explanations:
// -m32                  : Generate 32-bit x86 code (instead of 64-bit)
// -nostdlib             : Do not link against standard C library (no startup files or default libraries)
// -static               : Create a statically linked executable (no dynamic libraries)
// -Wl,-Ttext,0          : Pass option to linker (-Wl) to set text section address (-Ttext) to 0x0
//                         This creates a position-dependent executable starting at address 0
// -Wl,--build-id=none   : Pass option to linker to disable build ID generation
//                         Avoids adding extra metadata sections to the binary
// -o laoforth           : Output file name
// laoforth.S            : Input assembly source file (capital .S means it will be preprocessed)