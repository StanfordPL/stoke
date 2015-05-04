  .text
  .globl nacl_tls_init
  .type nacl_tls_init, @function

#! file-offset 0x683e0
#! rip-offset  0x683e0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.nacl_tls_init:               #        0x683e0  0      
  movl 0xffceaf2(%rip), %eax  #  1     0x683e0  6      
  movl %edi, %edi             #  2     0x683e6  2      
  andl $0xffffffe0, %eax      #  3     0x683e8  5      
  addq %r15, %rax             #  4     0x683ed  3      
  jmpq %rax                   #  5     0x683f0  2      
  nop                         #  6     0x683f2  1      
  nop                         #  7     0x683f3  1      
  nop                         #  8     0x683f4  1      
  nop                         #  9     0x683f5  1      
  nop                         #  10    0x683f6  1      
  nop                         #  11    0x683f7  1      
  nop                         #  12    0x683f8  1      
  nop                         #  13    0x683f9  1      
  nop                         #  14    0x683fa  1      
  nop                         #  15    0x683fb  1      
  nop                         #  16    0x683fc  1      
  nop                         #  17    0x683fd  1      
  nop                         #  18    0x683fe  1      
  nop                         #  19    0x683ff  1      
  nop                         #  20    0x68400  1      
  nop                         #  21    0x68401  1      
                                                       
.size nacl_tls_init, .-nacl_tls_init

