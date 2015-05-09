  .text
  .globl _ZNKSs8_M_limitEjj
  .type _ZNKSs8_M_limitEjj, @function

#! file-offset 0x442c0
#! rip-offset  0x442c0
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs8_M_limitEjj:        #        0x442c0  0      
  movl %edi, %edi           #  1     0x442c0  2      
  movl %edi, %edi           #  2     0x442c2  2      
  movl (%r15,%rdi,1), %eax  #  3     0x442c4  4      
  popq %r11                 #  4     0x442c8  3      
  subl $0xc, %eax           #  5     0x442cb  3      
  movl %eax, %eax           #  6     0x442ce  2      
  movl (%r15,%rax,1), %eax  #  7     0x442d0  4      
  subl %esi, %eax           #  8     0x442d4  2      
  cmpl %eax, %edx           #  9     0x442d6  2      
  cmovbel %edx, %eax        #  10    0x442d8  3      
  nop                       #  11    0x442db  1      
  andl $0xffffffe0, %r11d   #  12    0x442dc  7      
  addq %r15, %r11           #  13    0x442e3  3      
  jmpq %r11                 #  14    0x442e6  3      
  nop                       #  15    0x442e9  1      
  nop                       #  16    0x442ea  1      
  nop                       #  17    0x442eb  1      
  nop                       #  18    0x442ec  1      
  nop                       #  19    0x442ed  1      
  nop                       #  20    0x442ee  1      
  nop                       #  21    0x442ef  1      
  nop                       #  22    0x442f0  1      
  nop                       #  23    0x442f1  1      
  nop                       #  24    0x442f2  1      
  nop                       #  25    0x442f3  1      
  nop                       #  26    0x442f4  1      
  nop                       #  27    0x442f5  1      
  nop                       #  28    0x442f6  1      
  nop                       #  29    0x442f7  1      
  nop                       #  30    0x442f8  1      
  nop                       #  31    0x442f9  1      
  nop                       #  32    0x442fa  1      
  nop                       #  33    0x442fb  1      
  nop                       #  34    0x442fc  1      
  nop                       #  35    0x442fd  1      
  nop                       #  36    0x442fe  1      
                                                     
.size _ZNKSs8_M_limitEjj, .-_ZNKSs8_M_limitEjj

