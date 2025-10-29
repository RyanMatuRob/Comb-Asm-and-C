;Write a Assembly assembly program that adds numbers from 15 to 25 using a loop.

section .data
    result db 0

section .bss
    sum resd 1



global _start
section .text
_start:
    mov ecx, 15      ; Start value
    mov eax, 0       ; Sum accumulator

loop_start:
    add eax, ecx     ; Add current value to sum
    inc ecx          ; Increment counter
    cmp ecx, 26      ; Check if we've reached 26 (end value + 1)
    jl loop_start    ; If less, repeat loop

    mov [sum], eax   ; Store result in sum

    ; Exit program (Linux syscall)
    mov eax, 1       ; sys_exit
    xor ebx, ebx
    int 0x80