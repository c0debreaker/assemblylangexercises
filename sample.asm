// to build: gcc -lc -o test2 test2.asm
        .intel_syntax
.LC0:
        .string "Hello World\n"
        .global _main
_main:
        mov     edi, 1
        sub     rsp, 8
        mov     edx, 12
        lea     rsi, [rip + .LC0]
        call    _write
        xor     edi, edi
        call    _exit
