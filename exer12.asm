; Stack exercise, push and look at gdb

section .text
  global _start

_start:
   push 0xde
   push 0xad
   push 0x11
   push 0x22
   push 0x33
   push 0x44
   push 0x55
   push 0x66
   push 0x77
   push 0x88
   push 0x99
   push 0xaa

   mov rax, 60
   mov rdi, 0
   syscall
