  .text
  .globl _ZNKSs8_M_limitEjj
  .type _ZNKSs8_M_limitEjj, @function

#! file-offset 0x442e0
#! rip-offset  0x442e0
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs8_M_limitEjj:        #        0x442e0  0      
  movl %edi, %edi           #  1     0x442e0  2      
  movl %edi, %edi           #  2     0x442e2  2      
  movl (%r15,%rdi,1), %eax  #  3     0x442e4  4      
  popq %r11                 #  4     0x442e8  3      
  subl $0xc, %eax           #  5     0x442eb  3      
  movl %eax, %eax           #  6     0x442ee  2      
  movl (%r15,%rax,1), %eax  #  7     0x442f0  4      
  subl %esi, %eax           #  8     0x442f4  2      
  cmpl %eax, %edx           #  9     0x442f6  2      
  cmovbel %edx, %eax        #  10    0x442f8  3      
  nop                       #  11    0x442fb  1      
  andl $0xffffffe0, %r11d   #  12    0x442fc  7      
  addq %r15, %r11           #  13    0x44303  3      
  jmpq %r11                 #  14    0x44306  3      
  nop                       #  15    0x44309  1      
  nop                       #  16    0x4430a  1      
  nop                       #  17    0x4430b  1      
  nop                       #  18    0x4430c  1      
  nop                       #  19    0x4430d  1      
  nop                       #  20    0x4430e  1      
  nop                       #  21    0x4430f  1      
  nop                       #  22    0x44310  1      
  nop                       #  23    0x44311  1      
  nop                       #  24    0x44312  1      
  nop                       #  25    0x44313  1      
  nop                       #  26    0x44314  1      
  nop                       #  27    0x44315  1      
  nop                       #  28    0x44316  1      
  nop                       #  29    0x44317  1      
  nop                       #  30    0x44318  1      
  nop                       #  31    0x44319  1      
  nop                       #  32    0x4431a  1      
  nop                       #  33    0x4431b  1      
  nop                       #  34    0x4431c  1      
  nop                       #  35    0x4431d  1      
  nop                       #  36    0x4431e  1      
                                                     
.size _ZNKSs8_M_limitEjj, .-_ZNKSs8_M_limitEjj

