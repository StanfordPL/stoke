

.global ReadFpContext
.type ReadFpContext, @function

ReadFpContext:
	fxsave (%rdi)
	ret

.global WriteFpContext
.type WriteFpContext, @function

WriteFpContext:
	fxrstor (%rdi)
	ret


.global sched_yield

// void GetLock(long *mutex, long newVal)
.global GetLock
GetLock:
    push %rbp
    mov %rsp, %rbp
    push %rsi
    push %rdi
    xor %rax, %rax 
    
    // rdi - mutex
    // rsi - newVal

try_again:
    lock cmpxchg %rsi, (%rdi)
    je done
    call sched_yield
    jmp try_again
done:
    pop %rdi
    pop %rsi
    leave
    ret

// void ReleaseLock(long *mutex)

.global ReleaseLock
ReleaseLock:
    push %rdi
    xor %rax, %rax
    lock xchg %rax, (%rdi) # put 0 in *mutex
    pop %rdi
    ret

// void InitLock(long *mutex)
.global InitLock
InitLock:
    push %rdi
    xor %rax, %rax
    lock xchg %rax, (%rdi) # put 0 in *mutex
    pop %rdi
    ret
    
// extern "C" void SetXmmRegs(long v1, long v2, long v3);
// extern "C" void GetXmmRegs(long *v1, long *v2, long *v3);



.global SetXmmRegs
.type SetXmmRegs, @function
SetXmmRegs:
  movd %rdi, %xmm1
  movd %rsi, %xmm2
  movd %rdx, %xmm3
  ret
 
.global GetXmmRegs
.type GetXmmRegs, @function
GetXmmRegs:
  movsd %xmm1, (%rdi)
  movsd %xmm2, (%rsi)
  movsd %xmm3, (%rdx)
  ret
