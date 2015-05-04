  .text
  .globl exit
  .type exit, @function

#! file-offset 0x68480
#! rip-offset  0x68480
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  
.exit:                          #        0x68480  0      
  pushq %rbx                    #  1     0x68480  2      
  xorl %esi, %esi               #  2     0x68482  2      
  movl %edi, %ebx               #  3     0x68484  2      
  nop                           #  4     0x68486  1      
  nop                           #  5     0x68487  1      
  callq .__call_exitprocs       #  6     0x68488  5      
  movl 0xffbaff9(%rip), %edi    #  7     0x6848d  6      
  movl %edi, %edi               #  8     0x68493  2      
  movl 0x3c(%r15,%rdi,1), %eax  #  9     0x68495  5      
  testq %rax, %rax              #  10    0x6849a  3      
  je .L_684c0                   #  11    0x6849d  6      
  nop                           #  12    0x684a3  1      
  andl $0xffffffe0, %eax        #  13    0x684a4  5      
  addq %r15, %rax               #  14    0x684a9  3      
  callq %rax                    #  15    0x684ac  2      
.L_684c0:                       #        0x684ae  0      
  movl %ebx, %edi               #  16    0x684ae  2      
  nop                           #  17    0x684b0  1      
  nop                           #  18    0x684b1  1      
  callq ._exit                  #  19    0x684b2  5      
                                                         
.size exit, .-exit

