; Increment numbers, comparing numbers, assigning values to memory
; then retrieving it

global _start

section .data
    myval db 0, 0x0a
    
section .text

_start:
    mov rax, 1
    call incRax
    cmp rax, 2
    jne exit
    call add20
    jmp exit

incRax:
    inc rax
    ret

add20:
    add rax, 20; 0x14 is the hex of 20
    ret

exit:
    add rax, 48 ; this is character 0, see http://www.asciitable.com/, 2nd column
    mov [myval], al
    mov rax, 1
    mov rdi, 1
    mov rsi, myval
    mov rdx, 2
    syscall

    mov rax, 60
    mov rdi, 0
    syscall ; invoke the system call
