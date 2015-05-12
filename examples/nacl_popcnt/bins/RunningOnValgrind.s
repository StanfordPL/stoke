  .text
  .globl RunningOnValgrind
  .type RunningOnValgrind, @function

#! file-offset 0x422c0
#! rip-offset  0x422c0
#! capacity    192 bytes

# Text                               #  Line  RIP      Bytes  
.RunningOnValgrind:                  #        0x422c0  0      
  subl $0x8, %esp                    #  1     0x422c0  3      
  addq %r15, %rsp                    #  2     0x422c3  3      
  movl 0xffee220(%rip), %eax         #  3     0x422c6  6      
  cmpl $0xffffffff, %eax             #  4     0x422cc  5      
  je .L_42300                        #  5     0x422d1  6      
  addl $0x8, %esp                    #  6     0x422d7  3      
  addq %r15, %rsp                    #  7     0x422da  3      
  popq %r11                          #  8     0x422dd  3      
  nop                                #  9     0x422e0  1      
  andl $0xffffffe0, %r11d            #  10    0x422e1  7      
  addq %r15, %r11                    #  11    0x422e8  3      
  jmpq %r11                          #  12    0x422eb  3      
  nop                                #  13    0x422ee  1      
  nop                                #  14    0x422ef  1      
.L_42300:                            #        0x422f0  0      
  movl $0x10020950, %edi             #  15    0x422f0  5      
  nop                                #  16    0x422f5  1      
  nop                                #  17    0x422f6  1      
  callq .getenv                      #  18    0x422f7  5      
  movl %eax, %esi                    #  19    0x422fc  2      
  xorl %eax, %eax                    #  20    0x422fe  2      
  testq %rsi, %rsi                   #  21    0x42300  3      
  je .L_42360                        #  22    0x42303  6      
  movl $0x100202fc, %edi             #  23    0x42309  5      
  movl $0x2, %ecx                    #  24    0x4230e  5      
  nop                                #  25    0x42313  1      
  movl %esi, %esi                    #  26    0x42314  2      
  leaq (%r15,%rsi,1), %rsi           #  27    0x42316  4      
  movl %edi, %edi                    #  28    0x4231a  2      
  leaq (%r15,%rdi,1), %rdi           #  29    0x4231c  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  30    0x42320  3      
  movl %esi, %esi                    #  31    0x42323  2      
  movl %edi, %edi                    #  32    0x42325  2      
  setne %al                          #  33    0x42327  3      
  movzbl %al, %eax                   #  34    0x4232a  3      
  nop                                #  35    0x4232d  1      
.L_42360:                            #        0x4232e  0      
  movl %eax, 0xffee1b8(%rip)         #  36    0x4232e  6      
  addl $0x8, %esp                    #  37    0x42334  3      
  addq %r15, %rsp                    #  38    0x42337  3      
  popq %r11                          #  39    0x4233a  3      
  andl $0xffffffe0, %r11d            #  40    0x4233d  7      
  addq %r15, %r11                    #  41    0x42344  3      
  jmpq %r11                          #  42    0x42347  3      
  nop                                #  43    0x4234a  1      
  nop                                #  44    0x4234b  1      
  nop                                #  45    0x4234c  1      
  nop                                #  46    0x4234d  1      
  nop                                #  47    0x4234e  1      
  nop                                #  48    0x4234f  1      
  nop                                #  49    0x42350  1      
  nop                                #  50    0x42351  1      
                                                              
.size RunningOnValgrind, .-RunningOnValgrind

