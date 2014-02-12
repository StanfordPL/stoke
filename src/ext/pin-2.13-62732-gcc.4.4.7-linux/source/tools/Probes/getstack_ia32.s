.global getstack
.type getstack, @function

getstack:
   mov %esp, %eax
   ret

.global getebp
.type getebp, @function

getebp:
   mov %ebp, %eax
   ret

