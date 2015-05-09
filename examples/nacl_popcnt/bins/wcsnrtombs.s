  .text
  .globl wcsnrtombs
  .type wcsnrtombs, @function

#! file-offset 0x87920
#! rip-offset  0x87920
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.wcsnrtombs:                #        0x87920  0      
  movl %r8d, %r9d           #  1     0x87920  3      
  movq %rbx, -0x20(%rsp)    #  2     0x87923  5      
  movq %r12, -0x18(%rsp)    #  3     0x87928  5      
  movq %r13, -0x10(%rsp)    #  4     0x8792d  5      
  movq %r14, -0x8(%rsp)     #  5     0x87932  5      
  subl $0x38, %esp          #  6     0x87937  3      
  addq %r15, %rsp           #  7     0x8793a  3      
  movl %edx, %r13d          #  8     0x8793d  3      
  movl %ecx, %r14d          #  9     0x87940  3      
  movl %edi, %ebx           #  10    0x87943  2      
  movl %esi, %r12d          #  11    0x87945  3      
  movq %r9, 0x8(%rsp)       #  12    0x87948  5      
  nop                       #  13    0x8794d  1      
  callq .__nacl_read_tp     #  14    0x8794e  5      
  leaq -0x480(%rax), %rax   #  15    0x87953  7      
  movq 0x8(%rsp), %r9       #  16    0x8795a  5      
  movl %r14d, %r8d          #  17    0x8795f  3      
  movl %r13d, %ecx          #  18    0x87962  3      
  movl %r12d, %edx          #  19    0x87965  3      
  movl %ebx, %esi           #  20    0x87968  2      
  movq 0x20(%rsp), %r12     #  21    0x8796a  5      
  nop                       #  22    0x8796f  1      
  movq 0x18(%rsp), %rbx     #  23    0x87970  5      
  movq 0x28(%rsp), %r13     #  24    0x87975  5      
  movq 0x30(%rsp), %r14     #  25    0x8797a  5      
  movl %eax, %eax           #  26    0x8797f  2      
  movl (%r15,%rax,1), %edi  #  27    0x87981  4      
  addl $0x38, %esp          #  28    0x87985  3      
  addq %r15, %rsp           #  29    0x87988  3      
  jmpq ._wcsnrtombs_r       #  30    0x8798b  5      
                                                     
.size wcsnrtombs, .-wcsnrtombs

