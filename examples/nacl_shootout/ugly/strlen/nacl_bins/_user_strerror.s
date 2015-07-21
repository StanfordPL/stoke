  .text
  .globl _user_strerror
  .type _user_strerror, @function

#! file-offset 0x176e60
#! rip-offset  0x136e60
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
._user_strerror:           #        0x136e60  0      OPC=0     
  popq %r11                #  1     0x136e60  2      OPC=1694  
  xorl %eax, %eax          #  2     0x136e62  2      OPC=3758  
  andl $0xffffffe0, %r11d  #  3     0x136e64  7      OPC=131   
  nop                      #  4     0x136e6b  1      OPC=1343  
  nop                      #  5     0x136e6c  1      OPC=1343  
  nop                      #  6     0x136e6d  1      OPC=1343  
  nop                      #  7     0x136e6e  1      OPC=1343  
  addq %r15, %r11          #  8     0x136e6f  3      OPC=72    
  jmpq %r11                #  9     0x136e72  3      OPC=928   
  nop                      #  10    0x136e75  1      OPC=1343  
  nop                      #  11    0x136e76  1      OPC=1343  
  nop                      #  12    0x136e77  1      OPC=1343  
  nop                      #  13    0x136e78  1      OPC=1343  
  nop                      #  14    0x136e79  1      OPC=1343  
  nop                      #  15    0x136e7a  1      OPC=1343  
  nop                      #  16    0x136e7b  1      OPC=1343  
  nop                      #  17    0x136e7c  1      OPC=1343  
  nop                      #  18    0x136e7d  1      OPC=1343  
  nop                      #  19    0x136e7e  1      OPC=1343  
  nop                      #  20    0x136e7f  1      OPC=1343  
  nop                      #  21    0x136e80  1      OPC=1343  
  nop                      #  22    0x136e81  1      OPC=1343  
  nop                      #  23    0x136e82  1      OPC=1343  
  nop                      #  24    0x136e83  1      OPC=1343  
  nop                      #  25    0x136e84  1      OPC=1343  
  nop                      #  26    0x136e85  1      OPC=1343  
  nop                      #  27    0x136e86  1      OPC=1343  
                                                               
.size _user_strerror, .-_user_strerror

