global _start

section .text
_start:
  mov [esp], byte 'H'
  mov [esp+1], byte 'i'
  mov [esp+2], byte 'p'
  mov [esp+3], byte 'e'
  mov [esp+4], byte 'r'
  mov [esp+5], byte 0x0a
  mov eax, 4
  mov ebx, 1
  mov ecx, esp
  mov edx, 6
  int 0x80

  mov eax, 1
  mov ebx, 0
  int 0x80