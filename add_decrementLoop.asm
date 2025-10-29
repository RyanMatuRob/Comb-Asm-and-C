global _start

section .bss
    sum resq 1

section .text
_start:
    mov rcx, 25      ; Start from 25
    mov rax, 0       ; Accumulator for sum

loop_start:
    add rax, rcx     ; Add current value to sum
    dec rcx          ; Decrement counter
    cmp rcx, 14      ; Stop when rcx is 14
    jg loop_start    ; If rcx > 14, continue loop

    mov [sum], rax   ; Store result in sum

    ; Exit program
    mov rax, 60      ; sys_exit
    xor rdi, rdi
    syscall