; Compiling 64-bit assembly codes
;
; $ nasm -f elf64 -o exer8_x64.o exer8_x64.asm
; $ ld exer8_x64.o -o exer8_x64

global _start

section .data
  msg db "Hello world", 0x0a

_start:
  mov rax, 1
  mov rdi, 1
  mov rsi, msg
  mov rdx, 12
  syscall

  mov rax, 60
  mov rdi, 0
  syscall