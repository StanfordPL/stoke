  .text
  .globl pthread_once
  .type pthread_once, @function

#! file-offset 0x429e0
#! rip-offset  0x429e0
#! capacity    320 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_once:                 #        0x429e0  0      
  movq %rbx, -0x18(%rsp)       #  1     0x429e0  5      
  movl %edi, %ebx              #  2     0x429e5  2      
  movq %r13, -0x8(%rsp)        #  3     0x429e7  5      
  movq %r12, -0x10(%rsp)       #  4     0x429ec  5      
  subl $0x18, %esp             #  5     0x429f1  3      
  addq %r15, %rsp              #  6     0x429f4  3      
  movl %ebx, %ebx              #  7     0x429f7  2      
  movl (%r15,%rbx,1), %eax     #  8     0x429f9  4      
  movl %esi, %r13d             #  9     0x429fd  3      
  testl %eax, %eax             #  10    0x42a00  2      
  je .L_42a60                  #  11    0x42a02  6      
  nop                          #  12    0x42a08  1      
  nop                          #  13    0x42a09  1      
.L_42a20:                      #        0x42a0a  0      
  movq (%rsp), %rbx            #  14    0x42a0a  4      
  movq 0x8(%rsp), %r12         #  15    0x42a0e  5      
  xorl %eax, %eax              #  16    0x42a13  2      
  movq 0x10(%rsp), %r13        #  17    0x42a15  5      
  addl $0x18, %esp             #  18    0x42a1a  3      
  addq %r15, %rsp              #  19    0x42a1d  3      
  popq %r11                    #  20    0x42a20  3      
  nop                          #  21    0x42a23  1      
  andl $0xffffffe0, %r11d      #  22    0x42a24  7      
  addq %r15, %r11              #  23    0x42a2b  3      
  jmpq %r11                    #  24    0x42a2e  3      
  nop                          #  25    0x42a31  1      
  nop                          #  26    0x42a32  1      
.L_42a60:                      #        0x42a33  0      
  leal 0x4(%rbx), %r12d        #  27    0x42a33  4      
  movl %r12d, %edi             #  28    0x42a37  3      
  nop                          #  29    0x42a3a  1      
  nop                          #  30    0x42a3b  1      
  callq .pthread_mutex_lock    #  31    0x42a3c  5      
  movl %ebx, %ebx              #  32    0x42a41  2      
  movl (%r15,%rbx,1), %eax     #  33    0x42a43  4      
  testl %eax, %eax             #  34    0x42a47  2      
  je .L_42ae0                  #  35    0x42a49  6      
  nop                          #  36    0x42a4f  1      
  nop                          #  37    0x42a50  1      
.L_42aa0:                      #        0x42a51  0      
  movl %r12d, %edi             #  38    0x42a51  3      
  nop                          #  39    0x42a54  1      
  nop                          #  40    0x42a55  1      
  callq .pthread_mutex_unlock  #  41    0x42a56  5      
  jmpq .L_42a20                #  42    0x42a5b  5      
  nop                          #  43    0x42a60  1      
  nop                          #  44    0x42a61  1      
.L_42ae0:                      #        0x42a62  0      
  nop                          #  45    0x42a62  1      
  nop                          #  46    0x42a63  1      
  andl $0xffffffe0, %r13d      #  47    0x42a64  7      
  addq %r15, %r13              #  48    0x42a6b  3      
  callq %r13                   #  49    0x42a6e  3      
  movl %ebx, %ebx              #  50    0x42a71  2      
  lock                         #  51    0x42a73  1      
  addl $0x1, (%r15,%rbx,1)     #  52    0x42a74  5      
  jmpq .L_42aa0                #  53    0x42a79  5      
  nop                          #  54    0x42a7e  1      
  nop                          #  55    0x42a7f  1      
                                                        
.size pthread_once, .-pthread_once

