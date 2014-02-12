# 
# contains important code patterns
# doesn't actually do anything

# make sure the relocated entry will copy more than one basic block.
.text
.global do_nothing
.type do_nothing, function

do_nothing:
    test %rax, %rax
    je lab1

    xor %rax, %rax
    xor %rax, %rax

lab1:
    xor %rax, %rax
    xor %rax, %rax

    ret

#make sure the relocated entry will correctly handle a jump as the last
#instruction in the basic block.
.global nothing_doing
.type nothing_doing, function

nothing_doing:
    xor %rax, %rax
    test %rax, %rax
    je lab1

    xor %rax, %rax
    xor %rax, %rax

lab2:
    xor %rax, %rax
    xor %rax, %rax

    ret


# call should be replaced with a push/jmp when relocated.
#
.global call_function
.type call_function, function

call_function:
    push %rax
    push %rbx
    call do_nothing
    pop %rbx
    pop %rax
    ret


# make sure this code pattern works
#
.global call_nothing
.type call_nothing, function

call_nothing:
    push %rax
    mov %rax, %rax
    push %rbx
    call do_nothing
    pop %rbx
    pop %rax
    ret

#make sure this code pattern works
#
.global shorty
.type shorty, function
	
shorty:	
	xor %rax, %rax
	jmp lab3
	nop
	nop
	nop
lab3:	
	nop
	nop
	nop
	ret
			
