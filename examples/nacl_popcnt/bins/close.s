  .text
  .globl close
  .type close, @function

#! file-offset 0x88140
#! rip-offset  0x88140
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.close:                       #        0x88140  0      
  movl 0xffa83ba(%rip), %eax  #  1     0x88140  6      
  pushq %rbx                  #  2     0x88146  2      
  xchgw %ax, %ax              #  3     0x88148  3      
  nop                         #  4     0x8814b  1      
  andl $0xffffffe0, %eax      #  5     0x8814c  5      
  addq %r15, %rax             #  6     0x88151  3      
  callq %rax                  #  7     0x88154  2      
  testl %eax, %eax            #  8     0x88156  2      
  movl %eax, %ebx             #  9     0x88158  2      
  jne .L_881a0                #  10    0x8815a  6      
  xorl %eax, %eax             #  11    0x88160  2      
  nop                         #  12    0x88162  1      
  nop                         #  13    0x88163  1      
.L_88180:                     #        0x88164  0      
  popq %rbx                   #  14    0x88164  2      
  popq %r11                   #  15    0x88166  3      
  andl $0xffffffe0, %r11d     #  16    0x88169  7      
  addq %r15, %r11             #  17    0x88170  3      
  jmpq %r11                   #  18    0x88173  3      
  nop                         #  19    0x88176  1      
  nop                         #  20    0x88177  1      
.L_881a0:                     #        0x88178  0      
  nop                         #  21    0x88178  1      
  nop                         #  22    0x88179  1      
  callq .__errno              #  23    0x8817a  5      
  movl %eax, %eax             #  24    0x8817f  2      
  movl %eax, %eax             #  25    0x88181  2      
  movl %ebx, (%r15,%rax,1)    #  26    0x88183  4      
  movl $0xffffffff, %eax      #  27    0x88187  5      
  jmpq .L_88180               #  28    0x8818c  5      
  nop                         #  29    0x88191  1      
  nop                         #  30    0x88192  1      
  nop                         #  31    0x88193  1      
  nop                         #  32    0x88194  1      
  nop                         #  33    0x88195  1      
  nop                         #  34    0x88196  1      
  nop                         #  35    0x88197  1      
  nop                         #  36    0x88198  1      
  nop                         #  37    0x88199  1      
  nop                         #  38    0x8819a  1      
  nop                         #  39    0x8819b  1      
  nop                         #  40    0x8819c  1      
  nop                         #  41    0x8819d  1      
  nop                         #  42    0x8819e  1      
  nop                         #  43    0x8819f  1      
  nop                         #  44    0x881a0  1      
  nop                         #  45    0x881a1  1      
                                                       
.size close, .-close

