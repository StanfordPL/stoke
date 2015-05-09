  .text
  .globl _ZNSs7_M_dataEPc
  .type _ZNSs7_M_dataEPc, @function

#! file-offset 0x44240
#! rip-offset  0x44240
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNSs7_M_dataEPc:          #        0x44240  0      
  popq %r11                 #  1     0x44240  3      
  movl %esi, %eax           #  2     0x44243  2      
  movl %edi, %edi           #  3     0x44245  2      
  movl %edi, %edi           #  4     0x44247  2      
  movl %eax, (%r15,%rdi,1)  #  5     0x44249  4      
  andl $0xffffffe0, %r11d   #  6     0x4424d  7      
  addq %r15, %r11           #  7     0x44254  3      
  jmpq %r11                 #  8     0x44257  3      
  nop                       #  9     0x4425a  1      
  nop                       #  10    0x4425b  1      
  nop                       #  11    0x4425c  1      
  nop                       #  12    0x4425d  1      
  nop                       #  13    0x4425e  1      
  nop                       #  14    0x4425f  1      
  nop                       #  15    0x44260  1      
  nop                       #  16    0x44261  1      
  nop                       #  17    0x44262  1      
  nop                       #  18    0x44263  1      
                                                     
.size _ZNSs7_M_dataEPc, .-_ZNSs7_M_dataEPc

