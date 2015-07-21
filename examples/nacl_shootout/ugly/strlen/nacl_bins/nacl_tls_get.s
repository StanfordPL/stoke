  .text
  .globl nacl_tls_get
  .type nacl_tls_get, @function

#! file-offset 0x158960
#! rip-offset  0x118960
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.nacl_tls_get:                #        0x118960  0      OPC=0     
  movl 0xff60906(%rip), %eax  #  1     0x118960  6      OPC=1156  
  andl $0xffffffe0, %eax      #  2     0x118966  6      OPC=131   
  nop                         #  3     0x11896c  1      OPC=1343  
  nop                         #  4     0x11896d  1      OPC=1343  
  nop                         #  5     0x11896e  1      OPC=1343  
  addq %r15, %rax             #  6     0x11896f  3      OPC=72    
  jmpq %rax                   #  7     0x118972  2      OPC=928   
  nop                         #  8     0x118974  1      OPC=1343  
  nop                         #  9     0x118975  1      OPC=1343  
  nop                         #  10    0x118976  1      OPC=1343  
  nop                         #  11    0x118977  1      OPC=1343  
  nop                         #  12    0x118978  1      OPC=1343  
  nop                         #  13    0x118979  1      OPC=1343  
  nop                         #  14    0x11897a  1      OPC=1343  
  nop                         #  15    0x11897b  1      OPC=1343  
  nop                         #  16    0x11897c  1      OPC=1343  
  nop                         #  17    0x11897d  1      OPC=1343  
  nop                         #  18    0x11897e  1      OPC=1343  
  nop                         #  19    0x11897f  1      OPC=1343  
  nop                         #  20    0x118980  1      OPC=1343  
  nop                         #  21    0x118981  1      OPC=1343  
  nop                         #  22    0x118982  1      OPC=1343  
  nop                         #  23    0x118983  1      OPC=1343  
  nop                         #  24    0x118984  1      OPC=1343  
  nop                         #  25    0x118985  1      OPC=1343  
                                                                  
.size nacl_tls_get, .-nacl_tls_get

