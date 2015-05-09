  .text
  .globl setlocale
  .type setlocale, @function

#! file-offset 0x7d1e0
#! rip-offset  0x7d1e0
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
.setlocale:                 #        0x7d1e0  0      
  movq %rbx, -0x10(%rsp)    #  1     0x7d1e0  5      
  movq %r12, -0x8(%rsp)     #  2     0x7d1e5  5      
  subl $0x18, %esp          #  3     0x7d1ea  3      
  addq %r15, %rsp           #  4     0x7d1ed  3      
  movl %edi, %ebx           #  5     0x7d1f0  2      
  movl %esi, %r12d          #  6     0x7d1f2  3      
  nop                       #  7     0x7d1f5  1      
  callq .__nacl_read_tp     #  8     0x7d1f6  5      
  leaq -0x480(%rax), %rax   #  9     0x7d1fb  7      
  movl %r12d, %edx          #  10    0x7d202  3      
  movl %ebx, %esi           #  11    0x7d205  2      
  movq 0x10(%rsp), %r12     #  12    0x7d207  5      
  movq 0x8(%rsp), %rbx      #  13    0x7d20c  5      
  movl %eax, %eax           #  14    0x7d211  2      
  movl (%r15,%rax,1), %edi  #  15    0x7d213  4      
  nop                       #  16    0x7d217  1      
  addl $0x18, %esp          #  17    0x7d218  3      
  addq %r15, %rsp           #  18    0x7d21b  3      
  jmpq ._setlocale_r        #  19    0x7d21e  5      
  nop                       #  20    0x7d223  1      
  nop                       #  21    0x7d224  1      
  nop                       #  22    0x7d225  1      
  nop                       #  23    0x7d226  1      
  nop                       #  24    0x7d227  1      
  nop                       #  25    0x7d228  1      
  nop                       #  26    0x7d229  1      
  nop                       #  27    0x7d22a  1      
  nop                       #  28    0x7d22b  1      
  nop                       #  29    0x7d22c  1      
  nop                       #  30    0x7d22d  1      
  nop                       #  31    0x7d22e  1      
  nop                       #  32    0x7d22f  1      
  nop                       #  33    0x7d230  1      
  nop                       #  34    0x7d231  1      
  nop                       #  35    0x7d232  1      
  nop                       #  36    0x7d233  1      
  nop                       #  37    0x7d234  1      
  nop                       #  38    0x7d235  1      
  nop                       #  39    0x7d236  1      
  nop                       #  40    0x7d237  1      
                                                     
.size setlocale, .-setlocale

