  .text
  .globl _ZNKSs4_Rep12_M_is_sharedEv
  .type _ZNKSs4_Rep12_M_is_sharedEv, @function

#! file-offset 0x449a0
#! rip-offset  0x449a0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
._ZNKSs4_Rep12_M_is_sharedEv:  #        0x449a0  0      
  movl %edi, %edi              #  1     0x449a0  2      
  movl %edi, %edi              #  2     0x449a2  2      
  movl 0x8(%r15,%rdi,1), %r9d  #  3     0x449a4  5      
  popq %r11                    #  4     0x449a9  3      
  testl %r9d, %r9d             #  5     0x449ac  3      
  setg %al                     #  6     0x449af  3      
  andl $0xffffffe0, %r11d      #  7     0x449b2  7      
  addq %r15, %r11              #  8     0x449b9  3      
  jmpq %r11                    #  9     0x449bc  3      
  nop                          #  10    0x449bf  1      
  nop                          #  11    0x449c0  1      
  nop                          #  12    0x449c1  1      
  nop                          #  13    0x449c2  1      
  nop                          #  14    0x449c3  1      
                                                        
.size _ZNKSs4_Rep12_M_is_sharedEv, .-_ZNKSs4_Rep12_M_is_sharedEv

