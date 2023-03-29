section .data //constantes
    msg db 'Hello World!', 0xA
    tam equ $- msg

section .bss //variaveis


section .text

global _start //label/ponto de inicio do programa chamado _start (obrigatório)

_start:
    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, msg 
    mov edx, tam 
    int 0x80

    mov eax, 0x1 ; terminando o programa
    mov ebx, 0x0 ; saida
    int 0x80 //processa a informação kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk


