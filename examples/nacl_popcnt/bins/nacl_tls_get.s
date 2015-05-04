  .text
  .globl nacl_tls_get
  .type nacl_tls_get, @function

#! file-offset 0x680c0
#! rip-offset  0x680c0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.nacl_tls_get:                #        0x680c0  0      
  movl 0xffcee16(%rip), %eax  #  1     0x680c0  6      
  andl $0xffffffe0, %eax      #  2     0x680c6  5      
  addq %r15, %rax             #  3     0x680cb  3      
  jmpq %rax                   #  4     0x680ce  2      
  nop                         #  5     0x680d0  1      
  nop                         #  6     0x680d1  1      
  nop                         #  7     0x680d2  1      
  nop                         #  8     0x680d3  1      
  nop                         #  9     0x680d4  1      
  nop                         #  10    0x680d5  1      
  nop                         #  11    0x680d6  1      
  nop                         #  12    0x680d7  1      
  nop                         #  13    0x680d8  1      
  nop                         #  14    0x680d9  1      
  nop                         #  15    0x680da  1      
  nop                         #  16    0x680db  1      
  nop                         #  17    0x680dc  1      
  nop                         #  18    0x680dd  1      
  nop                         #  19    0x680de  1      
  nop                         #  20    0x680df  1      
  nop                         #  21    0x680e0  1      
  nop                         #  22    0x680e1  1      
                                                       
.size nacl_tls_get, .-nacl_tls_get

