  .text
  .globl RunningOnValgrind
  .type RunningOnValgrind, @function

#! file-offset 0x42340
#! rip-offset  0x42340
#! capacity    192 bytes

# Text                               #  Line  RIP      Bytes  
.RunningOnValgrind:                  #        0x42340  0      
  subl $0x8, %esp                    #  1     0x42340  3      
  addq %r15, %rsp                    #  2     0x42343  3      
  movl 0xffee1a0(%rip), %eax         #  3     0x42346  6      
  cmpl $0xffffffff, %eax             #  4     0x4234c  5      
  je .L_42380                        #  5     0x42351  6      
  addl $0x8, %esp                    #  6     0x42357  3      
  addq %r15, %rsp                    #  7     0x4235a  3      
  popq %r11                          #  8     0x4235d  3      
  nop                                #  9     0x42360  1      
  andl $0xffffffe0, %r11d            #  10    0x42361  7      
  addq %r15, %r11                    #  11    0x42368  3      
  jmpq %r11                          #  12    0x4236b  3      
  nop                                #  13    0x4236e  1      
  nop                                #  14    0x4236f  1      
.L_42380:                            #        0x42370  0      
  movl $0x10020950, %edi             #  15    0x42370  5      
  nop                                #  16    0x42375  1      
  nop                                #  17    0x42376  1      
  callq .getenv                      #  18    0x42377  5      
  movl %eax, %esi                    #  19    0x4237c  2      
  xorl %eax, %eax                    #  20    0x4237e  2      
  testq %rsi, %rsi                   #  21    0x42380  3      
  je .L_423e0                        #  22    0x42383  6      
  movl $0x100202fc, %edi             #  23    0x42389  5      
  movl $0x2, %ecx                    #  24    0x4238e  5      
  nop                                #  25    0x42393  1      
  movl %esi, %esi                    #  26    0x42394  2      
  leaq (%r15,%rsi,1), %rsi           #  27    0x42396  4      
  movl %edi, %edi                    #  28    0x4239a  2      
  leaq (%r15,%rdi,1), %rdi           #  29    0x4239c  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  30    0x423a0  3      
  movl %esi, %esi                    #  31    0x423a3  2      
  movl %edi, %edi                    #  32    0x423a5  2      
  setne %al                          #  33    0x423a7  3      
  movzbl %al, %eax                   #  34    0x423aa  3      
  nop                                #  35    0x423ad  1      
.L_423e0:                            #        0x423ae  0      
  movl %eax, 0xffee138(%rip)         #  36    0x423ae  6      
  addl $0x8, %esp                    #  37    0x423b4  3      
  addq %r15, %rsp                    #  38    0x423b7  3      
  popq %r11                          #  39    0x423ba  3      
  andl $0xffffffe0, %r11d            #  40    0x423bd  7      
  addq %r15, %r11                    #  41    0x423c4  3      
  jmpq %r11                          #  42    0x423c7  3      
  nop                                #  43    0x423ca  1      
  nop                                #  44    0x423cb  1      
  nop                                #  45    0x423cc  1      
  nop                                #  46    0x423cd  1      
  nop                                #  47    0x423ce  1      
  nop                                #  48    0x423cf  1      
  nop                                #  49    0x423d0  1      
  nop                                #  50    0x423d1  1      
                                                              
.size RunningOnValgrind, .-RunningOnValgrind

