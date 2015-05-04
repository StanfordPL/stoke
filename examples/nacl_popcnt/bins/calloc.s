  .text
  .globl calloc
  .type calloc, @function

#! file-offset 0x65e40
#! rip-offset  0x65e40
#! capacity    192 bytes

# Text                          #  Line  RIP      Bytes  
.calloc:                        #        0x65e40  0      
  pushq %r12                    #  1     0x65e40  3      
  xorl %r12d, %r12d             #  2     0x65e43  3      
  pushq %rbx                    #  3     0x65e46  2      
  subl $0x8, %esp               #  4     0x65e48  3      
  addq %r15, %rsp               #  5     0x65e4b  3      
  testl %edi, %edi              #  6     0x65e4e  2      
  je .L_65e80                   #  7     0x65e50  6      
  movl %esi, %eax               #  8     0x65e56  2      
  movl %esi, %r12d              #  9     0x65e58  3      
  orl %edi, %eax                #  10    0x65e5b  2      
  imull %edi, %r12d             #  11    0x65e5d  4      
  testl $0xffff0000, %eax       #  12    0x65e61  5      
  jne .L_65ee0                  #  13    0x65e66  6      
  nop                           #  14    0x65e6c  1      
  nop                           #  15    0x65e6d  1      
.L_65e80:                       #        0x65e6e  0      
  movl %r12d, %edi              #  16    0x65e6e  3      
  nop                           #  17    0x65e71  1      
  nop                           #  18    0x65e72  1      
  callq .malloc                 #  19    0x65e73  5      
  movl %eax, %ebx               #  20    0x65e78  2      
  testq %rbx, %rbx              #  21    0x65e7a  3      
  je .L_65ec0                   #  22    0x65e7d  6      
  leal -0x8(%rbx), %eax         #  23    0x65e83  3      
  movl %eax, %eax               #  24    0x65e86  2      
  testb $0x3, 0x4(%r15,%rax,1)  #  25    0x65e88  6      
  je .L_65ec0                   #  26    0x65e8e  6      
  movl %r12d, %edx              #  27    0x65e94  3      
  xorl %esi, %esi               #  28    0x65e97  2      
  movl %ebx, %edi               #  29    0x65e99  2      
  callq .memset                 #  30    0x65e9b  5      
.L_65ec0:                       #        0x65ea0  0      
  addl $0x8, %esp               #  31    0x65ea0  3      
  addq %r15, %rsp               #  32    0x65ea3  3      
  movl %ebx, %eax               #  33    0x65ea6  2      
  popq %rbx                     #  34    0x65ea8  2      
  popq %r12                     #  35    0x65eaa  3      
  popq %r11                     #  36    0x65ead  3      
  andl $0xffffffe0, %r11d       #  37    0x65eb0  7      
  addq %r15, %r11               #  38    0x65eb7  3      
  jmpq %r11                     #  39    0x65eba  3      
  nop                           #  40    0x65ebd  1      
.L_65ee0:                       #        0x65ebe  0      
  movl %r12d, %eax              #  41    0x65ebe  3      
  xorl %edx, %edx               #  42    0x65ec1  2      
  divl %edi                     #  43    0x65ec3  2      
  cmpl %esi, %eax               #  44    0x65ec5  2      
  movl $0xffffffff, %eax        #  45    0x65ec7  5      
  cmovnel %eax, %r12d           #  46    0x65ecc  4      
  jmpq .L_65e80                 #  47    0x65ed0  5      
  nop                           #  48    0x65ed5  1      
                                                         
.size calloc, .-calloc

