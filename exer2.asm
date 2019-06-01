global _start

_start:
  mov eax, 1
  mov ebx, 42
  jmp skip
  mov ebx, 32
skip:
  int 0x80