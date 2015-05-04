  .text
  .globl _ZNKSs4findEcj
  .type _ZNKSs4findEcj, @function

#! file-offset 0x44e60
#! rip-offset  0x44e60
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs4findEcj:            #        0x44e60  0      
  movl %edi, %edi           #  1     0x44e60  2      
  pushq %rbx                #  2     0x44e62  2      
  movl %edi, %edi           #  3     0x44e64  2      
  movl (%r15,%rdi,1), %ebx  #  4     0x44e66  4      
  leal -0xc(%rbx), %eax     #  5     0x44e6a  3      
  movl %eax, %eax           #  6     0x44e6d  2      
  movl (%r15,%rax,1), %eax  #  7     0x44e6f  4      
  cmpl %eax, %edx           #  8     0x44e73  2      
  jb .L_44ea0               #  9     0x44e75  6      
  nop                       #  10    0x44e7b  1      
.L_44e80:                   #        0x44e7c  0      
  popq %rbx                 #  11    0x44e7c  2      
  popq %r11                 #  12    0x44e7e  3      
  movl $0xffffffff, %eax    #  13    0x44e81  5      
  andl $0xffffffe0, %r11d   #  14    0x44e86  7      
  addq %r15, %r11           #  15    0x44e8d  3      
  jmpq %r11                 #  16    0x44e90  3      
  nop                       #  17    0x44e93  1      
.L_44ea0:                   #        0x44e94  0      
  subl %edx, %eax           #  18    0x44e94  2      
  leal (%rdx,%rbx,1), %edi  #  19    0x44e96  3      
  movsbl %sil, %esi         #  20    0x44e99  4      
  movl %eax, %edx           #  21    0x44e9d  2      
  nop                       #  22    0x44e9f  1      
  nop                       #  23    0x44ea0  1      
  callq .memchr             #  24    0x44ea1  5      
  movl %eax, %eax           #  25    0x44ea6  2      
  testq %rax, %rax          #  26    0x44ea8  3      
  je .L_44e80               #  27    0x44eab  6      
  subl %ebx, %eax           #  28    0x44eb1  2      
  popq %rbx                 #  29    0x44eb3  2      
  popq %r11                 #  30    0x44eb5  3      
  andl $0xffffffe0, %r11d   #  31    0x44eb8  7      
  addq %r15, %r11           #  32    0x44ebf  3      
  jmpq %r11                 #  33    0x44ec2  3      
  nop                       #  34    0x44ec5  1      
  nop                       #  35    0x44ec6  1      
  nop                       #  36    0x44ec7  1      
  nop                       #  37    0x44ec8  1      
  nop                       #  38    0x44ec9  1      
  nop                       #  39    0x44eca  1      
  nop                       #  40    0x44ecb  1      
  nop                       #  41    0x44ecc  1      
  nop                       #  42    0x44ecd  1      
  nop                       #  43    0x44ece  1      
                                                     
.size _ZNKSs4findEcj, .-_ZNKSs4findEcj

