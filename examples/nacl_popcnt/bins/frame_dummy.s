  .text
  .globl frame_dummy
  .type frame_dummy, @function

#! file-offset 0x20160
#! rip-offset  0x20160
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  
.frame_dummy:                   #        0x20160  0      
  pushq %rbp                    #  1     0x20160  2      
  movl $0x5dee0, %eax           #  2     0x20162  5      
  testl %eax, %eax              #  3     0x20167  2      
  movq %rsp, %rbp               #  4     0x20169  3      
  je .L_20180                   #  5     0x2016c  6      
  movl $0x10030bf0, %esi        #  6     0x20172  5      
  movl $0x10027230, %edi        #  7     0x20177  5      
  nop                           #  8     0x2017c  1      
  callq .__register_frame_info  #  9     0x2017d  5      
.L_20180:                       #        0x20182  0      
  movl 0x1001030c(%rip), %eax   #  10    0x20182  6      
  testl %eax, %eax              #  11    0x20188  2      
  je .L_201c0                   #  12    0x2018a  6      
  movl $0x0, %eax               #  13    0x20190  5      
  movl %eax, %eax               #  14    0x20195  2      
  testq %rax, %rax              #  15    0x20197  3      
  je .L_201c0                   #  16    0x2019a  6      
  popq %r11                     #  17    0x201a0  3      
  movl %r11d, %ebp              #  18    0x201a3  3      
  addq %r15, %rbp               #  19    0x201a6  3      
  xchgw %ax, %ax                #  20    0x201a9  3      
  movl $0x10030494, %edi        #  21    0x201ac  5      
  andl $0xffffffe0, %eax        #  22    0x201b1  5      
  addq %r15, %rax               #  23    0x201b6  3      
  jmpq %rax                     #  24    0x201b9  2      
  nop                           #  25    0x201bb  1      
  nop                           #  26    0x201bc  1      
.L_201c0:                       #        0x201bd  0      
  popq %r11                     #  27    0x201bd  3      
  movl %r11d, %ebp              #  28    0x201c0  3      
  addq %r15, %rbp               #  29    0x201c3  3      
  popq %r11                     #  30    0x201c6  3      
  andl $0xffffffe0, %r11d       #  31    0x201c9  7      
  addq %r15, %r11               #  32    0x201d0  3      
  jmpq %r11                     #  33    0x201d3  3      
  nop                           #  34    0x201d6  1      
  nop                           #  35    0x201d7  1      
  nop                           #  36    0x201d8  1      
  nop                           #  37    0x201d9  1      
  nop                           #  38    0x201da  1      
  nop                           #  39    0x201db  1      
  nop                           #  40    0x201dc  1      
  nop                           #  41    0x201dd  1      
  nop                           #  42    0x201de  1      
  nop                           #  43    0x201df  1      
  nop                           #  44    0x201e0  1      
  nop                           #  45    0x201e1  1      
                                                         
.size frame_dummy, .-frame_dummy

