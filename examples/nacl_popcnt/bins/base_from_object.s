  .text
  .globl base_from_object
  .type base_from_object, @function

#! file-offset 0x5e380
#! rip-offset  0x5e380
#! capacity    224 bytes

# Text                         #  Line  RIP      Bytes  
.base_from_object:             #        0x5e380  0      
  subl $0x8, %esp              #  1     0x5e380  3      
  addq %r15, %rsp              #  2     0x5e383  3      
  cmpb $0xff, %dil             #  3     0x5e386  4      
  movl %esi, %esi              #  4     0x5e38a  2      
  je .L_5e3e0                  #  5     0x5e38c  6      
  andl $0x70, %edi             #  6     0x5e392  3      
  cmpl $0x20, %edi             #  7     0x5e395  3      
  je .L_5e400                  #  8     0x5e398  6      
  jle .L_5e3c0                 #  9     0x5e39e  6      
  cmpl $0x30, %edi             #  10    0x5e3a4  3      
  nop                          #  11    0x5e3a7  1      
  je .L_5e420                  #  12    0x5e3a8  6      
  cmpl $0x50, %edi             #  13    0x5e3ae  3      
  je .L_5e3e0                  #  14    0x5e3b1  6      
  nop                          #  15    0x5e3b7  1      
  nop                          #  16    0x5e3b8  1      
  callq .abort                 #  17    0x5e3b9  5      
.L_5e3c0:                      #        0x5e3be  0      
  testl %edi, %edi             #  18    0x5e3be  2      
  jne .L_5e440                 #  19    0x5e3c0  6      
  nop                          #  20    0x5e3c6  1      
  nop                          #  21    0x5e3c7  1      
.L_5e3e0:                      #        0x5e3c8  0      
  addl $0x8, %esp              #  22    0x5e3c8  3      
  addq %r15, %rsp              #  23    0x5e3cb  3      
  xorl %eax, %eax              #  24    0x5e3ce  2      
  popq %r11                    #  25    0x5e3d0  3      
  andl $0xffffffe0, %r11d      #  26    0x5e3d3  7      
  addq %r15, %r11              #  27    0x5e3da  3      
  jmpq %r11                    #  28    0x5e3dd  3      
  nop                          #  29    0x5e3e0  1      
.L_5e400:                      #        0x5e3e1  0      
  movl %esi, %esi              #  30    0x5e3e1  2      
  movl 0x4(%r15,%rsi,1), %eax  #  31    0x5e3e3  5      
  addl $0x8, %esp              #  32    0x5e3e8  3      
  addq %r15, %rsp              #  33    0x5e3eb  3      
  popq %r11                    #  34    0x5e3ee  3      
  andl $0xffffffe0, %r11d      #  35    0x5e3f1  7      
  addq %r15, %r11              #  36    0x5e3f8  3      
  jmpq %r11                    #  37    0x5e3fb  3      
  nop                          #  38    0x5e3fe  1      
.L_5e420:                      #        0x5e3ff  0      
  movl %esi, %esi              #  39    0x5e3ff  2      
  movl 0x8(%r15,%rsi,1), %eax  #  40    0x5e401  5      
  addl $0x8, %esp              #  41    0x5e406  3      
  addq %r15, %rsp              #  42    0x5e409  3      
  popq %r11                    #  43    0x5e40c  3      
  andl $0xffffffe0, %r11d      #  44    0x5e40f  7      
  addq %r15, %r11              #  45    0x5e416  3      
  jmpq %r11                    #  46    0x5e419  3      
  nop                          #  47    0x5e41c  1      
.L_5e440:                      #        0x5e41d  0      
  cmpl $0x10, %edi             #  48    0x5e41d  3      
  je .L_5e3e0                  #  49    0x5e420  6      
  nop                          #  50    0x5e426  1      
  nop                          #  51    0x5e427  1      
  callq .abort                 #  52    0x5e428  5      
                                                        
.size base_from_object, .-base_from_object

