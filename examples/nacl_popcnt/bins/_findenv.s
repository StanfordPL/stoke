  .text
  .globl _findenv
  .type _findenv, @function

#! file-offset 0x698e0
#! rip-offset  0x698e0
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
._findenv:                  #        0x698e0  0      
  movq %rbx, -0x10(%rsp)    #  1     0x698e0  5      
  movq %r12, -0x8(%rsp)     #  2     0x698e5  5      
  subl $0x18, %esp          #  3     0x698ea  3      
  addq %r15, %rsp           #  4     0x698ed  3      
  movl %edi, %ebx           #  5     0x698f0  2      
  movl %esi, %r12d          #  6     0x698f2  3      
  nop                       #  7     0x698f5  1      
  callq .__nacl_read_tp     #  8     0x698f6  5      
  leaq -0x480(%rax), %rax   #  9     0x698fb  7      
  movl %r12d, %edx          #  10    0x69902  3      
  movl %ebx, %esi           #  11    0x69905  2      
  movq 0x10(%rsp), %r12     #  12    0x69907  5      
  movq 0x8(%rsp), %rbx      #  13    0x6990c  5      
  movl %eax, %eax           #  14    0x69911  2      
  movl (%r15,%rax,1), %edi  #  15    0x69913  4      
  nop                       #  16    0x69917  1      
  addl $0x18, %esp          #  17    0x69918  3      
  addq %r15, %rsp           #  18    0x6991b  3      
  jmpq ._findenv_r          #  19    0x6991e  5      
  nop                       #  20    0x69923  1      
  nop                       #  21    0x69924  1      
  nop                       #  22    0x69925  1      
  nop                       #  23    0x69926  1      
  nop                       #  24    0x69927  1      
  nop                       #  25    0x69928  1      
  nop                       #  26    0x69929  1      
  nop                       #  27    0x6992a  1      
  nop                       #  28    0x6992b  1      
  nop                       #  29    0x6992c  1      
  nop                       #  30    0x6992d  1      
  nop                       #  31    0x6992e  1      
  nop                       #  32    0x6992f  1      
  nop                       #  33    0x69930  1      
  nop                       #  34    0x69931  1      
  nop                       #  35    0x69932  1      
  nop                       #  36    0x69933  1      
  nop                       #  37    0x69934  1      
  nop                       #  38    0x69935  1      
  nop                       #  39    0x69936  1      
  nop                       #  40    0x69937  1      
                                                     
.size _findenv, .-_findenv

