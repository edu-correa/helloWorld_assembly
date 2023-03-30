section .data 
    msg db 'How can someone hate a language!', 0xA
    tam equ $- msg
    ms1 db 'I hate ASM', 0xA
    tam2 equ $- ms1
    ms2 db 'I love ASM', 0xA
    tam3 equ $- ms2

section .bss 

section .text

global _start
_start:
    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, msg 
    mov edx, tam 
    int 0x80

    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, ms1
    mov edx, tam2
    int 0x80
    
    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, ms2
    mov edx, tam3
    int 0x80
    
    mov eax, 0x1
    mov ebx, 0x0
    int 0x80

