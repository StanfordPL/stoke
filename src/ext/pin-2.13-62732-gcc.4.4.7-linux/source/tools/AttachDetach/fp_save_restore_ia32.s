

.global ReadFpContext
.type ReadFpContext, @function

ReadFpContext:
	push %ebp
	mov %esp, %ebp
	mov 8(%ebp), %eax
	fxsave (%eax)
	leave
	ret

.global WriteFpContext
.type WriteFpContext, @function

WriteFpContext:
	push %ebp
	mov %esp, %ebp
	mov 8(%ebp), %eax
	fxrstor (%eax)
	leave
	ret

.global sched_yield

// void GetLock(long *mutex, long newVal)
.global GetLock
GetLock:
    push %ebp
    mov %esp, %ebp
    push %esi
    push %edi
    mov 8(%ebp), %esi # %esi <- mutex
    mov 0xc(%ebp), %edi # %edi <- new value
    xor %eax, %eax

try_again:
    lock cmpxchg %edi, (%esi)
    je done
    call sched_yield
    jmp try_again
done:
    pop %edi
    pop %esi
    leave
    ret
        
// void ReleaseLock(long *mutex)

.global ReleaseLock
ReleaseLock:
    push %ebp
    mov %esp, %ebp
    push %edi
    mov 8(%ebp), %edi
    xor %eax, %eax
    lock xchg %eax, (%edi)
    pop %edi
    leave
    ret

// void InitLock(long *mutex)    
.global InitLock
InitLock:
    push %ebp
    mov %esp, %ebp
    push %edi
    mov 8(%ebp), %edi
    xor %eax, %eax
    lock xchg %eax, (%edi)
    pop %edi
    leave
    ret

// extern "C" void SetXmmRegs(long v1, long v2, long v3);
// extern "C" void GetXmmRegs(long *v1, long *v2, long *v3);



.global SetXmmRegs
.type SetXmmRegs, @function
SetXmmRegs:
  movss 0x4(%esp), %xmm1
  movss 0x8(%esp), %xmm2
  movss 0xc(%esp), %xmm3
  ret
 
.global GetXmmRegs
.type GetXmmRegs, @function
GetXmmRegs:
  mov 0x4(%esp), %eax
  movss %xmm1, (%eax)
  mov 0x8(%esp), %eax
  movss %xmm2, (%eax)
  mov 0xc(%esp), %eax
  movss %xmm3, (%eax)
  ret
