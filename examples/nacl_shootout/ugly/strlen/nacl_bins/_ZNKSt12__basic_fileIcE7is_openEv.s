  .text
  .globl _ZNKSt12__basic_fileIcE7is_openEv
  .type _ZNKSt12__basic_fileIcE7is_openEv, @function

#! file-offset 0x11d760
#! rip-offset  0xdd760
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode    
._ZNKSt12__basic_fileIcE7is_openEv:  #        0xdd760  0      OPC=0     
  movl %edi, %edi                    #  1     0xdd760  2      OPC=1157  
  movl %edi, %edi                    #  2     0xdd762  2      OPC=1157  
  movl (%r15,%rdi,1), %eax           #  3     0xdd764  4      OPC=1156  
  popq %r11                          #  4     0xdd768  2      OPC=1694  
  testl %eax, %eax                   #  5     0xdd76a  2      OPC=2436  
  setne %al                          #  6     0xdd76c  3      OPC=2208  
  andl $0xffffffe0, %r11d            #  7     0xdd76f  7      OPC=131   
  nop                                #  8     0xdd776  1      OPC=1343  
  nop                                #  9     0xdd777  1      OPC=1343  
  nop                                #  10    0xdd778  1      OPC=1343  
  nop                                #  11    0xdd779  1      OPC=1343  
  addq %r15, %r11                    #  12    0xdd77a  3      OPC=72    
  jmpq %r11                          #  13    0xdd77d  3      OPC=928   
  nop                                #  14    0xdd780  1      OPC=1343  
  nop                                #  15    0xdd781  1      OPC=1343  
  nop                                #  16    0xdd782  1      OPC=1343  
  nop                                #  17    0xdd783  1      OPC=1343  
  nop                                #  18    0xdd784  1      OPC=1343  
  nop                                #  19    0xdd785  1      OPC=1343  
  nop                                #  20    0xdd786  1      OPC=1343  
                                                                        
.size _ZNKSt12__basic_fileIcE7is_openEv, .-_ZNKSt12__basic_fileIcE7is_openEv

