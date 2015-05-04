  .text
  .globl _ZNKSs5c_strEv
  .type _ZNKSs5c_strEv, @function

#! file-offset 0x44680
#! rip-offset  0x44680
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5c_strEv:            #        0x44680  0      
  popq %r11                 #  1     0x44680  3      
  movl %edi, %edi           #  2     0x44683  2      
  movl %edi, %edi           #  3     0x44685  2      
  movl (%r15,%rdi,1), %eax  #  4     0x44687  4      
  andl $0xffffffe0, %r11d   #  5     0x4468b  7      
  addq %r15, %r11           #  6     0x44692  3      
  jmpq %r11                 #  7     0x44695  3      
  nop                       #  8     0x44698  1      
  nop                       #  9     0x44699  1      
  nop                       #  10    0x4469a  1      
  nop                       #  11    0x4469b  1      
  nop                       #  12    0x4469c  1      
  nop                       #  13    0x4469d  1      
  nop                       #  14    0x4469e  1      
  nop                       #  15    0x4469f  1      
  nop                       #  16    0x446a0  1      
  nop                       #  17    0x446a1  1      
  nop                       #  18    0x446a2  1      
  nop                       #  19    0x446a3  1      
                                                     
.size _ZNKSs5c_strEv, .-_ZNKSs5c_strEv

