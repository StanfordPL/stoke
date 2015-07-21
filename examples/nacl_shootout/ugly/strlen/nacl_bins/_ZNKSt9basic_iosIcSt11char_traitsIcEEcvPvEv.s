  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv, @function

#! file-offset 0xa4260
#! rip-offset  0x64260
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode    
._ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv:  #        0x64260  0      OPC=0     
  movl %edi, %edi                              #  1     0x64260  2      OPC=1157  
  xorl %eax, %eax                              #  2     0x64262  2      OPC=3758  
  popq %r11                                    #  3     0x64264  2      OPC=1694  
  movl %edi, %edi                              #  4     0x64266  2      OPC=1157  
  testb $0x5, 0x14(%r15,%rdi,1)                #  5     0x64268  6      OPC=2430  
  cmoveq %rdi, %rax                            #  6     0x6426e  4      OPC=304   
  andl $0xffffffe0, %r11d                      #  7     0x64272  7      OPC=131   
  nop                                          #  8     0x64279  1      OPC=1343  
  nop                                          #  9     0x6427a  1      OPC=1343  
  nop                                          #  10    0x6427b  1      OPC=1343  
  nop                                          #  11    0x6427c  1      OPC=1343  
  addq %r15, %r11                              #  12    0x6427d  3      OPC=72    
  jmpq %r11                                    #  13    0x64280  3      OPC=928   
  nop                                          #  14    0x64283  1      OPC=1343  
  nop                                          #  15    0x64284  1      OPC=1343  
  nop                                          #  16    0x64285  1      OPC=1343  
  nop                                          #  17    0x64286  1      OPC=1343  
                                                                                  
.size _ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv

