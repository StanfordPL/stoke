  .text
  .globl _ZNKSs8_M_limitEjj
  .type _ZNKSs8_M_limitEjj, @function

#! file-offset 0x44360
#! rip-offset  0x44360
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs8_M_limitEjj:        #        0x44360  0      
  movl %edi, %edi           #  1     0x44360  2      
  movl %edi, %edi           #  2     0x44362  2      
  movl (%r15,%rdi,1), %eax  #  3     0x44364  4      
  popq %r11                 #  4     0x44368  3      
  subl $0xc, %eax           #  5     0x4436b  3      
  movl %eax, %eax           #  6     0x4436e  2      
  movl (%r15,%rax,1), %eax  #  7     0x44370  4      
  subl %esi, %eax           #  8     0x44374  2      
  cmpl %eax, %edx           #  9     0x44376  2      
  cmovbel %edx, %eax        #  10    0x44378  3      
  nop                       #  11    0x4437b  1      
  andl $0xffffffe0, %r11d   #  12    0x4437c  7      
  addq %r15, %r11           #  13    0x44383  3      
  jmpq %r11                 #  14    0x44386  3      
  nop                       #  15    0x44389  1      
  nop                       #  16    0x4438a  1      
  nop                       #  17    0x4438b  1      
  nop                       #  18    0x4438c  1      
  nop                       #  19    0x4438d  1      
  nop                       #  20    0x4438e  1      
  nop                       #  21    0x4438f  1      
  nop                       #  22    0x44390  1      
  nop                       #  23    0x44391  1      
  nop                       #  24    0x44392  1      
  nop                       #  25    0x44393  1      
  nop                       #  26    0x44394  1      
  nop                       #  27    0x44395  1      
  nop                       #  28    0x44396  1      
  nop                       #  29    0x44397  1      
  nop                       #  30    0x44398  1      
  nop                       #  31    0x44399  1      
  nop                       #  32    0x4439a  1      
  nop                       #  33    0x4439b  1      
  nop                       #  34    0x4439c  1      
  nop                       #  35    0x4439d  1      
  nop                       #  36    0x4439e  1      
                                                     
.size _ZNKSs8_M_limitEjj, .-_ZNKSs8_M_limitEjj

