  .text
  .globl nacl_tls_init
  .type nacl_tls_init, @function

#! file-offset 0x68360
#! rip-offset  0x68360
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.nacl_tls_init:               #        0x68360  0      
  movl 0xffceb72(%rip), %eax  #  1     0x68360  6      
  movl %edi, %edi             #  2     0x68366  2      
  andl $0xffffffe0, %eax      #  3     0x68368  5      
  addq %r15, %rax             #  4     0x6836d  3      
  jmpq %rax                   #  5     0x68370  2      
  nop                         #  6     0x68372  1      
  nop                         #  7     0x68373  1      
  nop                         #  8     0x68374  1      
  nop                         #  9     0x68375  1      
  nop                         #  10    0x68376  1      
  nop                         #  11    0x68377  1      
  nop                         #  12    0x68378  1      
  nop                         #  13    0x68379  1      
  nop                         #  14    0x6837a  1      
  nop                         #  15    0x6837b  1      
  nop                         #  16    0x6837c  1      
  nop                         #  17    0x6837d  1      
  nop                         #  18    0x6837e  1      
  nop                         #  19    0x6837f  1      
  nop                         #  20    0x68380  1      
  nop                         #  21    0x68381  1      
                                                       
.size nacl_tls_init, .-nacl_tls_init

