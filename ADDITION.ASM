.model small
.stack 100h
.data
arr db 12h,02h,21h,22h,12h
sum dw ?
.code
Mov AX,@data
MOV DS,AX
MOV CX,05h
MOV AX,00
MOV BX,offset arr
repeat:
ADD AX,[BX]
inc BX
dec CX
jnz repeat
MOV sum,AX
int 3
End
