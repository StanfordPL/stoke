  .text
  .globl calloc
  .type calloc, @function

#! file-offset 0x65dc0
#! rip-offset  0x65dc0
#! capacity    192 bytes

# Text                          #  Line  RIP      Bytes  
.calloc:                        #        0x65dc0  0      
  pushq %r12                    #  1     0x65dc0  3      
  xorl %r12d, %r12d             #  2     0x65dc3  3      
  pushq %rbx                    #  3     0x65dc6  2      
  subl $0x8, %esp               #  4     0x65dc8  3      
  addq %r15, %rsp               #  5     0x65dcb  3      
  testl %edi, %edi              #  6     0x65dce  2      
  je .L_65e00                   #  7     0x65dd0  6      
  movl %esi, %eax               #  8     0x65dd6  2      
  movl %esi, %r12d              #  9     0x65dd8  3      
  orl %edi, %eax                #  10    0x65ddb  2      
  imull %edi, %r12d             #  11    0x65ddd  4      
  testl $0xffff0000, %eax       #  12    0x65de1  5      
  jne .L_65e60                  #  13    0x65de6  6      
  nop                           #  14    0x65dec  1      
  nop                           #  15    0x65ded  1      
.L_65e00:                       #        0x65dee  0      
  movl %r12d, %edi              #  16    0x65dee  3      
  nop                           #  17    0x65df1  1      
  nop                           #  18    0x65df2  1      
  callq .malloc                 #  19    0x65df3  5      
  movl %eax, %ebx               #  20    0x65df8  2      
  testq %rbx, %rbx              #  21    0x65dfa  3      
  je .L_65e40                   #  22    0x65dfd  6      
  leal -0x8(%rbx), %eax         #  23    0x65e03  3      
  movl %eax, %eax               #  24    0x65e06  2      
  testb $0x3, 0x4(%r15,%rax,1)  #  25    0x65e08  6      
  je .L_65e40                   #  26    0x65e0e  6      
  movl %r12d, %edx              #  27    0x65e14  3      
  xorl %esi, %esi               #  28    0x65e17  2      
  movl %ebx, %edi               #  29    0x65e19  2      
  callq .memset                 #  30    0x65e1b  5      
.L_65e40:                       #        0x65e20  0      
  addl $0x8, %esp               #  31    0x65e20  3      
  addq %r15, %rsp               #  32    0x65e23  3      
  movl %ebx, %eax               #  33    0x65e26  2      
  popq %rbx                     #  34    0x65e28  2      
  popq %r12                     #  35    0x65e2a  3      
  popq %r11                     #  36    0x65e2d  3      
  andl $0xffffffe0, %r11d       #  37    0x65e30  7      
  addq %r15, %r11               #  38    0x65e37  3      
  jmpq %r11                     #  39    0x65e3a  3      
  nop                           #  40    0x65e3d  1      
.L_65e60:                       #        0x65e3e  0      
  movl %r12d, %eax              #  41    0x65e3e  3      
  xorl %edx, %edx               #  42    0x65e41  2      
  divl %edi                     #  43    0x65e43  2      
  cmpl %esi, %eax               #  44    0x65e45  2      
  movl $0xffffffff, %eax        #  45    0x65e47  5      
  cmovnel %eax, %r12d           #  46    0x65e4c  4      
  jmpq .L_65e00                 #  47    0x65e50  5      
  nop                           #  48    0x65e55  1      
                                                         
.size calloc, .-calloc

