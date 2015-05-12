  .text
  .globl exit
  .type exit, @function

#! file-offset 0x68400
#! rip-offset  0x68400
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  
.exit:                          #        0x68400  0      
  pushq %rbx                    #  1     0x68400  2      
  xorl %esi, %esi               #  2     0x68402  2      
  movl %edi, %ebx               #  3     0x68404  2      
  nop                           #  4     0x68406  1      
  nop                           #  5     0x68407  1      
  callq .__call_exitprocs       #  6     0x68408  5      
  movl 0xffbb079(%rip), %edi    #  7     0x6840d  6      
  movl %edi, %edi               #  8     0x68413  2      
  movl 0x3c(%r15,%rdi,1), %eax  #  9     0x68415  5      
  testq %rax, %rax              #  10    0x6841a  3      
  je .L_68440                   #  11    0x6841d  6      
  nop                           #  12    0x68423  1      
  andl $0xffffffe0, %eax        #  13    0x68424  5      
  addq %r15, %rax               #  14    0x68429  3      
  callq %rax                    #  15    0x6842c  2      
.L_68440:                       #        0x6842e  0      
  movl %ebx, %edi               #  16    0x6842e  2      
  nop                           #  17    0x68430  1      
  nop                           #  18    0x68431  1      
  callq ._exit                  #  19    0x68432  5      
                                                         
.size exit, .-exit

