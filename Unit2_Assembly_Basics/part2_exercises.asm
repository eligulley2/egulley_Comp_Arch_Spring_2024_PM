; Base Author: Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
; 
; Purpose - to learn about the following:
;	-  directives (dx, resx, & times)
;	- printing ints and characters
;	- dumping memory
;	- printing strings
;	- reading chars and ints

%include "asm_io.inc"

age equ 30 ; symbol
%define fav_number 14 ; macro

; initialized data
segment .data
fav_color db "purple 💜", 0; string
least_fav_color db "yellow" , 0
message db "Hello World!", 0
number dd 116 ; integer
letter db "A" ; character
first_letter db "E"

char_prompt db "Etner a character: ", 0
int_prompt db "Enter an integer: ", 0

many_number times 15 dd 34
characters times 5 db "z"

; uninitialized data
segment .bss
space_for_int resd 1 ; 


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        ; mov eax, [number] ; eax = 116
        ; mov dword [number], 32 

        ; mov eax, [number]
        ; call print_int
        ; call print_char
        ; call print_nl
        ; call print_nl

        ; mov eax, [first_letter]
        ; call print_char
        ; call print_nl
        ; call print_int
        ; call print_nl

        ; dump_mem 1, fav_color, 0

        ; mov eax, fav_color + 3
        ; call print_string

        ; mov eax, message
        ; call print_string
        ; call print_nl
        ; dump_mem 1, message, 0

        ; mov eax, char_prompt
        ; call print_string
        ; call read_char

        ; mov eax, int_prompt
        ; call print_string
        ; call read_int

        dump_mem 1, characters, 0
        call print_nl
        dump_mem 2, characters + 3, 0




        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


