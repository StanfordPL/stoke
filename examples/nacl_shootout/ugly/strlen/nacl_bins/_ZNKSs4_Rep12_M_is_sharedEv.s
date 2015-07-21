  .text
  .globl _ZNKSs4_Rep12_M_is_sharedEv
  .type _ZNKSs4_Rep12_M_is_sharedEv, @function

#! file-offset 0xea3c0
#! rip-offset  0xaa3c0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
._ZNKSs4_Rep12_M_is_sharedEv:  #        0xaa3c0  0      OPC=0     
  movl %edi, %edi              #  1     0xaa3c0  2      OPC=1157  
  movl %edi, %edi              #  2     0xaa3c2  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %r9d  #  3     0xaa3c4  5      OPC=1156  
  popq %r11                    #  4     0xaa3c9  2      OPC=1694  
  testl %r9d, %r9d             #  5     0xaa3cb  3      OPC=2436  
  setg %al                     #  6     0xaa3ce  3      OPC=2181  
  andl $0xffffffe0, %r11d      #  7     0xaa3d1  7      OPC=131   
  nop                          #  8     0xaa3d8  1      OPC=1343  
  nop                          #  9     0xaa3d9  1      OPC=1343  
  nop                          #  10    0xaa3da  1      OPC=1343  
  nop                          #  11    0xaa3db  1      OPC=1343  
  addq %r15, %r11              #  12    0xaa3dc  3      OPC=72    
  jmpq %r11                    #  13    0xaa3df  3      OPC=928   
  nop                          #  14    0xaa3e2  1      OPC=1343  
  nop                          #  15    0xaa3e3  1      OPC=1343  
  nop                          #  16    0xaa3e4  1      OPC=1343  
  nop                          #  17    0xaa3e5  1      OPC=1343  
  nop                          #  18    0xaa3e6  1      OPC=1343  
                                                                  
.size _ZNKSs4_Rep12_M_is_sharedEv, .-_ZNKSs4_Rep12_M_is_sharedEv

