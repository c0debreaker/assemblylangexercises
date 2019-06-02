; Combining a c and an asm code
;
; $ nasm -f elf32 -o exer7.o exer7.asm
; $ gcc -m32 exer7.o main.c -o exer7
;
; Generate an object dump
; $ objdump -Mintel -d ex7

global add42

add42:
  push ebp
  mov ebp, esp
  mov eax, [ebp+8]
  add eax, 42
  mov esp, ebp
  pop ebp
  ret

  
