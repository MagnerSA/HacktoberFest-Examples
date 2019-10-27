; ld -m elf_i386 -s -o hello hello.o


section .text align=0

global _start

mensage db 'Hello world', 0x0a

len equ $ - mensage

_start:
    mov eax, 4 					;	SYS_write
    mov ebx, 1 					;	File descriptor number (1=stdout)
    mov ecx, mensage 			;	Pointer for the string.
    mov edx, len 				;	Mensage len
    int 0x80

    mov eax, 1
    int 0x8