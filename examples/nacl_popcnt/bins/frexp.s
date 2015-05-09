  .text
  .globl frexp
  .type frexp, @function

#! file-offset 0x7fec0
#! rip-offset  0x7fec0
#! capacity    288 bytes

# Text                             #  Line  RIP      Bytes  
.frexp:                            #        0x7fec0  0      
  movsd %xmm0, -0x8(%rsp)          #  1     0x7fec0  6      
  movq -0x8(%rsp), %rax            #  2     0x7fec6  5      
  movl %edi, %edi                  #  3     0x7fecb  2      
  movl %edi, %edi                  #  4     0x7fecd  2      
  movl $0x0, (%r15,%rdi,1)         #  5     0x7fecf  8      
  movq %rax, %rdx                  #  6     0x7fed7  3      
  movl %eax, %ecx                  #  7     0x7feda  2      
  shrq $0x20, %rdx                 #  8     0x7fedc  4      
  movl %edx, %eax                  #  9     0x7fee0  2      
  andl $0x7fffffff, %eax           #  10    0x7fee2  5      
  cmpl $0x7fefffff, %eax           #  11    0x7fee7  5      
  jg .L_7ff60                      #  12    0x7feec  6      
  testl %eax, %eax                 #  13    0x7fef2  2      
  je .L_7ff80                      #  14    0x7fef4  6      
  cmpl $0xfffff, %eax              #  15    0x7fefa  5      
  movl $0xfffffc02, %ecx           #  16    0x7feff  5      
  jle .L_7ffa0                     #  17    0x7ff04  6      
  nop                              #  18    0x7ff0a  1      
  nop                              #  19    0x7ff0b  1      
.L_7ff20:                          #        0x7ff0c  0      
  sarl $0x14, %eax                 #  20    0x7ff0c  3      
  movsd %xmm0, -0x8(%rsp)          #  21    0x7ff0f  6      
  andl $0x800fffff, %edx           #  22    0x7ff15  6      
  leal (%rax,%rcx,1), %ecx         #  23    0x7ff1b  3      
  movq -0x8(%rsp), %rax            #  24    0x7ff1e  5      
  orq $0x3fe00000, %rdx            #  25    0x7ff23  7      
  xchgw %ax, %ax                   #  26    0x7ff2a  3      
  shlq $0x20, %rdx                 #  27    0x7ff2d  4      
  movl %edi, %edi                  #  28    0x7ff31  2      
  movl %ecx, (%r15,%rdi,1)         #  29    0x7ff33  4      
  andl $0xffffffff, %eax           #  30    0x7ff37  5      
  orq %rdx, %rax                   #  31    0x7ff3c  3      
  movq %rax, -0x8(%rsp)            #  32    0x7ff3f  5      
  movsd -0x8(%rsp), %xmm0          #  33    0x7ff44  6      
  nop                              #  34    0x7ff4a  1      
.L_7ff60:                          #        0x7ff4b  0      
  popq %r11                        #  35    0x7ff4b  3      
  andl $0xffffffe0, %r11d          #  36    0x7ff4e  7      
  addq %r15, %r11                  #  37    0x7ff55  3      
  jmpq %r11                        #  38    0x7ff58  3      
  nop                              #  39    0x7ff5b  1      
  nop                              #  40    0x7ff5c  1      
.L_7ff80:                          #        0x7ff5d  0      
  testl %ecx, %ecx                 #  41    0x7ff5d  2      
  je .L_7ff60                      #  42    0x7ff5f  6      
  nop                              #  43    0x7ff65  1      
  nop                              #  44    0x7ff66  1      
.L_7ffa0:                          #        0x7ff67  0      
  mulsd 0xffa49c9(%rip), %xmm0     #  45    0x7ff67  8      
  movl %edi, %edi                  #  46    0x7ff6f  2      
  movl $0xffffffca, (%r15,%rdi,1)  #  47    0x7ff71  8      
  movl $0xfffffbcc, %ecx           #  48    0x7ff79  5      
  movsd %xmm0, -0x8(%rsp)          #  49    0x7ff7e  6      
  nop                              #  50    0x7ff84  1      
  movq -0x8(%rsp), %rdx            #  51    0x7ff85  5      
  shrq $0x20, %rdx                 #  52    0x7ff8a  4      
  movl %edx, %eax                  #  53    0x7ff8e  2      
  andl $0x7fffffff, %eax           #  54    0x7ff90  5      
  jmpq .L_7ff20                    #  55    0x7ff95  5      
  nop                              #  56    0x7ff9a  1      
  nop                              #  57    0x7ff9b  1      
  nop                              #  58    0x7ff9c  1      
  nop                              #  59    0x7ff9d  1      
  nop                              #  60    0x7ff9e  1      
  nop                              #  61    0x7ff9f  1      
  nop                              #  62    0x7ffa0  1      
  nop                              #  63    0x7ffa1  1      
  nop                              #  64    0x7ffa2  1      
  nop                              #  65    0x7ffa3  1      
  nop                              #  66    0x7ffa4  1      
                                                            
.size frexp, .-frexp

