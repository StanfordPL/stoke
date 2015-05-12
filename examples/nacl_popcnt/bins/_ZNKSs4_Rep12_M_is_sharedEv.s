  .text
  .globl _ZNKSs4_Rep12_M_is_sharedEv
  .type _ZNKSs4_Rep12_M_is_sharedEv, @function

#! file-offset 0x44920
#! rip-offset  0x44920
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
._ZNKSs4_Rep12_M_is_sharedEv:  #        0x44920  0      
  movl %edi, %edi              #  1     0x44920  2      
  movl %edi, %edi              #  2     0x44922  2      
  movl 0x8(%r15,%rdi,1), %r9d  #  3     0x44924  5      
  popq %r11                    #  4     0x44929  3      
  testl %r9d, %r9d             #  5     0x4492c  3      
  setg %al                     #  6     0x4492f  3      
  andl $0xffffffe0, %r11d      #  7     0x44932  7      
  addq %r15, %r11              #  8     0x44939  3      
  jmpq %r11                    #  9     0x4493c  3      
  nop                          #  10    0x4493f  1      
  nop                          #  11    0x44940  1      
  nop                          #  12    0x44941  1      
  nop                          #  13    0x44942  1      
  nop                          #  14    0x44943  1      
                                                        
.size _ZNKSs4_Rep12_M_is_sharedEv, .-_ZNKSs4_Rep12_M_is_sharedEv

