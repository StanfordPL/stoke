  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEEcvPvEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEEcvPvEv, @function

#! file-offset 0xa43c0
#! rip-offset  0x643c0
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode    
._ZNKSt9basic_iosIwSt11char_traitsIwEEcvPvEv:  #        0x643c0  0      OPC=0     
  movl %edi, %edi                              #  1     0x643c0  2      OPC=1157  
  xorl %eax, %eax                              #  2     0x643c2  2      OPC=3758  
  popq %r11                                    #  3     0x643c4  2      OPC=1694  
  movl %edi, %edi                              #  4     0x643c6  2      OPC=1157  
  testb $0x5, 0x14(%r15,%rdi,1)                #  5     0x643c8  6      OPC=2430  
  cmoveq %rdi, %rax                            #  6     0x643ce  4      OPC=304   
  andl $0xffffffe0, %r11d                      #  7     0x643d2  7      OPC=131   
  nop                                          #  8     0x643d9  1      OPC=1343  
  nop                                          #  9     0x643da  1      OPC=1343  
  nop                                          #  10    0x643db  1      OPC=1343  
  nop                                          #  11    0x643dc  1      OPC=1343  
  addq %r15, %r11                              #  12    0x643dd  3      OPC=72    
  jmpq %r11                                    #  13    0x643e0  3      OPC=928   
  nop                                          #  14    0x643e3  1      OPC=1343  
  nop                                          #  15    0x643e4  1      OPC=1343  
  nop                                          #  16    0x643e5  1      OPC=1343  
  nop                                          #  17    0x643e6  1      OPC=1343  
                                                                                  
.size _ZNKSt9basic_iosIwSt11char_traitsIwEEcvPvEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEEcvPvEv

