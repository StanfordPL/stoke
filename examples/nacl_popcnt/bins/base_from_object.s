  .text
  .globl base_from_object
  .type base_from_object, @function

#! file-offset 0x5e2e0
#! rip-offset  0x5e2e0
#! capacity    224 bytes

# Text                         #  Line  RIP      Bytes  
.base_from_object:             #        0x5e2e0  0      
  subl $0x8, %esp              #  1     0x5e2e0  3      
  addq %r15, %rsp              #  2     0x5e2e3  3      
  cmpb $0xff, %dil             #  3     0x5e2e6  4      
  movl %esi, %esi              #  4     0x5e2ea  2      
  je .L_5e340                  #  5     0x5e2ec  6      
  andl $0x70, %edi             #  6     0x5e2f2  3      
  cmpl $0x20, %edi             #  7     0x5e2f5  3      
  je .L_5e360                  #  8     0x5e2f8  6      
  jle .L_5e320                 #  9     0x5e2fe  6      
  cmpl $0x30, %edi             #  10    0x5e304  3      
  nop                          #  11    0x5e307  1      
  je .L_5e380                  #  12    0x5e308  6      
  cmpl $0x50, %edi             #  13    0x5e30e  3      
  je .L_5e340                  #  14    0x5e311  6      
  nop                          #  15    0x5e317  1      
  nop                          #  16    0x5e318  1      
  callq .abort                 #  17    0x5e319  5      
.L_5e320:                      #        0x5e31e  0      
  testl %edi, %edi             #  18    0x5e31e  2      
  jne .L_5e3a0                 #  19    0x5e320  6      
  nop                          #  20    0x5e326  1      
  nop                          #  21    0x5e327  1      
.L_5e340:                      #        0x5e328  0      
  addl $0x8, %esp              #  22    0x5e328  3      
  addq %r15, %rsp              #  23    0x5e32b  3      
  xorl %eax, %eax              #  24    0x5e32e  2      
  popq %r11                    #  25    0x5e330  3      
  andl $0xffffffe0, %r11d      #  26    0x5e333  7      
  addq %r15, %r11              #  27    0x5e33a  3      
  jmpq %r11                    #  28    0x5e33d  3      
  nop                          #  29    0x5e340  1      
.L_5e360:                      #        0x5e341  0      
  movl %esi, %esi              #  30    0x5e341  2      
  movl 0x4(%r15,%rsi,1), %eax  #  31    0x5e343  5      
  addl $0x8, %esp              #  32    0x5e348  3      
  addq %r15, %rsp              #  33    0x5e34b  3      
  popq %r11                    #  34    0x5e34e  3      
  andl $0xffffffe0, %r11d      #  35    0x5e351  7      
  addq %r15, %r11              #  36    0x5e358  3      
  jmpq %r11                    #  37    0x5e35b  3      
  nop                          #  38    0x5e35e  1      
.L_5e380:                      #        0x5e35f  0      
  movl %esi, %esi              #  39    0x5e35f  2      
  movl 0x8(%r15,%rsi,1), %eax  #  40    0x5e361  5      
  addl $0x8, %esp              #  41    0x5e366  3      
  addq %r15, %rsp              #  42    0x5e369  3      
  popq %r11                    #  43    0x5e36c  3      
  andl $0xffffffe0, %r11d      #  44    0x5e36f  7      
  addq %r15, %r11              #  45    0x5e376  3      
  jmpq %r11                    #  46    0x5e379  3      
  nop                          #  47    0x5e37c  1      
.L_5e3a0:                      #        0x5e37d  0      
  cmpl $0x10, %edi             #  48    0x5e37d  3      
  je .L_5e340                  #  49    0x5e380  6      
  nop                          #  50    0x5e386  1      
  nop                          #  51    0x5e387  1      
  callq .abort                 #  52    0x5e388  5      
                                                        
.size base_from_object, .-base_from_object

