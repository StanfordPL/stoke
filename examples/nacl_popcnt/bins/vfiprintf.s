  .text
  .globl vfiprintf
  .type vfiprintf, @function

#! file-offset 0x875c0
#! rip-offset  0x875c0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.vfiprintf:                 #        0x875c0  0      
  movq %rbx, -0x18(%rsp)    #  1     0x875c0  5      
  movq %r12, -0x10(%rsp)    #  2     0x875c5  5      
  movl %edi, %ebx           #  3     0x875ca  2      
  movq %r13, -0x8(%rsp)     #  4     0x875cc  5      
  subl $0x18, %esp          #  5     0x875d1  3      
  addq %r15, %rsp           #  6     0x875d4  3      
  movl %esi, %r12d          #  7     0x875d7  3      
  movl %edx, %r13d          #  8     0x875da  3      
  nop                       #  9     0x875dd  1      
  nop                       #  10    0x875de  1      
  nop                       #  11    0x875df  1      
  callq .__nacl_read_tp     #  12    0x875e0  5      
  leaq -0x480(%rax), %rax   #  13    0x875e5  7      
  movl %r13d, %ecx          #  14    0x875ec  3      
  movl %r12d, %edx          #  15    0x875ef  3      
  movl %ebx, %esi           #  16    0x875f2  2      
  movq 0x8(%rsp), %r12      #  17    0x875f4  5      
  movq (%rsp), %rbx         #  18    0x875f9  4      
  movq 0x10(%rsp), %r13     #  19    0x875fd  5      
  nop                       #  20    0x87602  1      
  movl %eax, %eax           #  21    0x87603  2      
  movl (%r15,%rax,1), %edi  #  22    0x87605  4      
  addl $0x18, %esp          #  23    0x87609  3      
  addq %r15, %rsp           #  24    0x8760c  3      
  jmpq ._vfiprintf_r        #  25    0x8760f  5      
  nop                       #  26    0x87614  1      
  nop                       #  27    0x87615  1      
  nop                       #  28    0x87616  1      
  nop                       #  29    0x87617  1      
  nop                       #  30    0x87618  1      
  nop                       #  31    0x87619  1      
  nop                       #  32    0x8761a  1      
  nop                       #  33    0x8761b  1      
  nop                       #  34    0x8761c  1      
  nop                       #  35    0x8761d  1      
  nop                       #  36    0x8761e  1      
  nop                       #  37    0x8761f  1      
  nop                       #  38    0x87620  1      
  nop                       #  39    0x87621  1      
  nop                       #  40    0x87622  1      
                                                     
.size vfiprintf, .-vfiprintf

