  .text
  .globl pthread_once
  .type pthread_once, @function

#! file-offset 0x42940
#! rip-offset  0x42940
#! capacity    320 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_once:                 #        0x42940  0      
  movq %rbx, -0x18(%rsp)       #  1     0x42940  5      
  movl %edi, %ebx              #  2     0x42945  2      
  movq %r13, -0x8(%rsp)        #  3     0x42947  5      
  movq %r12, -0x10(%rsp)       #  4     0x4294c  5      
  subl $0x18, %esp             #  5     0x42951  3      
  addq %r15, %rsp              #  6     0x42954  3      
  movl %ebx, %ebx              #  7     0x42957  2      
  movl (%r15,%rbx,1), %eax     #  8     0x42959  4      
  movl %esi, %r13d             #  9     0x4295d  3      
  testl %eax, %eax             #  10    0x42960  2      
  je .L_429c0                  #  11    0x42962  6      
  nop                          #  12    0x42968  1      
  nop                          #  13    0x42969  1      
.L_42980:                      #        0x4296a  0      
  movq (%rsp), %rbx            #  14    0x4296a  4      
  movq 0x8(%rsp), %r12         #  15    0x4296e  5      
  xorl %eax, %eax              #  16    0x42973  2      
  movq 0x10(%rsp), %r13        #  17    0x42975  5      
  addl $0x18, %esp             #  18    0x4297a  3      
  addq %r15, %rsp              #  19    0x4297d  3      
  popq %r11                    #  20    0x42980  3      
  nop                          #  21    0x42983  1      
  andl $0xffffffe0, %r11d      #  22    0x42984  7      
  addq %r15, %r11              #  23    0x4298b  3      
  jmpq %r11                    #  24    0x4298e  3      
  nop                          #  25    0x42991  1      
  nop                          #  26    0x42992  1      
.L_429c0:                      #        0x42993  0      
  leal 0x4(%rbx), %r12d        #  27    0x42993  4      
  movl %r12d, %edi             #  28    0x42997  3      
  nop                          #  29    0x4299a  1      
  nop                          #  30    0x4299b  1      
  callq .pthread_mutex_lock    #  31    0x4299c  5      
  movl %ebx, %ebx              #  32    0x429a1  2      
  movl (%r15,%rbx,1), %eax     #  33    0x429a3  4      
  testl %eax, %eax             #  34    0x429a7  2      
  je .L_42a40                  #  35    0x429a9  6      
  nop                          #  36    0x429af  1      
  nop                          #  37    0x429b0  1      
.L_42a00:                      #        0x429b1  0      
  movl %r12d, %edi             #  38    0x429b1  3      
  nop                          #  39    0x429b4  1      
  nop                          #  40    0x429b5  1      
  callq .pthread_mutex_unlock  #  41    0x429b6  5      
  jmpq .L_42980                #  42    0x429bb  5      
  nop                          #  43    0x429c0  1      
  nop                          #  44    0x429c1  1      
.L_42a40:                      #        0x429c2  0      
  nop                          #  45    0x429c2  1      
  nop                          #  46    0x429c3  1      
  andl $0xffffffe0, %r13d      #  47    0x429c4  7      
  addq %r15, %r13              #  48    0x429cb  3      
  callq %r13                   #  49    0x429ce  3      
  movl %ebx, %ebx              #  50    0x429d1  2      
  lock                         #  51    0x429d3  1      
  addl $0x1, (%r15,%rbx,1)     #  52    0x429d4  5      
  jmpq .L_42a00                #  53    0x429d9  5      
  nop                          #  54    0x429de  1      
  nop                          #  55    0x429df  1      
                                                        
.size pthread_once, .-pthread_once

