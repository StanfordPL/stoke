  .text
  .globl _ZNKSs4_Rep12_M_is_leakedEv
  .type _ZNKSs4_Rep12_M_is_leakedEv, @function

#! file-offset 0x44980
#! rip-offset  0x44980
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
._ZNKSs4_Rep12_M_is_leakedEv:  #        0x44980  0      
  movl %edi, %edi              #  1     0x44980  2      
  popq %r11                    #  2     0x44982  3      
  movl %edi, %edi              #  3     0x44985  2      
  movl 0x8(%r15,%rdi,1), %eax  #  4     0x44987  5      
  shrl $0x1f, %eax             #  5     0x4498c  3      
  andl $0xffffffe0, %r11d      #  6     0x4498f  7      
  addq %r15, %r11              #  7     0x44996  3      
  jmpq %r11                    #  8     0x44999  3      
  nop                          #  9     0x4499c  1      
  nop                          #  10    0x4499d  1      
  nop                          #  11    0x4499e  1      
  nop                          #  12    0x4499f  1      
  nop                          #  13    0x449a0  1      
  nop                          #  14    0x449a1  1      
  nop                          #  15    0x449a2  1      
  nop                          #  16    0x449a3  1      
                                                        
.size _ZNKSs4_Rep12_M_is_leakedEv, .-_ZNKSs4_Rep12_M_is_leakedEv

