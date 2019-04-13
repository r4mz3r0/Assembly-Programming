; This is my first comment. 
; Ramiro Gonzalez 
section .data 
message db "Hello, Universe", 10 
section .text 
global _start 

_start: 
        mov rax, 1 ; r0 "accumulator" 
        mov rdi, 1 ; destination index 
        mov rsi, message ; Source index in string manipulation commands
        mov rdx, 17 ; Each character in the string is one byte. Add +1 to include nul \0 character
        syscall 
        
        move rax, 60 ; 'exit' "accumulator" 
        xor rdi, rdi ; destination index
        syscall 
        
