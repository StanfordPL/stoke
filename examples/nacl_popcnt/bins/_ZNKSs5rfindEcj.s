  .text
  .globl _ZNKSs5rfindEcj
  .type _ZNKSs5rfindEcj, @function

#! file-offset 0x44640
#! rip-offset  0x44640
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5rfindEcj:           #        0x44640  0      
  movl %edi, %edi           #  1     0x44640  2      
  movl %edi, %edi           #  2     0x44642  2      
  movl (%r15,%rdi,1), %ecx  #  3     0x44644  4      
  leal -0xc(%rcx), %eax     #  4     0x44648  3      
  movl %eax, %eax           #  5     0x4464b  2      
  movl (%r15,%rax,1), %eax  #  6     0x4464d  4      
  testl %eax, %eax          #  7     0x44651  2      
  je .L_446a0               #  8     0x44653  6      
  subl $0x1, %eax           #  9     0x44659  3      
  cmpl %eax, %edx           #  10    0x4465c  2      
  cmoval %eax, %edx         #  11    0x4465e  3      
  leal 0x1(%rdx), %eax      #  12    0x44661  3      
  addl %ecx, %edx           #  13    0x44664  2      
  nop                       #  14    0x44666  1      
  nop                       #  15    0x44667  1      
.L_44680:                   #        0x44668  0      
  testl %eax, %eax          #  16    0x44668  2      
  je .L_446a0               #  17    0x4466a  6      
  movl %edx, %ecx           #  18    0x44670  2      
  subl $0x1, %eax           #  19    0x44672  3      
  subl $0x1, %edx           #  20    0x44675  3      
  movl %ecx, %ecx           #  21    0x44678  2      
  cmpb (%r15,%rcx,1), %sil  #  22    0x4467a  4      
  jne .L_44680              #  23    0x4467e  6      
  popq %r11                 #  24    0x44684  3      
  andl $0xffffffe0, %r11d   #  25    0x44687  7      
  addq %r15, %r11           #  26    0x4468e  3      
  jmpq %r11                 #  27    0x44691  3      
.L_446a0:                   #        0x44694  0      
  movl $0xffffffff, %eax    #  28    0x44694  5      
  popq %r11                 #  29    0x44699  3      
  andl $0xffffffe0, %r11d   #  30    0x4469c  7      
  addq %r15, %r11           #  31    0x446a3  3      
  jmpq %r11                 #  32    0x446a6  3      
  nop                       #  33    0x446a9  1      
  nop                       #  34    0x446aa  1      
  nop                       #  35    0x446ab  1      
  nop                       #  36    0x446ac  1      
  nop                       #  37    0x446ad  1      
  nop                       #  38    0x446ae  1      
  nop                       #  39    0x446af  1      
  nop                       #  40    0x446b0  1      
  nop                       #  41    0x446b1  1      
  nop                       #  42    0x446b2  1      
  nop                       #  43    0x446b3  1      
  nop                       #  44    0x446b4  1      
  nop                       #  45    0x446b5  1      
  nop                       #  46    0x446b6  1      
  nop                       #  47    0x446b7  1      
                                                     
.size _ZNKSs5rfindEcj, .-_ZNKSs5rfindEcj

