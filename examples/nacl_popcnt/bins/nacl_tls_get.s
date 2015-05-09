  .text
  .globl nacl_tls_get
  .type nacl_tls_get, @function

#! file-offset 0x68020
#! rip-offset  0x68020
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.nacl_tls_get:                #        0x68020  0      
  movl 0xffceeb6(%rip), %eax  #  1     0x68020  6      
  andl $0xffffffe0, %eax      #  2     0x68026  5      
  addq %r15, %rax             #  3     0x6802b  3      
  jmpq %rax                   #  4     0x6802e  2      
  nop                         #  5     0x68030  1      
  nop                         #  6     0x68031  1      
  nop                         #  7     0x68032  1      
  nop                         #  8     0x68033  1      
  nop                         #  9     0x68034  1      
  nop                         #  10    0x68035  1      
  nop                         #  11    0x68036  1      
  nop                         #  12    0x68037  1      
  nop                         #  13    0x68038  1      
  nop                         #  14    0x68039  1      
  nop                         #  15    0x6803a  1      
  nop                         #  16    0x6803b  1      
  nop                         #  17    0x6803c  1      
  nop                         #  18    0x6803d  1      
  nop                         #  19    0x6803e  1      
  nop                         #  20    0x6803f  1      
  nop                         #  21    0x68040  1      
  nop                         #  22    0x68041  1      
                                                       
.size nacl_tls_get, .-nacl_tls_get

