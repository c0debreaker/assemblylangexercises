; To compile and build a binary using nasm and gcc

; $ nasm -f elf32 -o exer6.o exer6.asm
; $ gcc -m32 exer6.o -o exer6

global main
extern printf

section .data
  msg db "Testing %i ...", 0x0a, 0x00

main:
  push ebp
  mov ebp, esp
  push 123
  push msg
  call printf
  mov eax, 0
  mov esp, ebp
  pop ebp
  ret