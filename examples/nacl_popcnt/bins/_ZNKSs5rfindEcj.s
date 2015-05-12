  .text
  .globl _ZNKSs5rfindEcj
  .type _ZNKSs5rfindEcj, @function

#! file-offset 0x44660
#! rip-offset  0x44660
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5rfindEcj:           #        0x44660  0      
  movl %edi, %edi           #  1     0x44660  2      
  movl %edi, %edi           #  2     0x44662  2      
  movl (%r15,%rdi,1), %ecx  #  3     0x44664  4      
  leal -0xc(%rcx), %eax     #  4     0x44668  3      
  movl %eax, %eax           #  5     0x4466b  2      
  movl (%r15,%rax,1), %eax  #  6     0x4466d  4      
  testl %eax, %eax          #  7     0x44671  2      
  je .L_446c0               #  8     0x44673  6      
  subl $0x1, %eax           #  9     0x44679  3      
  cmpl %eax, %edx           #  10    0x4467c  2      
  cmoval %eax, %edx         #  11    0x4467e  3      
  leal 0x1(%rdx), %eax      #  12    0x44681  3      
  addl %ecx, %edx           #  13    0x44684  2      
  nop                       #  14    0x44686  1      
  nop                       #  15    0x44687  1      
.L_446a0:                   #        0x44688  0      
  testl %eax, %eax          #  16    0x44688  2      
  je .L_446c0               #  17    0x4468a  6      
  movl %edx, %ecx           #  18    0x44690  2      
  subl $0x1, %eax           #  19    0x44692  3      
  subl $0x1, %edx           #  20    0x44695  3      
  movl %ecx, %ecx           #  21    0x44698  2      
  cmpb (%r15,%rcx,1), %sil  #  22    0x4469a  4      
  jne .L_446a0              #  23    0x4469e  6      
  popq %r11                 #  24    0x446a4  3      
  andl $0xffffffe0, %r11d   #  25    0x446a7  7      
  addq %r15, %r11           #  26    0x446ae  3      
  jmpq %r11                 #  27    0x446b1  3      
.L_446c0:                   #        0x446b4  0      
  movl $0xffffffff, %eax    #  28    0x446b4  5      
  popq %r11                 #  29    0x446b9  3      
  andl $0xffffffe0, %r11d   #  30    0x446bc  7      
  addq %r15, %r11           #  31    0x446c3  3      
  jmpq %r11                 #  32    0x446c6  3      
  nop                       #  33    0x446c9  1      
  nop                       #  34    0x446ca  1      
  nop                       #  35    0x446cb  1      
  nop                       #  36    0x446cc  1      
  nop                       #  37    0x446cd  1      
  nop                       #  38    0x446ce  1      
  nop                       #  39    0x446cf  1      
  nop                       #  40    0x446d0  1      
  nop                       #  41    0x446d1  1      
  nop                       #  42    0x446d2  1      
  nop                       #  43    0x446d3  1      
  nop                       #  44    0x446d4  1      
  nop                       #  45    0x446d5  1      
  nop                       #  46    0x446d6  1      
  nop                       #  47    0x446d7  1      
                                                     
.size _ZNKSs5rfindEcj, .-_ZNKSs5rfindEcj

