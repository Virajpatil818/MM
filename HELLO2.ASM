.model small
.stack 100h
.data
msg db "HELLO WORLD$"
.code
MOV AX,@data
MOV DS,AX
lea DX,msg
MOV ah,09h
int 21h
MOV ah,4ch
int 21h
End
