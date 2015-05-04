  .text
  .globl mallopt
  .type mallopt, @function

#! file-offset 0x609c0
#! rip-offset  0x609c0
#! capacity    320 bytes

# Text                        #  Line  RIP      Bytes  
.mallopt:                     #        0x609c0  0      
  subl $0x18, %esp            #  1     0x609c0  3      
  addq %r15, %rsp             #  2     0x609c3  3      
  movl 0xffd5ec4(%rip), %edx  #  3     0x609c6  6      
  testl %edx, %edx            #  4     0x609cc  2      
  je .L_60a60                 #  5     0x609ce  6      
  cmpl $0xfffffffe, %edi      #  6     0x609d4  6      
  je .L_60aa0                 #  7     0x609da  6      
  nop                         #  8     0x609e0  1      
.L_609e0:                     #        0x609e1  0      
  cmpl $0xffffffff, %edi      #  9     0x609e1  6      
  je .L_60ae0                 #  10    0x609e7  6      
  cmpl $0xfffffffd, %edi      #  11    0x609ed  6      
  je .L_60a40                 #  12    0x609f3  6      
  nop                         #  13    0x609f9  1      
  nop                         #  14    0x609fa  1      
.L_60a00:                     #        0x609fb  0      
  xorl %eax, %eax             #  15    0x609fb  2      
  nop                         #  16    0x609fd  1      
  nop                         #  17    0x609fe  1      
.L_60a20:                     #        0x609ff  0      
  addl $0x18, %esp            #  18    0x609ff  3      
  addq %r15, %rsp             #  19    0x60a02  3      
  popq %r11                   #  20    0x60a05  3      
  andl $0xffffffe0, %r11d     #  21    0x60a08  7      
  addq %r15, %r11             #  22    0x60a0f  3      
  jmpq %r11                   #  23    0x60a12  3      
  nop                         #  24    0x60a15  1      
.L_60a40:                     #        0x60a16  0      
  movl %esi, 0xffd5e80(%rip)  #  25    0x60a16  6      
  addl $0x18, %esp            #  26    0x60a1c  3      
  addq %r15, %rsp             #  27    0x60a1f  3      
  movl $0x1, %eax             #  28    0x60a22  5      
  popq %r11                   #  29    0x60a27  3      
  andl $0xffffffe0, %r11d     #  30    0x60a2a  7      
  addq %r15, %r11             #  31    0x60a31  3      
  jmpq %r11                   #  32    0x60a34  3      
  nop                         #  33    0x60a37  1      
.L_60a60:                     #        0x60a38  0      
  movl %esi, (%rsp)           #  34    0x60a38  3      
  movl %edi, 0x8(%rsp)        #  35    0x60a3b  4      
  nop                         #  36    0x60a3f  1      
  nop                         #  37    0x60a40  1      
  callq .init_mparams         #  38    0x60a41  5      
  movl 0x8(%rsp), %edi        #  39    0x60a46  4      
  movl (%rsp), %esi           #  40    0x60a4a  3      
  cmpl $0xfffffffe, %edi      #  41    0x60a4d  6      
  jne .L_609e0                #  42    0x60a53  6      
  nop                         #  43    0x60a59  1      
  nop                         #  44    0x60a5a  1      
.L_60aa0:                     #        0x60a5b  0      
  cmpl 0xffd5e33(%rip), %esi  #  45    0x60a5b  6      
  jb .L_60a00                 #  46    0x60a61  6      
  leal -0x1(%rsi), %eax       #  47    0x60a67  3      
  testl %esi, %eax            #  48    0x60a6a  2      
  jne .L_60a00                #  49    0x60a6c  6      
  movl %esi, 0xffd5e20(%rip)  #  50    0x60a72  6      
  nop                         #  51    0x60a78  1      
  movl $0x1, %eax             #  52    0x60a79  5      
  jmpq .L_60a20               #  53    0x60a7e  5      
  nop                         #  54    0x60a83  1      
  nop                         #  55    0x60a84  1      
.L_60ae0:                     #        0x60a85  0      
  movl %esi, 0xffd5e15(%rip)  #  56    0x60a85  6      
  addl $0x18, %esp            #  57    0x60a8b  3      
  addq %r15, %rsp             #  58    0x60a8e  3      
  movl $0x1, %eax             #  59    0x60a91  5      
  popq %r11                   #  60    0x60a96  3      
  andl $0xffffffe0, %r11d     #  61    0x60a99  7      
  addq %r15, %r11             #  62    0x60aa0  3      
  jmpq %r11                   #  63    0x60aa3  3      
  nop                         #  64    0x60aa6  1      
                                                       
.size mallopt, .-mallopt

