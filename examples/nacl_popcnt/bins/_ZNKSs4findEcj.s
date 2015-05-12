  .text
  .globl _ZNKSs4findEcj
  .type _ZNKSs4findEcj, @function

#! file-offset 0x44de0
#! rip-offset  0x44de0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs4findEcj:            #        0x44de0  0      
  movl %edi, %edi           #  1     0x44de0  2      
  pushq %rbx                #  2     0x44de2  2      
  movl %edi, %edi           #  3     0x44de4  2      
  movl (%r15,%rdi,1), %ebx  #  4     0x44de6  4      
  leal -0xc(%rbx), %eax     #  5     0x44dea  3      
  movl %eax, %eax           #  6     0x44ded  2      
  movl (%r15,%rax,1), %eax  #  7     0x44def  4      
  cmpl %eax, %edx           #  8     0x44df3  2      
  jb .L_44e20               #  9     0x44df5  6      
  nop                       #  10    0x44dfb  1      
.L_44e00:                   #        0x44dfc  0      
  popq %rbx                 #  11    0x44dfc  2      
  popq %r11                 #  12    0x44dfe  3      
  movl $0xffffffff, %eax    #  13    0x44e01  5      
  andl $0xffffffe0, %r11d   #  14    0x44e06  7      
  addq %r15, %r11           #  15    0x44e0d  3      
  jmpq %r11                 #  16    0x44e10  3      
  nop                       #  17    0x44e13  1      
.L_44e20:                   #        0x44e14  0      
  subl %edx, %eax           #  18    0x44e14  2      
  leal (%rdx,%rbx,1), %edi  #  19    0x44e16  3      
  movsbl %sil, %esi         #  20    0x44e19  4      
  movl %eax, %edx           #  21    0x44e1d  2      
  nop                       #  22    0x44e1f  1      
  nop                       #  23    0x44e20  1      
  callq .memchr             #  24    0x44e21  5      
  movl %eax, %eax           #  25    0x44e26  2      
  testq %rax, %rax          #  26    0x44e28  3      
  je .L_44e00               #  27    0x44e2b  6      
  subl %ebx, %eax           #  28    0x44e31  2      
  popq %rbx                 #  29    0x44e33  2      
  popq %r11                 #  30    0x44e35  3      
  andl $0xffffffe0, %r11d   #  31    0x44e38  7      
  addq %r15, %r11           #  32    0x44e3f  3      
  jmpq %r11                 #  33    0x44e42  3      
  nop                       #  34    0x44e45  1      
  nop                       #  35    0x44e46  1      
  nop                       #  36    0x44e47  1      
  nop                       #  37    0x44e48  1      
  nop                       #  38    0x44e49  1      
  nop                       #  39    0x44e4a  1      
  nop                       #  40    0x44e4b  1      
  nop                       #  41    0x44e4c  1      
  nop                       #  42    0x44e4d  1      
  nop                       #  43    0x44e4e  1      
                                                     
.size _ZNKSs4findEcj, .-_ZNKSs4findEcj

