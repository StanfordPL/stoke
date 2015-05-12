  .text
  .globl wcsnrtombs
  .type wcsnrtombs, @function

#! file-offset 0x87940
#! rip-offset  0x87940
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.wcsnrtombs:                #        0x87940  0      
  movl %r8d, %r9d           #  1     0x87940  3      
  movq %rbx, -0x20(%rsp)    #  2     0x87943  5      
  movq %r12, -0x18(%rsp)    #  3     0x87948  5      
  movq %r13, -0x10(%rsp)    #  4     0x8794d  5      
  movq %r14, -0x8(%rsp)     #  5     0x87952  5      
  subl $0x38, %esp          #  6     0x87957  3      
  addq %r15, %rsp           #  7     0x8795a  3      
  movl %edx, %r13d          #  8     0x8795d  3      
  movl %ecx, %r14d          #  9     0x87960  3      
  movl %edi, %ebx           #  10    0x87963  2      
  movl %esi, %r12d          #  11    0x87965  3      
  movq %r9, 0x8(%rsp)       #  12    0x87968  5      
  nop                       #  13    0x8796d  1      
  callq .__nacl_read_tp     #  14    0x8796e  5      
  leaq -0x480(%rax), %rax   #  15    0x87973  7      
  movq 0x8(%rsp), %r9       #  16    0x8797a  5      
  movl %r14d, %r8d          #  17    0x8797f  3      
  movl %r13d, %ecx          #  18    0x87982  3      
  movl %r12d, %edx          #  19    0x87985  3      
  movl %ebx, %esi           #  20    0x87988  2      
  movq 0x20(%rsp), %r12     #  21    0x8798a  5      
  nop                       #  22    0x8798f  1      
  movq 0x18(%rsp), %rbx     #  23    0x87990  5      
  movq 0x28(%rsp), %r13     #  24    0x87995  5      
  movq 0x30(%rsp), %r14     #  25    0x8799a  5      
  movl %eax, %eax           #  26    0x8799f  2      
  movl (%r15,%rax,1), %edi  #  27    0x879a1  4      
  addl $0x38, %esp          #  28    0x879a5  3      
  addq %r15, %rsp           #  29    0x879a8  3      
  jmpq ._wcsnrtombs_r       #  30    0x879ab  5      
                                                     
.size wcsnrtombs, .-wcsnrtombs

