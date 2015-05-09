  .text
  .globl size_of_encoded_value
  .type size_of_encoded_value, @function

#! file-offset 0x5e1e0
#! rip-offset  0x5e1e0
#! capacity    256 bytes

# Text                     #  Line  RIP      Bytes  
.size_of_encoded_value:    #        0x5e1e0  0      
  subl $0x8, %esp          #  1     0x5e1e0  3      
  addq %r15, %rsp          #  2     0x5e1e3  3      
  cmpb $0xff, %dil         #  3     0x5e1e6  4      
  je .L_5e2c0              #  4     0x5e1ea  6      
  andl $0x7, %edi          #  5     0x5e1f0  3      
  cmpl $0x2, %edi          #  6     0x5e1f3  3      
  je .L_5e2a0              #  7     0x5e1f6  6      
  nop                      #  8     0x5e1fc  1      
  jle .L_5e240             #  9     0x5e1fd  6      
  cmpl $0x3, %edi          #  10    0x5e203  3      
  je .L_5e260              #  11    0x5e206  6      
  cmpl $0x4, %edi          #  12    0x5e20c  3      
  je .L_5e280              #  13    0x5e20f  6      
  nop                      #  14    0x5e215  1      
  nop                      #  15    0x5e216  1      
.L_5e220:                  #        0x5e217  0      
  nop                      #  16    0x5e217  1      
  nop                      #  17    0x5e218  1      
  callq .abort             #  18    0x5e219  5      
.L_5e240:                  #        0x5e21e  0      
  testl %edi, %edi         #  19    0x5e21e  2      
  jne .L_5e220             #  20    0x5e220  6      
  nop                      #  21    0x5e226  1      
  nop                      #  22    0x5e227  1      
.L_5e260:                  #        0x5e228  0      
  addl $0x8, %esp          #  23    0x5e228  3      
  addq %r15, %rsp          #  24    0x5e22b  3      
  movl $0x4, %eax          #  25    0x5e22e  5      
  popq %r11                #  26    0x5e233  3      
  andl $0xffffffe0, %r11d  #  27    0x5e236  7      
  addq %r15, %r11          #  28    0x5e23d  3      
  jmpq %r11                #  29    0x5e240  3      
  nop                      #  30    0x5e243  1      
.L_5e280:                  #        0x5e244  0      
  addl $0x8, %esp          #  31    0x5e244  3      
  addq %r15, %rsp          #  32    0x5e247  3      
  movl $0x8, %eax          #  33    0x5e24a  5      
  popq %r11                #  34    0x5e24f  3      
  andl $0xffffffe0, %r11d  #  35    0x5e252  7      
  addq %r15, %r11          #  36    0x5e259  3      
  jmpq %r11                #  37    0x5e25c  3      
  nop                      #  38    0x5e25f  1      
.L_5e2a0:                  #        0x5e260  0      
  addl $0x8, %esp          #  39    0x5e260  3      
  addq %r15, %rsp          #  40    0x5e263  3      
  movl $0x2, %eax          #  41    0x5e266  5      
  popq %r11                #  42    0x5e26b  3      
  andl $0xffffffe0, %r11d  #  43    0x5e26e  7      
  addq %r15, %r11          #  44    0x5e275  3      
  jmpq %r11                #  45    0x5e278  3      
  nop                      #  46    0x5e27b  1      
.L_5e2c0:                  #        0x5e27c  0      
  addl $0x8, %esp          #  47    0x5e27c  3      
  addq %r15, %rsp          #  48    0x5e27f  3      
  xorl %eax, %eax          #  49    0x5e282  2      
  popq %r11                #  50    0x5e284  3      
  andl $0xffffffe0, %r11d  #  51    0x5e287  7      
  addq %r15, %r11          #  52    0x5e28e  3      
  jmpq %r11                #  53    0x5e291  3      
  nop                      #  54    0x5e294  1      
                                                    
.size size_of_encoded_value, .-size_of_encoded_value

