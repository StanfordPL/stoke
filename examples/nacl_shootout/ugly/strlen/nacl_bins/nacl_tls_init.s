  .text
  .globl nacl_tls_init
  .type nacl_tls_init, @function

#! file-offset 0x158c80
#! rip-offset  0x118c80
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.nacl_tls_init:               #        0x118c80  0      OPC=0     
  movl 0xff605e2(%rip), %eax  #  1     0x118c80  6      OPC=1156  
  movl %edi, %edi             #  2     0x118c86  2      OPC=1157  
  andl $0xffffffe0, %eax      #  3     0x118c88  6      OPC=131   
  nop                         #  4     0x118c8e  1      OPC=1343  
  nop                         #  5     0x118c8f  1      OPC=1343  
  nop                         #  6     0x118c90  1      OPC=1343  
  addq %r15, %rax             #  7     0x118c91  3      OPC=72    
  jmpq %rax                   #  8     0x118c94  2      OPC=928   
  nop                         #  9     0x118c96  1      OPC=1343  
  nop                         #  10    0x118c97  1      OPC=1343  
  nop                         #  11    0x118c98  1      OPC=1343  
  nop                         #  12    0x118c99  1      OPC=1343  
  nop                         #  13    0x118c9a  1      OPC=1343  
  nop                         #  14    0x118c9b  1      OPC=1343  
  nop                         #  15    0x118c9c  1      OPC=1343  
  nop                         #  16    0x118c9d  1      OPC=1343  
  nop                         #  17    0x118c9e  1      OPC=1343  
  nop                         #  18    0x118c9f  1      OPC=1343  
  nop                         #  19    0x118ca0  1      OPC=1343  
  nop                         #  20    0x118ca1  1      OPC=1343  
  nop                         #  21    0x118ca2  1      OPC=1343  
  nop                         #  22    0x118ca3  1      OPC=1343  
  nop                         #  23    0x118ca4  1      OPC=1343  
  nop                         #  24    0x118ca5  1      OPC=1343  
                                                                  
.size nacl_tls_init, .-nacl_tls_init

