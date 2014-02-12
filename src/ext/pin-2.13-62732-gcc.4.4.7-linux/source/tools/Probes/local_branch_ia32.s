# this routine should generate an error because the target of a local branch
# is within the probe space.
#
.global do_nothing
.type do_nothing, function

do_nothing:
    xor %eax, %eax
lab1:
    xor %eax, %eax
    test %eax, %eax
    je lab2

    xor %eax, %eax
    xor %eax, %eax
    jmp lab1

lab2:
    xor %eax, %eax
    xor %eax, %eax

    ret


# This code pattern will result in an error because the call 
# is less than the size of the probe, and when relocated, the 
# push of the original IP will cause a branch into the probe.
#
.global call_function
.type call_function, function

call_function:
    call do_nothing
    push %ebx
    pop %ebx
    ret


# Test an unconditional jump in the middle of the probe area.
#	
.global good_jump
.type good_jump, function

good_jump:
    xchg %eax, %eax
    jmp lab3

    push %ebx
    pop %ebx

lab3:
    xor %eax, %eax
    xor %eax, %eax

    ret

	
	
# This code should not be able to be relocated because of the
# conditional jump as the last instruction.
#	
.global fall_thru
.type fall_thru, function

fall_thru:
    xchg %eax, %eax
    jmp lab5

    push %ebx
    pop %ebx

lab5:
    xor %eax, %eax
    xor %eax, %eax
    mov %eax, 0x5
    cmp %eax, 0	
    jz lab5 
    nop


# This code should not be able to be relocated because of the
# jump outside of the function.
#	
.global bad_jump
.type bad_jump, function

bad_jump:
    xchg %eax, %eax
    jmp lab6

    push %ebx
    pop %ebx

lab6:
    jmp do_nothing	
    xor %eax, %eax
    xor %eax, %eax
    ret
	


# This code should not be able to be relocated because of the
# call function.
#	
.global bad_call
.type bad_call, function

bad_call:
    xchg %eax, %eax
    jmp lab7

    push %ebx
    pop %ebx

lab7:
    call do_nothing	
    xor %eax, %eax
    xor %eax, %eax
    ret



# This code should not be able to be relocated because of the
# target after the last instruction.
#	
.global high_target
.type high_target, function

high_target:
    xchg %eax, %eax
    jmp lab8

    push %ebx
    pop %ebx

    xor %eax, %eax
    xor %eax, %eax
    mov %eax, 0x5
    cmp %eax, 0	
    ret
	
lab8:	
    nop
    nop
    nop
	
	
	
