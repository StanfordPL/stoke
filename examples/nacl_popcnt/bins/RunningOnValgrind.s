  .text
  .globl RunningOnValgrind
  .type RunningOnValgrind, @function

#! file-offset 0x422a0
#! rip-offset  0x422a0
#! capacity    192 bytes

# Text                               #  Line  RIP      Bytes  
.RunningOnValgrind:                  #        0x422a0  0      
  subl $0x8, %esp                    #  1     0x422a0  3      
  addq %r15, %rsp                    #  2     0x422a3  3      
  movl 0xffee240(%rip), %eax         #  3     0x422a6  6      
  cmpl $0xffffffff, %eax             #  4     0x422ac  5      
  je .L_422e0                        #  5     0x422b1  6      
  addl $0x8, %esp                    #  6     0x422b7  3      
  addq %r15, %rsp                    #  7     0x422ba  3      
  popq %r11                          #  8     0x422bd  3      
  nop                                #  9     0x422c0  1      
  andl $0xffffffe0, %r11d            #  10    0x422c1  7      
  addq %r15, %r11                    #  11    0x422c8  3      
  jmpq %r11                          #  12    0x422cb  3      
  nop                                #  13    0x422ce  1      
  nop                                #  14    0x422cf  1      
.L_422e0:                            #        0x422d0  0      
  movl $0x10020950, %edi             #  15    0x422d0  5      
  nop                                #  16    0x422d5  1      
  nop                                #  17    0x422d6  1      
  callq .getenv                      #  18    0x422d7  5      
  movl %eax, %esi                    #  19    0x422dc  2      
  xorl %eax, %eax                    #  20    0x422de  2      
  testq %rsi, %rsi                   #  21    0x422e0  3      
  je .L_42340                        #  22    0x422e3  6      
  movl $0x100202fc, %edi             #  23    0x422e9  5      
  movl $0x2, %ecx                    #  24    0x422ee  5      
  nop                                #  25    0x422f3  1      
  movl %esi, %esi                    #  26    0x422f4  2      
  leaq (%r15,%rsi,1), %rsi           #  27    0x422f6  4      
  movl %edi, %edi                    #  28    0x422fa  2      
  leaq (%r15,%rdi,1), %rdi           #  29    0x422fc  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  30    0x42300  3      
  movl %esi, %esi                    #  31    0x42303  2      
  movl %edi, %edi                    #  32    0x42305  2      
  setne %al                          #  33    0x42307  3      
  movzbl %al, %eax                   #  34    0x4230a  3      
  nop                                #  35    0x4230d  1      
.L_42340:                            #        0x4230e  0      
  movl %eax, 0xffee1d8(%rip)         #  36    0x4230e  6      
  addl $0x8, %esp                    #  37    0x42314  3      
  addq %r15, %rsp                    #  38    0x42317  3      
  popq %r11                          #  39    0x4231a  3      
  andl $0xffffffe0, %r11d            #  40    0x4231d  7      
  addq %r15, %r11                    #  41    0x42324  3      
  jmpq %r11                          #  42    0x42327  3      
  nop                                #  43    0x4232a  1      
  nop                                #  44    0x4232b  1      
  nop                                #  45    0x4232c  1      
  nop                                #  46    0x4232d  1      
  nop                                #  47    0x4232e  1      
  nop                                #  48    0x4232f  1      
  nop                                #  49    0x42330  1      
  nop                                #  50    0x42331  1      
                                                              
.size RunningOnValgrind, .-RunningOnValgrind

