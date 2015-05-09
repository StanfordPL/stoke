  .text
  .globl _ZNKSs4_Rep12_M_is_sharedEv
  .type _ZNKSs4_Rep12_M_is_sharedEv, @function

#! file-offset 0x44900
#! rip-offset  0x44900
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
._ZNKSs4_Rep12_M_is_sharedEv:  #        0x44900  0      
  movl %edi, %edi              #  1     0x44900  2      
  movl %edi, %edi              #  2     0x44902  2      
  movl 0x8(%r15,%rdi,1), %r9d  #  3     0x44904  5      
  popq %r11                    #  4     0x44909  3      
  testl %r9d, %r9d             #  5     0x4490c  3      
  setg %al                     #  6     0x4490f  3      
  andl $0xffffffe0, %r11d      #  7     0x44912  7      
  addq %r15, %r11              #  8     0x44919  3      
  jmpq %r11                    #  9     0x4491c  3      
  nop                          #  10    0x4491f  1      
  nop                          #  11    0x44920  1      
  nop                          #  12    0x44921  1      
  nop                          #  13    0x44922  1      
  nop                          #  14    0x44923  1      
                                                        
.size _ZNKSs4_Rep12_M_is_sharedEv, .-_ZNKSs4_Rep12_M_is_sharedEv

