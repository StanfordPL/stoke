  .text
  .globl close
  .type close, @function

#! file-offset 0x88120
#! rip-offset  0x88120
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.close:                       #        0x88120  0      
  movl 0xffa83da(%rip), %eax  #  1     0x88120  6      
  pushq %rbx                  #  2     0x88126  2      
  xchgw %ax, %ax              #  3     0x88128  3      
  nop                         #  4     0x8812b  1      
  andl $0xffffffe0, %eax      #  5     0x8812c  5      
  addq %r15, %rax             #  6     0x88131  3      
  callq %rax                  #  7     0x88134  2      
  testl %eax, %eax            #  8     0x88136  2      
  movl %eax, %ebx             #  9     0x88138  2      
  jne .L_88180                #  10    0x8813a  6      
  xorl %eax, %eax             #  11    0x88140  2      
  nop                         #  12    0x88142  1      
  nop                         #  13    0x88143  1      
.L_88160:                     #        0x88144  0      
  popq %rbx                   #  14    0x88144  2      
  popq %r11                   #  15    0x88146  3      
  andl $0xffffffe0, %r11d     #  16    0x88149  7      
  addq %r15, %r11             #  17    0x88150  3      
  jmpq %r11                   #  18    0x88153  3      
  nop                         #  19    0x88156  1      
  nop                         #  20    0x88157  1      
.L_88180:                     #        0x88158  0      
  nop                         #  21    0x88158  1      
  nop                         #  22    0x88159  1      
  callq .__errno              #  23    0x8815a  5      
  movl %eax, %eax             #  24    0x8815f  2      
  movl %eax, %eax             #  25    0x88161  2      
  movl %ebx, (%r15,%rax,1)    #  26    0x88163  4      
  movl $0xffffffff, %eax      #  27    0x88167  5      
  jmpq .L_88160               #  28    0x8816c  5      
  nop                         #  29    0x88171  1      
  nop                         #  30    0x88172  1      
  nop                         #  31    0x88173  1      
  nop                         #  32    0x88174  1      
  nop                         #  33    0x88175  1      
  nop                         #  34    0x88176  1      
  nop                         #  35    0x88177  1      
  nop                         #  36    0x88178  1      
  nop                         #  37    0x88179  1      
  nop                         #  38    0x8817a  1      
  nop                         #  39    0x8817b  1      
  nop                         #  40    0x8817c  1      
  nop                         #  41    0x8817d  1      
  nop                         #  42    0x8817e  1      
  nop                         #  43    0x8817f  1      
  nop                         #  44    0x88180  1      
  nop                         #  45    0x88181  1      
                                                       
.size close, .-close

