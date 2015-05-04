  .text
  .globl d_make_comp
  .type d_make_comp, @function

#! file-offset 0x4fa80
#! rip-offset  0x4fa80
#! capacity    384 bytes

# Text                                #  Line  RIP      Bytes  
.d_make_comp:                         #        0x4fa80  0      
  cmpl $0x3a, %esi                    #  1     0x4fa80  3      
  movl %edi, %edi                     #  2     0x4fa83  2      
  movl %edx, %edx                     #  3     0x4fa85  2      
  movl %ecx, %ecx                     #  4     0x4fa87  2      
  jbe .L_4fae0                        #  5     0x4fa89  6      
  nop                                 #  6     0x4fa8f  1      
  nop                                 #  7     0x4fa90  1      
.L_4faa0:                             #        0x4fa91  0      
  xorl %eax, %eax                     #  8     0x4fa91  2      
  nop                                 #  9     0x4fa93  1      
  nop                                 #  10    0x4fa94  1      
.L_4fac0:                             #        0x4fa95  0      
  popq %r11                           #  11    0x4fa95  3      
  andl $0xffffffe0, %r11d             #  12    0x4fa98  7      
  addq %r15, %r11                     #  13    0x4fa9f  3      
  jmpq %r11                           #  14    0x4faa2  3      
  nop                                 #  15    0x4faa5  1      
  nop                                 #  16    0x4faa6  1      
.L_4fae0:                             #        0x4faa7  0      
  movl %esi, %eax                     #  17    0x4faa7  2      
  movl %eax, %eax                     #  18    0x4faa9  2      
  movq 0x10021520(%r15,%rax,8), %rax  #  19    0x4faab  8      
  andl $0xffffffe0, %eax              #  20    0x4fab3  5      
  addq %r15, %rax                     #  21    0x4fab8  3      
  jmpq %rax                           #  22    0x4fabb  2      
  nop                                 #  23    0x4fabd  1      
  testq %rcx, %rcx                    #  24    0x4fabe  3      
  je .L_4faa0                         #  25    0x4fac1  6      
  nop                                 #  26    0x4fac7  1      
  nop                                 #  27    0x4fac8  1      
  movl %edi, %edi                     #  28    0x4fac9  2      
  movl 0x14(%r15,%rdi,1), %r8d        #  29    0x4facb  5      
  movl %edi, %edi                     #  30    0x4fad0  2      
  cmpl 0x18(%r15,%rdi,1), %r8d        #  31    0x4fad2  5      
  jge .L_4faa0                        #  32    0x4fad7  6      
  nop                                 #  33    0x4fadd  1      
.L_4fb40:                             #        0x4fade  0      
  leal (%r8,%r8,2), %eax              #  34    0x4fade  4      
  addl $0x1, %r8d                     #  35    0x4fae2  4      
  movl %edi, %edi                     #  36    0x4fae6  2      
  movl %r8d, 0x14(%r15,%rdi,1)        #  37    0x4fae8  5      
  shll $0x2, %eax                     #  38    0x4faed  3      
  movl %edi, %edi                     #  39    0x4faf0  2      
  addl 0x10(%r15,%rdi,1), %eax        #  40    0x4faf2  5      
  testq %rax, %rax                    #  41    0x4faf7  3      
  nop                                 #  42    0x4fafa  1      
  je .L_4fac0                         #  43    0x4fafb  6      
  movl %eax, %eax                     #  44    0x4fb01  2      
  movl %esi, (%r15,%rax,1)            #  45    0x4fb03  4      
  movl %eax, %eax                     #  46    0x4fb07  2      
  movl %edx, 0x4(%r15,%rax,1)         #  47    0x4fb09  5      
  movl %eax, %eax                     #  48    0x4fb0e  2      
  movl %ecx, 0x8(%r15,%rax,1)         #  49    0x4fb10  5      
  popq %r11                           #  50    0x4fb15  3      
  nop                                 #  51    0x4fb18  1      
  andl $0xffffffe0, %r11d             #  52    0x4fb19  7      
  addq %r15, %r11                     #  53    0x4fb20  3      
  jmpq %r11                           #  54    0x4fb23  3      
  nop                                 #  55    0x4fb26  1      
  nop                                 #  56    0x4fb27  1      
  testq %rcx, %rcx                    #  57    0x4fb28  3      
  je .L_4faa0                         #  58    0x4fb2b  6      
  nop                                 #  59    0x4fb31  1      
  nop                                 #  60    0x4fb32  1      
  testq %rdx, %rdx                    #  61    0x4fb33  3      
  je .L_4faa0                         #  62    0x4fb36  6      
  movl %edi, %edi                     #  63    0x4fb3c  2      
  movl 0x14(%r15,%rdi,1), %r8d        #  64    0x4fb3e  5      
  movl %edi, %edi                     #  65    0x4fb43  2      
  cmpl 0x18(%r15,%rdi,1), %r8d        #  66    0x4fb45  5      
  jge .L_4faa0                        #  67    0x4fb4a  6      
  nop                                 #  68    0x4fb50  1      
  jmpq .L_4fb40                       #  69    0x4fb51  5      
  nop                                 #  70    0x4fb56  1      
  nop                                 #  71    0x4fb57  1      
                                                               
.size d_make_comp, .-d_make_comp

