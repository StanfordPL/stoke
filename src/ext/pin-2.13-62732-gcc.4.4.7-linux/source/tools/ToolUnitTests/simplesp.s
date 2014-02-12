# This code returns the stack pointer.
#
.global getSP
.type getSP, function

getSP:
    mov %esp, %eax
    ret

