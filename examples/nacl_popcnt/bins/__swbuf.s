  .text
  .globl __swbuf
  .type __swbuf, @function

#! file-offset 0x770e0
#! rip-offset  0x770e0
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
.__swbuf:                   #        0x770e0  0      
  movq %rbx, -0x10(%rsp)    #  1     0x770e0  5      
  movq %r12, -0x8(%rsp)     #  2     0x770e5  5      
  subl $0x18, %esp          #  3     0x770ea  3      
  addq %r15, %rsp           #  4     0x770ed  3      
  movl %edi, %ebx           #  5     0x770f0  2      
  movl %esi, %r12d          #  6     0x770f2  3      
  nop                       #  7     0x770f5  1      
  callq .__nacl_read_tp     #  8     0x770f6  5      
  leaq -0x480(%rax), %rax   #  9     0x770fb  7      
  movl %r12d, %edx          #  10    0x77102  3      
  movl %ebx, %esi           #  11    0x77105  2      
  movq 0x10(%rsp), %r12     #  12    0x77107  5      
  movq 0x8(%rsp), %rbx      #  13    0x7710c  5      
  movl %eax, %eax           #  14    0x77111  2      
  movl (%r15,%rax,1), %edi  #  15    0x77113  4      
  nop                       #  16    0x77117  1      
  addl $0x18, %esp          #  17    0x77118  3      
  addq %r15, %rsp           #  18    0x7711b  3      
  jmpq .__swbuf_r           #  19    0x7711e  5      
  nop                       #  20    0x77123  1      
  nop                       #  21    0x77124  1      
  nop                       #  22    0x77125  1      
  nop                       #  23    0x77126  1      
  nop                       #  24    0x77127  1      
  nop                       #  25    0x77128  1      
  nop                       #  26    0x77129  1      
  nop                       #  27    0x7712a  1      
  nop                       #  28    0x7712b  1      
  nop                       #  29    0x7712c  1      
  nop                       #  30    0x7712d  1      
  nop                       #  31    0x7712e  1      
  nop                       #  32    0x7712f  1      
  nop                       #  33    0x77130  1      
  nop                       #  34    0x77131  1      
  nop                       #  35    0x77132  1      
  nop                       #  36    0x77133  1      
  nop                       #  37    0x77134  1      
  nop                       #  38    0x77135  1      
  nop                       #  39    0x77136  1      
  nop                       #  40    0x77137  1      
                                                     
.size __swbuf, .-__swbuf

