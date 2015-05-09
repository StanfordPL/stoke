  .text
  .globl _ZNKSs4_Rep12_M_is_leakedEv
  .type _ZNKSs4_Rep12_M_is_leakedEv, @function

#! file-offset 0x448e0
#! rip-offset  0x448e0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
._ZNKSs4_Rep12_M_is_leakedEv:  #        0x448e0  0      
  movl %edi, %edi              #  1     0x448e0  2      
  popq %r11                    #  2     0x448e2  3      
  movl %edi, %edi              #  3     0x448e5  2      
  movl 0x8(%r15,%rdi,1), %eax  #  4     0x448e7  5      
  shrl $0x1f, %eax             #  5     0x448ec  3      
  andl $0xffffffe0, %r11d      #  6     0x448ef  7      
  addq %r15, %r11              #  7     0x448f6  3      
  jmpq %r11                    #  8     0x448f9  3      
  nop                          #  9     0x448fc  1      
  nop                          #  10    0x448fd  1      
  nop                          #  11    0x448fe  1      
  nop                          #  12    0x448ff  1      
  nop                          #  13    0x44900  1      
  nop                          #  14    0x44901  1      
  nop                          #  15    0x44902  1      
  nop                          #  16    0x44903  1      
                                                        
.size _ZNKSs4_Rep12_M_is_leakedEv, .-_ZNKSs4_Rep12_M_is_leakedEv

