; Parameter passing in functions
;
; This program will add 2 numbers 7 and 8 but will add the sum to 48 which is inside 
; _printAddNumbers function.
;
; To assemble:
; $ nasm -f elf64 -o exer10.o exer10.asm
;
; To link:
; $ ld exer10.o -o exer10
;
; When compiling with gcc and when your code is not iincluding any C headers, link with
; $ gcc -m64 -ggdb -nostdlib -no-pie exer10.o -o exer10
;
; Debugging in gdb
; $ gdb ./exer10
; gdb-peda$ disass _start or disass _printAddNumbers
; gdb-peda$ help disass
; gdb-peda$ help x
; 
; gdb-peda$ disass
; Dump of assembler code for function _start:
; => 0x0000000000400110 <+0>:	mov    eax,0x7
;    0x0000000000400115 <+5>:	add    rax,0x8
;    0x0000000000400119 <+9>:	call   0x40012a <_printAddNumbers>
;    0x000000000040011e <+14>:	mov    eax,0x3c
;    0x0000000000400123 <+19>:	mov    edi,0x0
;    0x0000000000400128 <+24>:	syscall 
; End of assembler dump.
; gdb-peda$ disass _printAddNumbers
; Dump of assembler code for function _printAddNumbers:
;    0x000000000040012a <+0>:	add    rax,0x30
;    0x000000000040012e <+4>:	mov    BYTE PTR ds:0x600154,al
;    0x0000000000400135 <+11>:	mov    eax,0x1
;    0x000000000040013a <+16>:	mov    edi,0x1
;    0x000000000040013f <+21>:	movabs rsi,0x600154
;    0x0000000000400149 <+31>:	mov    edx,0x2
;    0x000000000040014e <+36>:	syscall 
;    0x0000000000400150 <+38>:	ret    
; End of assembler dump.
;
; You can break on address
; gdb-peda$ br *0x0000000000400115
; gdb-peda$ run
;
; To step over, use si


section .data
  digit db 0, 10

section .text
  global _start

_start:
  mov rax, 7 ; assign 7 to rax
  add rax, 8 ; add 8 to the current value of rax
  call _printAddNumbers ; call the _printAddNumbers fn below

  mov rax, 60 ; system call exit
  mov rdi, 0 ; error code, 0 is good
  syscall ; invoke the system call

_printAddNumbers:
  add rax, 48 ; this is character 0, see http://www.asciitable.com/, 2nd column
  mov [digit], al
  mov rax, 1 ; system call write which is output to screen
  mov rdi, 1
  mov rsi, digit
  mov rdx, 2
  syscall
  ret