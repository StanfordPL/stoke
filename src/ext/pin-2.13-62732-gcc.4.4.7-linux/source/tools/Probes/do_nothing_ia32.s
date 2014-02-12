# 
# contains important code patterns
# doesn't actually do anything

# make sure the relocated entry will copy more than one basic block.
.text
.global do_nothing
.type do_nothing, function

do_nothing:
    test %eax, %eax
    je lab1

    xor %eax, %eax
    xor %eax, %eax

lab1:
    xor %eax, %eax
    xor %eax, %eax

    ret

#make sure the relocated entry will correctly handle a jump as the last
#instruction in the basic block.
.global nothing_doing
.type nothing_doing, function

nothing_doing:
    test %eax, %eax
    test %eax, %eax
    je lab2

    xor %eax, %eax
    xor %eax, %eax

lab2:
    xor %eax, %eax
    xor %eax, %eax

    ret

# call should be replaced with a push/jmp when relocated.
#
.global call_function
.type call_function, function

call_function:
    push %ebx
    call do_nothing
    pop %ebx
    ret


# make sure this code pattern works
#
.global call_nothing
.type call_nothing, function

call_nothing:
    push %eax
    mov %eax, %eax
    push %ebx
    call do_nothing
    pop %ebx
    pop %eax
    ret


