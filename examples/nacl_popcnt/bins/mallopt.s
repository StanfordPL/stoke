  .text
  .globl mallopt
  .type mallopt, @function

#! file-offset 0x60940
#! rip-offset  0x60940
#! capacity    320 bytes

# Text                        #  Line  RIP      Bytes  
.mallopt:                     #        0x60940  0      
  subl $0x18, %esp            #  1     0x60940  3      
  addq %r15, %rsp             #  2     0x60943  3      
  movl 0xffd5f44(%rip), %edx  #  3     0x60946  6      
  testl %edx, %edx            #  4     0x6094c  2      
  je .L_609e0                 #  5     0x6094e  6      
  cmpl $0xfffffffe, %edi      #  6     0x60954  6      
  je .L_60a20                 #  7     0x6095a  6      
  nop                         #  8     0x60960  1      
.L_60960:                     #        0x60961  0      
  cmpl $0xffffffff, %edi      #  9     0x60961  6      
  je .L_60a60                 #  10    0x60967  6      
  cmpl $0xfffffffd, %edi      #  11    0x6096d  6      
  je .L_609c0                 #  12    0x60973  6      
  nop                         #  13    0x60979  1      
  nop                         #  14    0x6097a  1      
.L_60980:                     #        0x6097b  0      
  xorl %eax, %eax             #  15    0x6097b  2      
  nop                         #  16    0x6097d  1      
  nop                         #  17    0x6097e  1      
.L_609a0:                     #        0x6097f  0      
  addl $0x18, %esp            #  18    0x6097f  3      
  addq %r15, %rsp             #  19    0x60982  3      
  popq %r11                   #  20    0x60985  3      
  andl $0xffffffe0, %r11d     #  21    0x60988  7      
  addq %r15, %r11             #  22    0x6098f  3      
  jmpq %r11                   #  23    0x60992  3      
  nop                         #  24    0x60995  1      
.L_609c0:                     #        0x60996  0      
  movl %esi, 0xffd5f00(%rip)  #  25    0x60996  6      
  addl $0x18, %esp            #  26    0x6099c  3      
  addq %r15, %rsp             #  27    0x6099f  3      
  movl $0x1, %eax             #  28    0x609a2  5      
  popq %r11                   #  29    0x609a7  3      
  andl $0xffffffe0, %r11d     #  30    0x609aa  7      
  addq %r15, %r11             #  31    0x609b1  3      
  jmpq %r11                   #  32    0x609b4  3      
  nop                         #  33    0x609b7  1      
.L_609e0:                     #        0x609b8  0      
  movl %esi, (%rsp)           #  34    0x609b8  3      
  movl %edi, 0x8(%rsp)        #  35    0x609bb  4      
  nop                         #  36    0x609bf  1      
  nop                         #  37    0x609c0  1      
  callq .init_mparams         #  38    0x609c1  5      
  movl 0x8(%rsp), %edi        #  39    0x609c6  4      
  movl (%rsp), %esi           #  40    0x609ca  3      
  cmpl $0xfffffffe, %edi      #  41    0x609cd  6      
  jne .L_60960                #  42    0x609d3  6      
  nop                         #  43    0x609d9  1      
  nop                         #  44    0x609da  1      
.L_60a20:                     #        0x609db  0      
  cmpl 0xffd5eb3(%rip), %esi  #  45    0x609db  6      
  jb .L_60980                 #  46    0x609e1  6      
  leal -0x1(%rsi), %eax       #  47    0x609e7  3      
  testl %esi, %eax            #  48    0x609ea  2      
  jne .L_60980                #  49    0x609ec  6      
  movl %esi, 0xffd5ea0(%rip)  #  50    0x609f2  6      
  nop                         #  51    0x609f8  1      
  movl $0x1, %eax             #  52    0x609f9  5      
  jmpq .L_609a0               #  53    0x609fe  5      
  nop                         #  54    0x60a03  1      
  nop                         #  55    0x60a04  1      
.L_60a60:                     #        0x60a05  0      
  movl %esi, 0xffd5e95(%rip)  #  56    0x60a05  6      
  addl $0x18, %esp            #  57    0x60a0b  3      
  addq %r15, %rsp             #  58    0x60a0e  3      
  movl $0x1, %eax             #  59    0x60a11  5      
  popq %r11                   #  60    0x60a16  3      
  andl $0xffffffe0, %r11d     #  61    0x60a19  7      
  addq %r15, %r11             #  62    0x60a20  3      
  jmpq %r11                   #  63    0x60a23  3      
  nop                         #  64    0x60a26  1      
                                                       
.size mallopt, .-mallopt

