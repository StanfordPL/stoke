# this routine should generate an error because the target of a local branch
# is within the probe space.
#
.text
.global do_nothing
.type do_nothing, function

do_nothing:
    mov %rax, 0x0
lab1:
    xor %rax, %rax
    test %rax, %rax
    je lab2

    xor %rax, %rax
    xor %rax, %rax
    jmp lab1

lab2:
    xor %rax, %rax
    xor %rax, %rax

    ret


# This code pattern will result in an error because the call 
# is less than the size of the probe, and when relocated, the 
# push of the original IP will cause a branch into the probe.
#
.global call_function
.type call_function, function

call_function:
    call do_nothing
    push %rbx
    pop %rbx
    ret



# Test an unconditional jump in the middle of the probe area.
#	
.global good_jump
.type good_jump, function

good_jump:
    xchg %rax, %rax
    jmp lab3

    push %rbx
    pop %rbx

lab3:
    xor %rax, %rax
    xor %rax, %rax

    ret


# This code can be relocated together with the
# mov $ip instruction.
#	
.global move_ip
.type move_ip, function

MOVE_IP_START:
move_ip:
    xchg %rax, %rax
    jmp lab4

    push %rbx
    mov %rbx, 0x1b(%rip)	
    pop %rbx
lab4:
    movq $1, %rax
	test %rax, %rax
	je lab4
    xor %rax, %rax
    xor %rax, %rax

    ret

MOVE_IP_END:
.size mov_ip, MOVE_IP_END - MOVE_IP_START
	
# This code should not be able to be relocated because of the
# conditional jump as the last instruction.
#	
.global fall_thru
.type fall_thru, function

fall_thru:
    xchg %rax, %rax
    jmp lab5

    push %rbx
    pop %rbx

lab5:
    xor %rax, %rax
    xor %rax, %rax
    mov %rax, 0x5
    cmp %rax, 0	
    jz lab5 
    nop
    nop
    nop
	



# This code should not be able to be relocated because of the
# jump outside of the function.
#	
.global bad_jump
.type bad_jump, function

bad_jump:
    xchg %rax, %rax
    jmp lab6

    push %rbx
    pop %rbx

lab6:
    jmp do_nothing	
    xor %rax, %rax
    xor %rax, %rax
    ret
	


# This code should not be able to be relocated because of the
# call function.
#	
.global bad_call
.type bad_call, function

bad_call:
    xchg %rax, %rax
    jmp lab7

    push %rbx
    pop %rbx

lab7:
    call do_nothing	
    xor %rax, %rax
    xor %rax, %rax
    ret
	


	
# This code should not be able to be relocated because of the
# target after the last instruction.
#	
.global high_target
.type high_target, function

high_target:
    xchg %rax, %rax
    jmp lab8

    push %rbx
    pop %rbx

    xor %rax, %rax
    xor %rax, %rax
    mov %rax, 0x5
    cmp %rax, 0	
    ret
	
lab8:	
    nop
    nop
    nop
	
	
