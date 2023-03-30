section .data 
    msg db 'Hello World', 0xA
    tam equ $- msg

section .bss 

section .text

global _start
_start:
    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, msg 
    mov edx, tam 
    int 0x80

    mov eax, 0x1 ; terminando o programa
    mov ebx, 0x0 ; saida
    int 0x80


