  .text
  .globl nacl_tls_init
  .type nacl_tls_init, @function

#! file-offset 0x68340
#! rip-offset  0x68340
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.nacl_tls_init:               #        0x68340  0      
  movl 0xffceb92(%rip), %eax  #  1     0x68340  6      
  movl %edi, %edi             #  2     0x68346  2      
  andl $0xffffffe0, %eax      #  3     0x68348  5      
  addq %r15, %rax             #  4     0x6834d  3      
  jmpq %rax                   #  5     0x68350  2      
  nop                         #  6     0x68352  1      
  nop                         #  7     0x68353  1      
  nop                         #  8     0x68354  1      
  nop                         #  9     0x68355  1      
  nop                         #  10    0x68356  1      
  nop                         #  11    0x68357  1      
  nop                         #  12    0x68358  1      
  nop                         #  13    0x68359  1      
  nop                         #  14    0x6835a  1      
  nop                         #  15    0x6835b  1      
  nop                         #  16    0x6835c  1      
  nop                         #  17    0x6835d  1      
  nop                         #  18    0x6835e  1      
  nop                         #  19    0x6835f  1      
  nop                         #  20    0x68360  1      
  nop                         #  21    0x68361  1      
                                                       
.size nacl_tls_init, .-nacl_tls_init

