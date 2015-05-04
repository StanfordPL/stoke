  .text
  .globl size_of_encoded_value
  .type size_of_encoded_value, @function

#! file-offset 0x5e280
#! rip-offset  0x5e280
#! capacity    256 bytes

# Text                     #  Line  RIP      Bytes  
.size_of_encoded_value:    #        0x5e280  0      
  subl $0x8, %esp          #  1     0x5e280  3      
  addq %r15, %rsp          #  2     0x5e283  3      
  cmpb $0xff, %dil         #  3     0x5e286  4      
  je .L_5e360              #  4     0x5e28a  6      
  andl $0x7, %edi          #  5     0x5e290  3      
  cmpl $0x2, %edi          #  6     0x5e293  3      
  je .L_5e340              #  7     0x5e296  6      
  nop                      #  8     0x5e29c  1      
  jle .L_5e2e0             #  9     0x5e29d  6      
  cmpl $0x3, %edi          #  10    0x5e2a3  3      
  je .L_5e300              #  11    0x5e2a6  6      
  cmpl $0x4, %edi          #  12    0x5e2ac  3      
  je .L_5e320              #  13    0x5e2af  6      
  nop                      #  14    0x5e2b5  1      
  nop                      #  15    0x5e2b6  1      
.L_5e2c0:                  #        0x5e2b7  0      
  nop                      #  16    0x5e2b7  1      
  nop                      #  17    0x5e2b8  1      
  callq .abort             #  18    0x5e2b9  5      
.L_5e2e0:                  #        0x5e2be  0      
  testl %edi, %edi         #  19    0x5e2be  2      
  jne .L_5e2c0             #  20    0x5e2c0  6      
  nop                      #  21    0x5e2c6  1      
  nop                      #  22    0x5e2c7  1      
.L_5e300:                  #        0x5e2c8  0      
  addl $0x8, %esp          #  23    0x5e2c8  3      
  addq %r15, %rsp          #  24    0x5e2cb  3      
  movl $0x4, %eax          #  25    0x5e2ce  5      
  popq %r11                #  26    0x5e2d3  3      
  andl $0xffffffe0, %r11d  #  27    0x5e2d6  7      
  addq %r15, %r11          #  28    0x5e2dd  3      
  jmpq %r11                #  29    0x5e2e0  3      
  nop                      #  30    0x5e2e3  1      
.L_5e320:                  #        0x5e2e4  0      
  addl $0x8, %esp          #  31    0x5e2e4  3      
  addq %r15, %rsp          #  32    0x5e2e7  3      
  movl $0x8, %eax          #  33    0x5e2ea  5      
  popq %r11                #  34    0x5e2ef  3      
  andl $0xffffffe0, %r11d  #  35    0x5e2f2  7      
  addq %r15, %r11          #  36    0x5e2f9  3      
  jmpq %r11                #  37    0x5e2fc  3      
  nop                      #  38    0x5e2ff  1      
.L_5e340:                  #        0x5e300  0      
  addl $0x8, %esp          #  39    0x5e300  3      
  addq %r15, %rsp          #  40    0x5e303  3      
  movl $0x2, %eax          #  41    0x5e306  5      
  popq %r11                #  42    0x5e30b  3      
  andl $0xffffffe0, %r11d  #  43    0x5e30e  7      
  addq %r15, %r11          #  44    0x5e315  3      
  jmpq %r11                #  45    0x5e318  3      
  nop                      #  46    0x5e31b  1      
.L_5e360:                  #        0x5e31c  0      
  addl $0x8, %esp          #  47    0x5e31c  3      
  addq %r15, %rsp          #  48    0x5e31f  3      
  xorl %eax, %eax          #  49    0x5e322  2      
  popq %r11                #  50    0x5e324  3      
  andl $0xffffffe0, %r11d  #  51    0x5e327  7      
  addq %r15, %r11          #  52    0x5e32e  3      
  jmpq %r11                #  53    0x5e331  3      
  nop                      #  54    0x5e334  1      
                                                    
.size size_of_encoded_value, .-size_of_encoded_value

