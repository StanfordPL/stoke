  .text
  .globl base_from_object
  .type base_from_object, @function

#! file-offset 0x5e300
#! rip-offset  0x5e300
#! capacity    224 bytes

# Text                         #  Line  RIP      Bytes  
.base_from_object:             #        0x5e300  0      
  subl $0x8, %esp              #  1     0x5e300  3      
  addq %r15, %rsp              #  2     0x5e303  3      
  cmpb $0xff, %dil             #  3     0x5e306  4      
  movl %esi, %esi              #  4     0x5e30a  2      
  je .L_5e360                  #  5     0x5e30c  6      
  andl $0x70, %edi             #  6     0x5e312  3      
  cmpl $0x20, %edi             #  7     0x5e315  3      
  je .L_5e380                  #  8     0x5e318  6      
  jle .L_5e340                 #  9     0x5e31e  6      
  cmpl $0x30, %edi             #  10    0x5e324  3      
  nop                          #  11    0x5e327  1      
  je .L_5e3a0                  #  12    0x5e328  6      
  cmpl $0x50, %edi             #  13    0x5e32e  3      
  je .L_5e360                  #  14    0x5e331  6      
  nop                          #  15    0x5e337  1      
  nop                          #  16    0x5e338  1      
  callq .abort                 #  17    0x5e339  5      
.L_5e340:                      #        0x5e33e  0      
  testl %edi, %edi             #  18    0x5e33e  2      
  jne .L_5e3c0                 #  19    0x5e340  6      
  nop                          #  20    0x5e346  1      
  nop                          #  21    0x5e347  1      
.L_5e360:                      #        0x5e348  0      
  addl $0x8, %esp              #  22    0x5e348  3      
  addq %r15, %rsp              #  23    0x5e34b  3      
  xorl %eax, %eax              #  24    0x5e34e  2      
  popq %r11                    #  25    0x5e350  3      
  andl $0xffffffe0, %r11d      #  26    0x5e353  7      
  addq %r15, %r11              #  27    0x5e35a  3      
  jmpq %r11                    #  28    0x5e35d  3      
  nop                          #  29    0x5e360  1      
.L_5e380:                      #        0x5e361  0      
  movl %esi, %esi              #  30    0x5e361  2      
  movl 0x4(%r15,%rsi,1), %eax  #  31    0x5e363  5      
  addl $0x8, %esp              #  32    0x5e368  3      
  addq %r15, %rsp              #  33    0x5e36b  3      
  popq %r11                    #  34    0x5e36e  3      
  andl $0xffffffe0, %r11d      #  35    0x5e371  7      
  addq %r15, %r11              #  36    0x5e378  3      
  jmpq %r11                    #  37    0x5e37b  3      
  nop                          #  38    0x5e37e  1      
.L_5e3a0:                      #        0x5e37f  0      
  movl %esi, %esi              #  39    0x5e37f  2      
  movl 0x8(%r15,%rsi,1), %eax  #  40    0x5e381  5      
  addl $0x8, %esp              #  41    0x5e386  3      
  addq %r15, %rsp              #  42    0x5e389  3      
  popq %r11                    #  43    0x5e38c  3      
  andl $0xffffffe0, %r11d      #  44    0x5e38f  7      
  addq %r15, %r11              #  45    0x5e396  3      
  jmpq %r11                    #  46    0x5e399  3      
  nop                          #  47    0x5e39c  1      
.L_5e3c0:                      #        0x5e39d  0      
  cmpl $0x10, %edi             #  48    0x5e39d  3      
  je .L_5e360                  #  49    0x5e3a0  6      
  nop                          #  50    0x5e3a6  1      
  nop                          #  51    0x5e3a7  1      
  callq .abort                 #  52    0x5e3a8  5      
                                                        
.size base_from_object, .-base_from_object

