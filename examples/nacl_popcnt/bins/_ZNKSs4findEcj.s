  .text
  .globl _ZNKSs4findEcj
  .type _ZNKSs4findEcj, @function

#! file-offset 0x44dc0
#! rip-offset  0x44dc0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs4findEcj:            #        0x44dc0  0      
  movl %edi, %edi           #  1     0x44dc0  2      
  pushq %rbx                #  2     0x44dc2  2      
  movl %edi, %edi           #  3     0x44dc4  2      
  movl (%r15,%rdi,1), %ebx  #  4     0x44dc6  4      
  leal -0xc(%rbx), %eax     #  5     0x44dca  3      
  movl %eax, %eax           #  6     0x44dcd  2      
  movl (%r15,%rax,1), %eax  #  7     0x44dcf  4      
  cmpl %eax, %edx           #  8     0x44dd3  2      
  jb .L_44e00               #  9     0x44dd5  6      
  nop                       #  10    0x44ddb  1      
.L_44de0:                   #        0x44ddc  0      
  popq %rbx                 #  11    0x44ddc  2      
  popq %r11                 #  12    0x44dde  3      
  movl $0xffffffff, %eax    #  13    0x44de1  5      
  andl $0xffffffe0, %r11d   #  14    0x44de6  7      
  addq %r15, %r11           #  15    0x44ded  3      
  jmpq %r11                 #  16    0x44df0  3      
  nop                       #  17    0x44df3  1      
.L_44e00:                   #        0x44df4  0      
  subl %edx, %eax           #  18    0x44df4  2      
  leal (%rdx,%rbx,1), %edi  #  19    0x44df6  3      
  movsbl %sil, %esi         #  20    0x44df9  4      
  movl %eax, %edx           #  21    0x44dfd  2      
  nop                       #  22    0x44dff  1      
  nop                       #  23    0x44e00  1      
  callq .memchr             #  24    0x44e01  5      
  movl %eax, %eax           #  25    0x44e06  2      
  testq %rax, %rax          #  26    0x44e08  3      
  je .L_44de0               #  27    0x44e0b  6      
  subl %ebx, %eax           #  28    0x44e11  2      
  popq %rbx                 #  29    0x44e13  2      
  popq %r11                 #  30    0x44e15  3      
  andl $0xffffffe0, %r11d   #  31    0x44e18  7      
  addq %r15, %r11           #  32    0x44e1f  3      
  jmpq %r11                 #  33    0x44e22  3      
  nop                       #  34    0x44e25  1      
  nop                       #  35    0x44e26  1      
  nop                       #  36    0x44e27  1      
  nop                       #  37    0x44e28  1      
  nop                       #  38    0x44e29  1      
  nop                       #  39    0x44e2a  1      
  nop                       #  40    0x44e2b  1      
  nop                       #  41    0x44e2c  1      
  nop                       #  42    0x44e2d  1      
  nop                       #  43    0x44e2e  1      
                                                     
.size _ZNKSs4findEcj, .-_ZNKSs4findEcj

