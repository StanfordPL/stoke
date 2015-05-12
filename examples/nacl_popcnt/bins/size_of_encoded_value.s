  .text
  .globl size_of_encoded_value
  .type size_of_encoded_value, @function

#! file-offset 0x5e200
#! rip-offset  0x5e200
#! capacity    256 bytes

# Text                     #  Line  RIP      Bytes  
.size_of_encoded_value:    #        0x5e200  0      
  subl $0x8, %esp          #  1     0x5e200  3      
  addq %r15, %rsp          #  2     0x5e203  3      
  cmpb $0xff, %dil         #  3     0x5e206  4      
  je .L_5e2e0              #  4     0x5e20a  6      
  andl $0x7, %edi          #  5     0x5e210  3      
  cmpl $0x2, %edi          #  6     0x5e213  3      
  je .L_5e2c0              #  7     0x5e216  6      
  nop                      #  8     0x5e21c  1      
  jle .L_5e260             #  9     0x5e21d  6      
  cmpl $0x3, %edi          #  10    0x5e223  3      
  je .L_5e280              #  11    0x5e226  6      
  cmpl $0x4, %edi          #  12    0x5e22c  3      
  je .L_5e2a0              #  13    0x5e22f  6      
  nop                      #  14    0x5e235  1      
  nop                      #  15    0x5e236  1      
.L_5e240:                  #        0x5e237  0      
  nop                      #  16    0x5e237  1      
  nop                      #  17    0x5e238  1      
  callq .abort             #  18    0x5e239  5      
.L_5e260:                  #        0x5e23e  0      
  testl %edi, %edi         #  19    0x5e23e  2      
  jne .L_5e240             #  20    0x5e240  6      
  nop                      #  21    0x5e246  1      
  nop                      #  22    0x5e247  1      
.L_5e280:                  #        0x5e248  0      
  addl $0x8, %esp          #  23    0x5e248  3      
  addq %r15, %rsp          #  24    0x5e24b  3      
  movl $0x4, %eax          #  25    0x5e24e  5      
  popq %r11                #  26    0x5e253  3      
  andl $0xffffffe0, %r11d  #  27    0x5e256  7      
  addq %r15, %r11          #  28    0x5e25d  3      
  jmpq %r11                #  29    0x5e260  3      
  nop                      #  30    0x5e263  1      
.L_5e2a0:                  #        0x5e264  0      
  addl $0x8, %esp          #  31    0x5e264  3      
  addq %r15, %rsp          #  32    0x5e267  3      
  movl $0x8, %eax          #  33    0x5e26a  5      
  popq %r11                #  34    0x5e26f  3      
  andl $0xffffffe0, %r11d  #  35    0x5e272  7      
  addq %r15, %r11          #  36    0x5e279  3      
  jmpq %r11                #  37    0x5e27c  3      
  nop                      #  38    0x5e27f  1      
.L_5e2c0:                  #        0x5e280  0      
  addl $0x8, %esp          #  39    0x5e280  3      
  addq %r15, %rsp          #  40    0x5e283  3      
  movl $0x2, %eax          #  41    0x5e286  5      
  popq %r11                #  42    0x5e28b  3      
  andl $0xffffffe0, %r11d  #  43    0x5e28e  7      
  addq %r15, %r11          #  44    0x5e295  3      
  jmpq %r11                #  45    0x5e298  3      
  nop                      #  46    0x5e29b  1      
.L_5e2e0:                  #        0x5e29c  0      
  addl $0x8, %esp          #  47    0x5e29c  3      
  addq %r15, %rsp          #  48    0x5e29f  3      
  xorl %eax, %eax          #  49    0x5e2a2  2      
  popq %r11                #  50    0x5e2a4  3      
  andl $0xffffffe0, %r11d  #  51    0x5e2a7  7      
  addq %r15, %r11          #  52    0x5e2ae  3      
  jmpq %r11                #  53    0x5e2b1  3      
  nop                      #  54    0x5e2b4  1      
                                                    
.size size_of_encoded_value, .-size_of_encoded_value

