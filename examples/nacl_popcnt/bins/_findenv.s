  .text
  .globl _findenv
  .type _findenv, @function

#! file-offset 0x69860
#! rip-offset  0x69860
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
._findenv:                  #        0x69860  0      
  movq %rbx, -0x10(%rsp)    #  1     0x69860  5      
  movq %r12, -0x8(%rsp)     #  2     0x69865  5      
  subl $0x18, %esp          #  3     0x6986a  3      
  addq %r15, %rsp           #  4     0x6986d  3      
  movl %edi, %ebx           #  5     0x69870  2      
  movl %esi, %r12d          #  6     0x69872  3      
  nop                       #  7     0x69875  1      
  callq .__nacl_read_tp     #  8     0x69876  5      
  leaq -0x480(%rax), %rax   #  9     0x6987b  7      
  movl %r12d, %edx          #  10    0x69882  3      
  movl %ebx, %esi           #  11    0x69885  2      
  movq 0x10(%rsp), %r12     #  12    0x69887  5      
  movq 0x8(%rsp), %rbx      #  13    0x6988c  5      
  movl %eax, %eax           #  14    0x69891  2      
  movl (%r15,%rax,1), %edi  #  15    0x69893  4      
  nop                       #  16    0x69897  1      
  addl $0x18, %esp          #  17    0x69898  3      
  addq %r15, %rsp           #  18    0x6989b  3      
  jmpq ._findenv_r          #  19    0x6989e  5      
  nop                       #  20    0x698a3  1      
  nop                       #  21    0x698a4  1      
  nop                       #  22    0x698a5  1      
  nop                       #  23    0x698a6  1      
  nop                       #  24    0x698a7  1      
  nop                       #  25    0x698a8  1      
  nop                       #  26    0x698a9  1      
  nop                       #  27    0x698aa  1      
  nop                       #  28    0x698ab  1      
  nop                       #  29    0x698ac  1      
  nop                       #  30    0x698ad  1      
  nop                       #  31    0x698ae  1      
  nop                       #  32    0x698af  1      
  nop                       #  33    0x698b0  1      
  nop                       #  34    0x698b1  1      
  nop                       #  35    0x698b2  1      
  nop                       #  36    0x698b3  1      
  nop                       #  37    0x698b4  1      
  nop                       #  38    0x698b5  1      
  nop                       #  39    0x698b6  1      
  nop                       #  40    0x698b7  1      
                                                     
.size _findenv, .-_findenv

