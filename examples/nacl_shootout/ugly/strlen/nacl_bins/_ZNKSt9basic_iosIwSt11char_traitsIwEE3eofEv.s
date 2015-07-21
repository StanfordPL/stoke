  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv, @function

#! file-offset 0xa4440
#! rip-offset  0x64440
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode    
._ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv:  #        0x64440  0      OPC=0     
  movl %edi, %edi                              #  1     0x64440  2      OPC=1157  
  movl %edi, %edi                              #  2     0x64442  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %eax                 #  3     0x64444  5      OPC=1156  
  popq %r11                                    #  4     0x64449  2      OPC=1694  
  shrl $0x1, %eax                              #  5     0x6444b  2      OPC=2313  
  andl $0x1, %eax                              #  6     0x6444d  3      OPC=132   
  andl $0xffffffe0, %r11d                      #  7     0x64450  7      OPC=131   
  nop                                          #  8     0x64457  1      OPC=1343  
  nop                                          #  9     0x64458  1      OPC=1343  
  nop                                          #  10    0x64459  1      OPC=1343  
  nop                                          #  11    0x6445a  1      OPC=1343  
  addq %r15, %r11                              #  12    0x6445b  3      OPC=72    
  jmpq %r11                                    #  13    0x6445e  3      OPC=928   
  nop                                          #  14    0x64461  1      OPC=1343  
  nop                                          #  15    0x64462  1      OPC=1343  
  nop                                          #  16    0x64463  1      OPC=1343  
  nop                                          #  17    0x64464  1      OPC=1343  
  nop                                          #  18    0x64465  1      OPC=1343  
  nop                                          #  19    0x64466  1      OPC=1343  
                                                                                  
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE3eofEv

