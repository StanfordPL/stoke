  .text
  .globl frexp
  .type frexp, @function

#! file-offset 0x7fee0
#! rip-offset  0x7fee0
#! capacity    288 bytes

# Text                             #  Line  RIP      Bytes  
.frexp:                            #        0x7fee0  0      
  movsd %xmm0, -0x8(%rsp)          #  1     0x7fee0  6      
  movq -0x8(%rsp), %rax            #  2     0x7fee6  5      
  movl %edi, %edi                  #  3     0x7feeb  2      
  movl %edi, %edi                  #  4     0x7feed  2      
  movl $0x0, (%r15,%rdi,1)         #  5     0x7feef  8      
  movq %rax, %rdx                  #  6     0x7fef7  3      
  movl %eax, %ecx                  #  7     0x7fefa  2      
  shrq $0x20, %rdx                 #  8     0x7fefc  4      
  movl %edx, %eax                  #  9     0x7ff00  2      
  andl $0x7fffffff, %eax           #  10    0x7ff02  5      
  cmpl $0x7fefffff, %eax           #  11    0x7ff07  5      
  jg .L_7ff80                      #  12    0x7ff0c  6      
  testl %eax, %eax                 #  13    0x7ff12  2      
  je .L_7ffa0                      #  14    0x7ff14  6      
  cmpl $0xfffff, %eax              #  15    0x7ff1a  5      
  movl $0xfffffc02, %ecx           #  16    0x7ff1f  5      
  jle .L_7ffc0                     #  17    0x7ff24  6      
  nop                              #  18    0x7ff2a  1      
  nop                              #  19    0x7ff2b  1      
.L_7ff40:                          #        0x7ff2c  0      
  sarl $0x14, %eax                 #  20    0x7ff2c  3      
  movsd %xmm0, -0x8(%rsp)          #  21    0x7ff2f  6      
  andl $0x800fffff, %edx           #  22    0x7ff35  6      
  leal (%rax,%rcx,1), %ecx         #  23    0x7ff3b  3      
  movq -0x8(%rsp), %rax            #  24    0x7ff3e  5      
  orq $0x3fe00000, %rdx            #  25    0x7ff43  7      
  xchgw %ax, %ax                   #  26    0x7ff4a  3      
  shlq $0x20, %rdx                 #  27    0x7ff4d  4      
  movl %edi, %edi                  #  28    0x7ff51  2      
  movl %ecx, (%r15,%rdi,1)         #  29    0x7ff53  4      
  andl $0xffffffff, %eax           #  30    0x7ff57  5      
  orq %rdx, %rax                   #  31    0x7ff5c  3      
  movq %rax, -0x8(%rsp)            #  32    0x7ff5f  5      
  movsd -0x8(%rsp), %xmm0          #  33    0x7ff64  6      
  nop                              #  34    0x7ff6a  1      
.L_7ff80:                          #        0x7ff6b  0      
  popq %r11                        #  35    0x7ff6b  3      
  andl $0xffffffe0, %r11d          #  36    0x7ff6e  7      
  addq %r15, %r11                  #  37    0x7ff75  3      
  jmpq %r11                        #  38    0x7ff78  3      
  nop                              #  39    0x7ff7b  1      
  nop                              #  40    0x7ff7c  1      
.L_7ffa0:                          #        0x7ff7d  0      
  testl %ecx, %ecx                 #  41    0x7ff7d  2      
  je .L_7ff80                      #  42    0x7ff7f  6      
  nop                              #  43    0x7ff85  1      
  nop                              #  44    0x7ff86  1      
.L_7ffc0:                          #        0x7ff87  0      
  mulsd 0xffa49a9(%rip), %xmm0     #  45    0x7ff87  8      
  movl %edi, %edi                  #  46    0x7ff8f  2      
  movl $0xffffffca, (%r15,%rdi,1)  #  47    0x7ff91  8      
  movl $0xfffffbcc, %ecx           #  48    0x7ff99  5      
  movsd %xmm0, -0x8(%rsp)          #  49    0x7ff9e  6      
  nop                              #  50    0x7ffa4  1      
  movq -0x8(%rsp), %rdx            #  51    0x7ffa5  5      
  shrq $0x20, %rdx                 #  52    0x7ffaa  4      
  movl %edx, %eax                  #  53    0x7ffae  2      
  andl $0x7fffffff, %eax           #  54    0x7ffb0  5      
  jmpq .L_7ff40                    #  55    0x7ffb5  5      
  nop                              #  56    0x7ffba  1      
  nop                              #  57    0x7ffbb  1      
  nop                              #  58    0x7ffbc  1      
  nop                              #  59    0x7ffbd  1      
  nop                              #  60    0x7ffbe  1      
  nop                              #  61    0x7ffbf  1      
  nop                              #  62    0x7ffc0  1      
  nop                              #  63    0x7ffc1  1      
  nop                              #  64    0x7ffc2  1      
  nop                              #  65    0x7ffc3  1      
  nop                              #  66    0x7ffc4  1      
                                                            
.size frexp, .-frexp

