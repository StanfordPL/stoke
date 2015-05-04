  .text
  .globl close
  .type close, @function

#! file-offset 0x881c0
#! rip-offset  0x881c0
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.close:                       #        0x881c0  0      
  movl 0xffa833a(%rip), %eax  #  1     0x881c0  6      
  pushq %rbx                  #  2     0x881c6  2      
  xchgw %ax, %ax              #  3     0x881c8  3      
  nop                         #  4     0x881cb  1      
  andl $0xffffffe0, %eax      #  5     0x881cc  5      
  addq %r15, %rax             #  6     0x881d1  3      
  callq %rax                  #  7     0x881d4  2      
  testl %eax, %eax            #  8     0x881d6  2      
  movl %eax, %ebx             #  9     0x881d8  2      
  jne .L_88220                #  10    0x881da  6      
  xorl %eax, %eax             #  11    0x881e0  2      
  nop                         #  12    0x881e2  1      
  nop                         #  13    0x881e3  1      
.L_88200:                     #        0x881e4  0      
  popq %rbx                   #  14    0x881e4  2      
  popq %r11                   #  15    0x881e6  3      
  andl $0xffffffe0, %r11d     #  16    0x881e9  7      
  addq %r15, %r11             #  17    0x881f0  3      
  jmpq %r11                   #  18    0x881f3  3      
  nop                         #  19    0x881f6  1      
  nop                         #  20    0x881f7  1      
.L_88220:                     #        0x881f8  0      
  nop                         #  21    0x881f8  1      
  nop                         #  22    0x881f9  1      
  callq .__errno              #  23    0x881fa  5      
  movl %eax, %eax             #  24    0x881ff  2      
  movl %eax, %eax             #  25    0x88201  2      
  movl %ebx, (%r15,%rax,1)    #  26    0x88203  4      
  movl $0xffffffff, %eax      #  27    0x88207  5      
  jmpq .L_88200               #  28    0x8820c  5      
  nop                         #  29    0x88211  1      
  nop                         #  30    0x88212  1      
  nop                         #  31    0x88213  1      
  nop                         #  32    0x88214  1      
  nop                         #  33    0x88215  1      
  nop                         #  34    0x88216  1      
  nop                         #  35    0x88217  1      
  nop                         #  36    0x88218  1      
  nop                         #  37    0x88219  1      
  nop                         #  38    0x8821a  1      
  nop                         #  39    0x8821b  1      
  nop                         #  40    0x8821c  1      
  nop                         #  41    0x8821d  1      
  nop                         #  42    0x8821e  1      
  nop                         #  43    0x8821f  1      
  nop                         #  44    0x88220  1      
  nop                         #  45    0x88221  1      
                                                       
.size close, .-close

