  .text
  .globl pthread_self
  .type pthread_self, @function

#! file-offset 0x40840
#! rip-offset  0x40840
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  
.pthread_self:                  #        0x40840  0      
  subl $0x8, %esp               #  1     0x40840  3      
  addq %r15, %rsp               #  2     0x40843  3      
  nop                           #  3     0x40846  1      
  nop                           #  4     0x40847  1      
  callq .__nacl_read_tp         #  5     0x40848  5      
  movl %eax, %eax               #  6     0x4084d  2      
  movl %eax, %eax               #  7     0x4084f  2      
  movl 0x24(%r15,%rax,1), %eax  #  8     0x40851  5      
  addl $0x8, %esp               #  9     0x40856  3      
  addq %r15, %rsp               #  10    0x40859  3      
  popq %r11                     #  11    0x4085c  3      
  andl $0xffffffe0, %r11d       #  12    0x4085f  7      
  addq %r15, %r11               #  13    0x40866  3      
  jmpq %r11                     #  14    0x40869  3      
  nop                           #  15    0x4086c  1      
                                                         
.size pthread_self, .-pthread_self

