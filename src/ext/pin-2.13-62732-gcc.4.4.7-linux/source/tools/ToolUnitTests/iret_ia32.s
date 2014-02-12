#
# Test for iret in 32 bit mode.
#

iretd_func:
        mov $-1,%eax
        iret

.type iretdTest, @function
.global iretdTest
iretdTest:
        # We have to build the stack frame ourselves
        sub     $12,%esp
        mov     $0, %eax
        mov     %eax,8(%esp)         #  Write the flags to zero
        mov     %cs, %eax
        mov     %eax,4(%esp)
        lea     here,%eax
        mov     %eax,0(%esp)
        jmp     iretd_func
here:   
        ret

