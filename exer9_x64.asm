; Combining a c and an asm code
;
; $ nasm -f elf64 -o exer9.o exer9_x64.asm
; $ gcc -m64 -ggdb exer9.o main2.c -o exer9
;
; Generate an object dump
; $ objdump -Mintel -d exer9

global addNumbers

addNumbers:
  lea rax, [edi+esi]
  ret 

