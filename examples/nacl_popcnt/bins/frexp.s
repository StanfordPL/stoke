  .text
  .globl frexp
  .type frexp, @function

#! file-offset 0x7ff60
#! rip-offset  0x7ff60
#! capacity    288 bytes

# Text                             #  Line  RIP      Bytes  
.frexp:                            #        0x7ff60  0      
  movsd %xmm0, -0x8(%rsp)          #  1     0x7ff60  6      
  movq -0x8(%rsp), %rax            #  2     0x7ff66  5      
  movl %edi, %edi                  #  3     0x7ff6b  2      
  movl %edi, %edi                  #  4     0x7ff6d  2      
  movl $0x0, (%r15,%rdi,1)         #  5     0x7ff6f  8      
  movq %rax, %rdx                  #  6     0x7ff77  3      
  movl %eax, %ecx                  #  7     0x7ff7a  2      
  shrq $0x20, %rdx                 #  8     0x7ff7c  4      
  movl %edx, %eax                  #  9     0x7ff80  2      
  andl $0x7fffffff, %eax           #  10    0x7ff82  5      
  cmpl $0x7fefffff, %eax           #  11    0x7ff87  5      
  jg .L_80000                      #  12    0x7ff8c  6      
  testl %eax, %eax                 #  13    0x7ff92  2      
  je .L_80020                      #  14    0x7ff94  6      
  cmpl $0xfffff, %eax              #  15    0x7ff9a  5      
  movl $0xfffffc02, %ecx           #  16    0x7ff9f  5      
  jle .L_80040                     #  17    0x7ffa4  6      
  nop                              #  18    0x7ffaa  1      
  nop                              #  19    0x7ffab  1      
.L_7ffc0:                          #        0x7ffac  0      
  sarl $0x14, %eax                 #  20    0x7ffac  3      
  movsd %xmm0, -0x8(%rsp)          #  21    0x7ffaf  6      
  andl $0x800fffff, %edx           #  22    0x7ffb5  6      
  leal (%rax,%rcx,1), %ecx         #  23    0x7ffbb  3      
  movq -0x8(%rsp), %rax            #  24    0x7ffbe  5      
  orq $0x3fe00000, %rdx            #  25    0x7ffc3  7      
  xchgw %ax, %ax                   #  26    0x7ffca  3      
  shlq $0x20, %rdx                 #  27    0x7ffcd  4      
  movl %edi, %edi                  #  28    0x7ffd1  2      
  movl %ecx, (%r15,%rdi,1)         #  29    0x7ffd3  4      
  andl $0xffffffff, %eax           #  30    0x7ffd7  5      
  orq %rdx, %rax                   #  31    0x7ffdc  3      
  movq %rax, -0x8(%rsp)            #  32    0x7ffdf  5      
  movsd -0x8(%rsp), %xmm0          #  33    0x7ffe4  6      
  nop                              #  34    0x7ffea  1      
.L_80000:                          #        0x7ffeb  0      
  popq %r11                        #  35    0x7ffeb  3      
  andl $0xffffffe0, %r11d          #  36    0x7ffee  7      
  addq %r15, %r11                  #  37    0x7fff5  3      
  jmpq %r11                        #  38    0x7fff8  3      
  nop                              #  39    0x7fffb  1      
  nop                              #  40    0x7fffc  1      
.L_80020:                          #        0x7fffd  0      
  testl %ecx, %ecx                 #  41    0x7fffd  2      
  je .L_80000                      #  42    0x7ffff  6      
  nop                              #  43    0x80005  1      
  nop                              #  44    0x80006  1      
.L_80040:                          #        0x80007  0      
  mulsd 0xffa4929(%rip), %xmm0     #  45    0x80007  8      
  movl %edi, %edi                  #  46    0x8000f  2      
  movl $0xffffffca, (%r15,%rdi,1)  #  47    0x80011  8      
  movl $0xfffffbcc, %ecx           #  48    0x80019  5      
  movsd %xmm0, -0x8(%rsp)          #  49    0x8001e  6      
  nop                              #  50    0x80024  1      
  movq -0x8(%rsp), %rdx            #  51    0x80025  5      
  shrq $0x20, %rdx                 #  52    0x8002a  4      
  movl %edx, %eax                  #  53    0x8002e  2      
  andl $0x7fffffff, %eax           #  54    0x80030  5      
  jmpq .L_7ffc0                    #  55    0x80035  5      
  nop                              #  56    0x8003a  1      
  nop                              #  57    0x8003b  1      
  nop                              #  58    0x8003c  1      
  nop                              #  59    0x8003d  1      
  nop                              #  60    0x8003e  1      
  nop                              #  61    0x8003f  1      
  nop                              #  62    0x80040  1      
  nop                              #  63    0x80041  1      
  nop                              #  64    0x80042  1      
  nop                              #  65    0x80043  1      
  nop                              #  66    0x80044  1      
                                                            
.size frexp, .-frexp

