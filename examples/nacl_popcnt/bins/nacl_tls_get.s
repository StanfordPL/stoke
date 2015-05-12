  .text
  .globl nacl_tls_get
  .type nacl_tls_get, @function

#! file-offset 0x68040
#! rip-offset  0x68040
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.nacl_tls_get:                #        0x68040  0      
  movl 0xffcee96(%rip), %eax  #  1     0x68040  6      
  andl $0xffffffe0, %eax      #  2     0x68046  5      
  addq %r15, %rax             #  3     0x6804b  3      
  jmpq %rax                   #  4     0x6804e  2      
  nop                         #  5     0x68050  1      
  nop                         #  6     0x68051  1      
  nop                         #  7     0x68052  1      
  nop                         #  8     0x68053  1      
  nop                         #  9     0x68054  1      
  nop                         #  10    0x68055  1      
  nop                         #  11    0x68056  1      
  nop                         #  12    0x68057  1      
  nop                         #  13    0x68058  1      
  nop                         #  14    0x68059  1      
  nop                         #  15    0x6805a  1      
  nop                         #  16    0x6805b  1      
  nop                         #  17    0x6805c  1      
  nop                         #  18    0x6805d  1      
  nop                         #  19    0x6805e  1      
  nop                         #  20    0x6805f  1      
  nop                         #  21    0x68060  1      
  nop                         #  22    0x68061  1      
                                                       
.size nacl_tls_get, .-nacl_tls_get

