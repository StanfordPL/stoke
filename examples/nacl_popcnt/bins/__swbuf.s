  .text
  .globl __swbuf
  .type __swbuf, @function

#! file-offset 0x77100
#! rip-offset  0x77100
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
.__swbuf:                   #        0x77100  0      
  movq %rbx, -0x10(%rsp)    #  1     0x77100  5      
  movq %r12, -0x8(%rsp)     #  2     0x77105  5      
  subl $0x18, %esp          #  3     0x7710a  3      
  addq %r15, %rsp           #  4     0x7710d  3      
  movl %edi, %ebx           #  5     0x77110  2      
  movl %esi, %r12d          #  6     0x77112  3      
  nop                       #  7     0x77115  1      
  callq .__nacl_read_tp     #  8     0x77116  5      
  leaq -0x480(%rax), %rax   #  9     0x7711b  7      
  movl %r12d, %edx          #  10    0x77122  3      
  movl %ebx, %esi           #  11    0x77125  2      
  movq 0x10(%rsp), %r12     #  12    0x77127  5      
  movq 0x8(%rsp), %rbx      #  13    0x7712c  5      
  movl %eax, %eax           #  14    0x77131  2      
  movl (%r15,%rax,1), %edi  #  15    0x77133  4      
  nop                       #  16    0x77137  1      
  addl $0x18, %esp          #  17    0x77138  3      
  addq %r15, %rsp           #  18    0x7713b  3      
  jmpq .__swbuf_r           #  19    0x7713e  5      
  nop                       #  20    0x77143  1      
  nop                       #  21    0x77144  1      
  nop                       #  22    0x77145  1      
  nop                       #  23    0x77146  1      
  nop                       #  24    0x77147  1      
  nop                       #  25    0x77148  1      
  nop                       #  26    0x77149  1      
  nop                       #  27    0x7714a  1      
  nop                       #  28    0x7714b  1      
  nop                       #  29    0x7714c  1      
  nop                       #  30    0x7714d  1      
  nop                       #  31    0x7714e  1      
  nop                       #  32    0x7714f  1      
  nop                       #  33    0x77150  1      
  nop                       #  34    0x77151  1      
  nop                       #  35    0x77152  1      
  nop                       #  36    0x77153  1      
  nop                       #  37    0x77154  1      
  nop                       #  38    0x77155  1      
  nop                       #  39    0x77156  1      
  nop                       #  40    0x77157  1      
                                                     
.size __swbuf, .-__swbuf

