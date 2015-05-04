  .text
  .globl _ZNSs7_M_dataEPc
  .type _ZNSs7_M_dataEPc, @function

#! file-offset 0x442e0
#! rip-offset  0x442e0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNSs7_M_dataEPc:          #        0x442e0  0      
  popq %r11                 #  1     0x442e0  3      
  movl %esi, %eax           #  2     0x442e3  2      
  movl %edi, %edi           #  3     0x442e5  2      
  movl %edi, %edi           #  4     0x442e7  2      
  movl %eax, (%r15,%rdi,1)  #  5     0x442e9  4      
  andl $0xffffffe0, %r11d   #  6     0x442ed  7      
  addq %r15, %r11           #  7     0x442f4  3      
  jmpq %r11                 #  8     0x442f7  3      
  nop                       #  9     0x442fa  1      
  nop                       #  10    0x442fb  1      
  nop                       #  11    0x442fc  1      
  nop                       #  12    0x442fd  1      
  nop                       #  13    0x442fe  1      
  nop                       #  14    0x442ff  1      
  nop                       #  15    0x44300  1      
  nop                       #  16    0x44301  1      
  nop                       #  17    0x44302  1      
  nop                       #  18    0x44303  1      
                                                     
.size _ZNSs7_M_dataEPc, .-_ZNSs7_M_dataEPc

