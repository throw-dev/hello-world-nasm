global _start           ; делаем метку метку _start видимой извне
 
section .data   ; секция данных
message: db "Hello World!",10  ; строка для вывода на консоль
 
section .text           ; объявление секции кода
_start:                 ; объявление метки _start - точки входа в программу
    mov rax, 1          ; 1 - номер системного вызова функции write
    mov rdi, 1          ; 1 - дескриптор файла стандартного вызова stdout
    mov rsi, message    ; адрес строки для вывод
    mov rdx, 19         ; количество байтов
    syscall             ; выполняем системный вызов write
 
    mov rax, 60         ; 60 - номер системного вызова exit
    syscall             ; выполняем системный вызов exit