  .text
  .globl pthread_self
  .type pthread_self, @function

#! file-offset 0x408c0
#! rip-offset  0x408c0
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  
.pthread_self:                  #        0x408c0  0      
  subl $0x8, %esp               #  1     0x408c0  3      
  addq %r15, %rsp               #  2     0x408c3  3      
  nop                           #  3     0x408c6  1      
  nop                           #  4     0x408c7  1      
  callq .__nacl_read_tp         #  5     0x408c8  5      
  movl %eax, %eax               #  6     0x408cd  2      
  movl %eax, %eax               #  7     0x408cf  2      
  movl 0x24(%r15,%rax,1), %eax  #  8     0x408d1  5      
  addl $0x8, %esp               #  9     0x408d6  3      
  addq %r15, %rsp               #  10    0x408d9  3      
  popq %r11                     #  11    0x408dc  3      
  andl $0xffffffe0, %r11d       #  12    0x408df  7      
  addq %r15, %r11               #  13    0x408e6  3      
  jmpq %r11                     #  14    0x408e9  3      
  nop                           #  15    0x408ec  1      
                                                         
.size pthread_self, .-pthread_self

