  .text
  .globl _ZNKSs4_Rep12_M_is_leakedEv
  .type _ZNKSs4_Rep12_M_is_leakedEv, @function

#! file-offset 0x44900
#! rip-offset  0x44900
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
._ZNKSs4_Rep12_M_is_leakedEv:  #        0x44900  0      
  movl %edi, %edi              #  1     0x44900  2      
  popq %r11                    #  2     0x44902  3      
  movl %edi, %edi              #  3     0x44905  2      
  movl 0x8(%r15,%rdi,1), %eax  #  4     0x44907  5      
  shrl $0x1f, %eax             #  5     0x4490c  3      
  andl $0xffffffe0, %r11d      #  6     0x4490f  7      
  addq %r15, %r11              #  7     0x44916  3      
  jmpq %r11                    #  8     0x44919  3      
  nop                          #  9     0x4491c  1      
  nop                          #  10    0x4491d  1      
  nop                          #  11    0x4491e  1      
  nop                          #  12    0x4491f  1      
  nop                          #  13    0x44920  1      
  nop                          #  14    0x44921  1      
  nop                          #  15    0x44922  1      
  nop                          #  16    0x44923  1      
                                                        
.size _ZNKSs4_Rep12_M_is_leakedEv, .-_ZNKSs4_Rep12_M_is_leakedEv

