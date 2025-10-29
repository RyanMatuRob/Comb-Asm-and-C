section .text
    global factorial

; int factorial(int n)
factorial:
    mov rax, 1          ; result = 1
    cmp rdi, 1
    jbe .done           ; if n <= 1, return 1

.loop:
    imul rax, rdi       ; result *= n
    dec rdi             ; n--
    cmp rdi, 1
    ja .loop

.done:
    ret