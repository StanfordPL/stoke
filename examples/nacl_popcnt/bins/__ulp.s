  .text
  .globl __ulp
  .type __ulp, @function

#! file-offset 0x7e720
#! rip-offset  0x7e720
#! capacity    224 bytes

# Text                     #  Line  RIP      Bytes  
.__ulp:                    #        0x7e720  0      
  movsd %xmm0, -0x8(%rsp)  #  1     0x7e720  6      
  movq -0x8(%rsp), %rax    #  2     0x7e726  5      
  shrq $0x20, %rax         #  3     0x7e72b  4      
  andl $0x7ff00000, %eax   #  4     0x7e72f  5      
  subl $0x3400000, %eax    #  5     0x7e734  5      
  testl %eax, %eax         #  6     0x7e739  2      
  nop                      #  7     0x7e73b  1      
  jle .L_7e780             #  8     0x7e73c  6      
  nop                      #  9     0x7e742  1      
  nop                      #  10    0x7e743  1      
.L_7e760:                  #        0x7e744  0      
  shlq $0x20, %rax         #  11    0x7e744  4      
  movq %rax, -0x8(%rsp)    #  12    0x7e748  5      
  movsd -0x8(%rsp), %xmm0  #  13    0x7e74d  6      
  popq %r11                #  14    0x7e753  3      
  andl $0xffffffe0, %r11d  #  15    0x7e756  7      
  addq %r15, %r11          #  16    0x7e75d  3      
  jmpq %r11                #  17    0x7e760  3      
  nop                      #  18    0x7e763  1      
.L_7e780:                  #        0x7e764  0      
  movl %eax, %ecx          #  19    0x7e764  2      
  negl %ecx                #  20    0x7e766  2      
  sarl $0x14, %ecx         #  21    0x7e768  3      
  cmpl $0x13, %ecx         #  22    0x7e76b  3      
  jle .L_7e7e0             #  23    0x7e76e  6      
  leal -0x14(%rcx), %edx   #  24    0x7e774  3      
  movl $0x1, %eax          #  25    0x7e777  5      
  cmpl $0x1e, %edx         #  26    0x7e77c  3      
  jle .L_7e7c0             #  27    0x7e77f  6      
  movl %eax, %eax          #  28    0x7e785  2      
  nop                      #  29    0x7e787  1      
.L_7e7a0:                  #        0x7e788  0      
  movq %rax, -0x8(%rsp)    #  30    0x7e788  5      
  movsd -0x8(%rsp), %xmm0  #  31    0x7e78d  6      
  popq %r11                #  32    0x7e793  3      
  andl $0xffffffe0, %r11d  #  33    0x7e796  7      
  addq %r15, %r11          #  34    0x7e79d  3      
  jmpq %r11                #  35    0x7e7a0  3      
  nop                      #  36    0x7e7a3  1      
.L_7e7c0:                  #        0x7e7a4  0      
  movl $0x1f, %ecx         #  37    0x7e7a4  5      
  subl %edx, %ecx          #  38    0x7e7a9  2      
  shll %cl, %eax           #  39    0x7e7ab  2      
  movl %eax, %eax          #  40    0x7e7ad  2      
  jmpq .L_7e7a0            #  41    0x7e7af  5      
  nop                      #  42    0x7e7b4  1      
  nop                      #  43    0x7e7b5  1      
.L_7e7e0:                  #        0x7e7b6  0      
  movl $0x80000, %eax      #  44    0x7e7b6  5      
  sarl %cl, %eax           #  45    0x7e7bb  2      
  jmpq .L_7e760            #  46    0x7e7bd  5      
  nop                      #  47    0x7e7c2  1      
  nop                      #  48    0x7e7c3  1      
                                                    
.size __ulp, .-__ulp

