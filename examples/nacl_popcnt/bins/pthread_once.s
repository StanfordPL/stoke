  .text
  .globl pthread_once
  .type pthread_once, @function

#! file-offset 0x42960
#! rip-offset  0x42960
#! capacity    320 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_once:                 #        0x42960  0      
  movq %rbx, -0x18(%rsp)       #  1     0x42960  5      
  movl %edi, %ebx              #  2     0x42965  2      
  movq %r13, -0x8(%rsp)        #  3     0x42967  5      
  movq %r12, -0x10(%rsp)       #  4     0x4296c  5      
  subl $0x18, %esp             #  5     0x42971  3      
  addq %r15, %rsp              #  6     0x42974  3      
  movl %ebx, %ebx              #  7     0x42977  2      
  movl (%r15,%rbx,1), %eax     #  8     0x42979  4      
  movl %esi, %r13d             #  9     0x4297d  3      
  testl %eax, %eax             #  10    0x42980  2      
  je .L_429e0                  #  11    0x42982  6      
  nop                          #  12    0x42988  1      
  nop                          #  13    0x42989  1      
.L_429a0:                      #        0x4298a  0      
  movq (%rsp), %rbx            #  14    0x4298a  4      
  movq 0x8(%rsp), %r12         #  15    0x4298e  5      
  xorl %eax, %eax              #  16    0x42993  2      
  movq 0x10(%rsp), %r13        #  17    0x42995  5      
  addl $0x18, %esp             #  18    0x4299a  3      
  addq %r15, %rsp              #  19    0x4299d  3      
  popq %r11                    #  20    0x429a0  3      
  nop                          #  21    0x429a3  1      
  andl $0xffffffe0, %r11d      #  22    0x429a4  7      
  addq %r15, %r11              #  23    0x429ab  3      
  jmpq %r11                    #  24    0x429ae  3      
  nop                          #  25    0x429b1  1      
  nop                          #  26    0x429b2  1      
.L_429e0:                      #        0x429b3  0      
  leal 0x4(%rbx), %r12d        #  27    0x429b3  4      
  movl %r12d, %edi             #  28    0x429b7  3      
  nop                          #  29    0x429ba  1      
  nop                          #  30    0x429bb  1      
  callq .pthread_mutex_lock    #  31    0x429bc  5      
  movl %ebx, %ebx              #  32    0x429c1  2      
  movl (%r15,%rbx,1), %eax     #  33    0x429c3  4      
  testl %eax, %eax             #  34    0x429c7  2      
  je .L_42a60                  #  35    0x429c9  6      
  nop                          #  36    0x429cf  1      
  nop                          #  37    0x429d0  1      
.L_42a20:                      #        0x429d1  0      
  movl %r12d, %edi             #  38    0x429d1  3      
  nop                          #  39    0x429d4  1      
  nop                          #  40    0x429d5  1      
  callq .pthread_mutex_unlock  #  41    0x429d6  5      
  jmpq .L_429a0                #  42    0x429db  5      
  nop                          #  43    0x429e0  1      
  nop                          #  44    0x429e1  1      
.L_42a60:                      #        0x429e2  0      
  nop                          #  45    0x429e2  1      
  nop                          #  46    0x429e3  1      
  andl $0xffffffe0, %r13d      #  47    0x429e4  7      
  addq %r15, %r13              #  48    0x429eb  3      
  callq %r13                   #  49    0x429ee  3      
  movl %ebx, %ebx              #  50    0x429f1  2      
  lock                         #  51    0x429f3  1      
  addl $0x1, (%r15,%rbx,1)     #  52    0x429f4  5      
  jmpq .L_42a20                #  53    0x429f9  5      
  nop                          #  54    0x429fe  1      
  nop                          #  55    0x429ff  1      
                                                        
.size pthread_once, .-pthread_once

