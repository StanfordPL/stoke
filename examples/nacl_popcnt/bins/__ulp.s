  .text
  .globl __ulp
  .type __ulp, @function

#! file-offset 0x7e680
#! rip-offset  0x7e680
#! capacity    224 bytes

# Text                     #  Line  RIP      Bytes  
.__ulp:                    #        0x7e680  0      
  movsd %xmm0, -0x8(%rsp)  #  1     0x7e680  6      
  movq -0x8(%rsp), %rax    #  2     0x7e686  5      
  shrq $0x20, %rax         #  3     0x7e68b  4      
  andl $0x7ff00000, %eax   #  4     0x7e68f  5      
  subl $0x3400000, %eax    #  5     0x7e694  5      
  testl %eax, %eax         #  6     0x7e699  2      
  nop                      #  7     0x7e69b  1      
  jle .L_7e6e0             #  8     0x7e69c  6      
  nop                      #  9     0x7e6a2  1      
  nop                      #  10    0x7e6a3  1      
.L_7e6c0:                  #        0x7e6a4  0      
  shlq $0x20, %rax         #  11    0x7e6a4  4      
  movq %rax, -0x8(%rsp)    #  12    0x7e6a8  5      
  movsd -0x8(%rsp), %xmm0  #  13    0x7e6ad  6      
  popq %r11                #  14    0x7e6b3  3      
  andl $0xffffffe0, %r11d  #  15    0x7e6b6  7      
  addq %r15, %r11          #  16    0x7e6bd  3      
  jmpq %r11                #  17    0x7e6c0  3      
  nop                      #  18    0x7e6c3  1      
.L_7e6e0:                  #        0x7e6c4  0      
  movl %eax, %ecx          #  19    0x7e6c4  2      
  negl %ecx                #  20    0x7e6c6  2      
  sarl $0x14, %ecx         #  21    0x7e6c8  3      
  cmpl $0x13, %ecx         #  22    0x7e6cb  3      
  jle .L_7e740             #  23    0x7e6ce  6      
  leal -0x14(%rcx), %edx   #  24    0x7e6d4  3      
  movl $0x1, %eax          #  25    0x7e6d7  5      
  cmpl $0x1e, %edx         #  26    0x7e6dc  3      
  jle .L_7e720             #  27    0x7e6df  6      
  movl %eax, %eax          #  28    0x7e6e5  2      
  nop                      #  29    0x7e6e7  1      
.L_7e700:                  #        0x7e6e8  0      
  movq %rax, -0x8(%rsp)    #  30    0x7e6e8  5      
  movsd -0x8(%rsp), %xmm0  #  31    0x7e6ed  6      
  popq %r11                #  32    0x7e6f3  3      
  andl $0xffffffe0, %r11d  #  33    0x7e6f6  7      
  addq %r15, %r11          #  34    0x7e6fd  3      
  jmpq %r11                #  35    0x7e700  3      
  nop                      #  36    0x7e703  1      
.L_7e720:                  #        0x7e704  0      
  movl $0x1f, %ecx         #  37    0x7e704  5      
  subl %edx, %ecx          #  38    0x7e709  2      
  shll %cl, %eax           #  39    0x7e70b  2      
  movl %eax, %eax          #  40    0x7e70d  2      
  jmpq .L_7e700            #  41    0x7e70f  5      
  nop                      #  42    0x7e714  1      
  nop                      #  43    0x7e715  1      
.L_7e740:                  #        0x7e716  0      
  movl $0x80000, %eax      #  44    0x7e716  5      
  sarl %cl, %eax           #  45    0x7e71b  2      
  jmpq .L_7e6c0            #  46    0x7e71d  5      
  nop                      #  47    0x7e722  1      
  nop                      #  48    0x7e723  1      
                                                    
.size __ulp, .-__ulp

