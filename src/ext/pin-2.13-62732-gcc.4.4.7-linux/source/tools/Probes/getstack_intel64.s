.global getstack
.type getstack, @function

getstack:
   mov %rsp, %rax
   ret

.global getebp
.type getebp, @function

getebp:
   mov %rbp, %rax
   ret

