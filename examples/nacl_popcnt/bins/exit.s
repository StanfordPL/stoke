  .text
  .globl exit
  .type exit, @function

#! file-offset 0x683e0
#! rip-offset  0x683e0
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  
.exit:                          #        0x683e0  0      
  pushq %rbx                    #  1     0x683e0  2      
  xorl %esi, %esi               #  2     0x683e2  2      
  movl %edi, %ebx               #  3     0x683e4  2      
  nop                           #  4     0x683e6  1      
  nop                           #  5     0x683e7  1      
  callq .__call_exitprocs       #  6     0x683e8  5      
  movl 0xffbb099(%rip), %edi    #  7     0x683ed  6      
  movl %edi, %edi               #  8     0x683f3  2      
  movl 0x3c(%r15,%rdi,1), %eax  #  9     0x683f5  5      
  testq %rax, %rax              #  10    0x683fa  3      
  je .L_68420                   #  11    0x683fd  6      
  nop                           #  12    0x68403  1      
  andl $0xffffffe0, %eax        #  13    0x68404  5      
  addq %r15, %rax               #  14    0x68409  3      
  callq %rax                    #  15    0x6840c  2      
.L_68420:                       #        0x6840e  0      
  movl %ebx, %edi               #  16    0x6840e  2      
  nop                           #  17    0x68410  1      
  nop                           #  18    0x68411  1      
  callq ._exit                  #  19    0x68412  5      
                                                         
.size exit, .-exit

