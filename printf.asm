extern printf
section .data
mystr: db "Hello Guys",10,0
section .text
 global main  

main:
  push ebp
  mov ebp,esp

  push dword mystr
  call printf

  add esp, 4
  pop ebp
  mov eax,0
  ret
