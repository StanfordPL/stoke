  .text
  .globl mallopt
  .type mallopt, @function

#! file-offset 0x60920
#! rip-offset  0x60920
#! capacity    320 bytes

# Text                        #  Line  RIP      Bytes  
.mallopt:                     #        0x60920  0      
  subl $0x18, %esp            #  1     0x60920  3      
  addq %r15, %rsp             #  2     0x60923  3      
  movl 0xffd5f64(%rip), %edx  #  3     0x60926  6      
  testl %edx, %edx            #  4     0x6092c  2      
  je .L_609c0                 #  5     0x6092e  6      
  cmpl $0xfffffffe, %edi      #  6     0x60934  6      
  je .L_60a00                 #  7     0x6093a  6      
  nop                         #  8     0x60940  1      
.L_60940:                     #        0x60941  0      
  cmpl $0xffffffff, %edi      #  9     0x60941  6      
  je .L_60a40                 #  10    0x60947  6      
  cmpl $0xfffffffd, %edi      #  11    0x6094d  6      
  je .L_609a0                 #  12    0x60953  6      
  nop                         #  13    0x60959  1      
  nop                         #  14    0x6095a  1      
.L_60960:                     #        0x6095b  0      
  xorl %eax, %eax             #  15    0x6095b  2      
  nop                         #  16    0x6095d  1      
  nop                         #  17    0x6095e  1      
.L_60980:                     #        0x6095f  0      
  addl $0x18, %esp            #  18    0x6095f  3      
  addq %r15, %rsp             #  19    0x60962  3      
  popq %r11                   #  20    0x60965  3      
  andl $0xffffffe0, %r11d     #  21    0x60968  7      
  addq %r15, %r11             #  22    0x6096f  3      
  jmpq %r11                   #  23    0x60972  3      
  nop                         #  24    0x60975  1      
.L_609a0:                     #        0x60976  0      
  movl %esi, 0xffd5f20(%rip)  #  25    0x60976  6      
  addl $0x18, %esp            #  26    0x6097c  3      
  addq %r15, %rsp             #  27    0x6097f  3      
  movl $0x1, %eax             #  28    0x60982  5      
  popq %r11                   #  29    0x60987  3      
  andl $0xffffffe0, %r11d     #  30    0x6098a  7      
  addq %r15, %r11             #  31    0x60991  3      
  jmpq %r11                   #  32    0x60994  3      
  nop                         #  33    0x60997  1      
.L_609c0:                     #        0x60998  0      
  movl %esi, (%rsp)           #  34    0x60998  3      
  movl %edi, 0x8(%rsp)        #  35    0x6099b  4      
  nop                         #  36    0x6099f  1      
  nop                         #  37    0x609a0  1      
  callq .init_mparams         #  38    0x609a1  5      
  movl 0x8(%rsp), %edi        #  39    0x609a6  4      
  movl (%rsp), %esi           #  40    0x609aa  3      
  cmpl $0xfffffffe, %edi      #  41    0x609ad  6      
  jne .L_60940                #  42    0x609b3  6      
  nop                         #  43    0x609b9  1      
  nop                         #  44    0x609ba  1      
.L_60a00:                     #        0x609bb  0      
  cmpl 0xffd5ed3(%rip), %esi  #  45    0x609bb  6      
  jb .L_60960                 #  46    0x609c1  6      
  leal -0x1(%rsi), %eax       #  47    0x609c7  3      
  testl %esi, %eax            #  48    0x609ca  2      
  jne .L_60960                #  49    0x609cc  6      
  movl %esi, 0xffd5ec0(%rip)  #  50    0x609d2  6      
  nop                         #  51    0x609d8  1      
  movl $0x1, %eax             #  52    0x609d9  5      
  jmpq .L_60980               #  53    0x609de  5      
  nop                         #  54    0x609e3  1      
  nop                         #  55    0x609e4  1      
.L_60a40:                     #        0x609e5  0      
  movl %esi, 0xffd5eb5(%rip)  #  56    0x609e5  6      
  addl $0x18, %esp            #  57    0x609eb  3      
  addq %r15, %rsp             #  58    0x609ee  3      
  movl $0x1, %eax             #  59    0x609f1  5      
  popq %r11                   #  60    0x609f6  3      
  andl $0xffffffe0, %r11d     #  61    0x609f9  7      
  addq %r15, %r11             #  62    0x60a00  3      
  jmpq %r11                   #  63    0x60a03  3      
  nop                         #  64    0x60a06  1      
                                                       
.size mallopt, .-mallopt

