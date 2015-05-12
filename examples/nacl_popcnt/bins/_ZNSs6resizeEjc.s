  .text
  .globl _ZNSs6resizeEjc
  .type _ZNSs6resizeEjc, @function

#! file-offset 0x494c0
#! rip-offset  0x494c0
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6resizeEjc:                       #        0x494c0  0      
  movl %edi, %edi                       #  1     0x494c0  2      
  subl $0x8, %esp                       #  2     0x494c2  3      
  addq %r15, %rsp                       #  3     0x494c5  3      
  movl %edi, %edi                       #  4     0x494c8  2      
  movl (%r15,%rdi,1), %eax              #  5     0x494ca  4      
  subl $0xc, %eax                       #  6     0x494ce  3      
  cmpl $0x3ffffffc, %esi                #  7     0x494d1  6      
  movl %eax, %eax                       #  8     0x494d7  2      
  movl (%r15,%rax,1), %eax              #  9     0x494d9  4      
  nop                                   #  10    0x494dd  1      
  ja .L_49540                           #  11    0x494de  6      
  cmpl %eax, %esi                       #  12    0x494e4  2      
  ja .L_49520                           #  13    0x494e6  6      
  jb .L_49500                           #  14    0x494ec  6      
  addl $0x8, %esp                       #  15    0x494f2  3      
  addq %r15, %rsp                       #  16    0x494f5  3      
  popq %r11                             #  17    0x494f8  3      
  andl $0xffffffe0, %r11d               #  18    0x494fb  7      
  addq %r15, %r11                       #  19    0x49502  3      
  jmpq %r11                             #  20    0x49505  3      
  nop                                   #  21    0x49508  1      
.L_49500:                               #        0x49509  0      
  movl %eax, %edx                       #  22    0x49509  2      
  xorl %ecx, %ecx                       #  23    0x4950b  2      
  addl $0x8, %esp                       #  24    0x4950d  3      
  addq %r15, %rsp                       #  25    0x49510  3      
  subl %esi, %edx                       #  26    0x49513  2      
  jmpq ._ZNSs9_M_mutateEjjj             #  27    0x49515  5      
  nop                                   #  28    0x4951a  1      
.L_49520:                               #        0x4951b  0      
  movsbl %dl, %edx                      #  29    0x4951b  3      
  subl %eax, %esi                       #  30    0x4951e  2      
  addl $0x8, %esp                       #  31    0x49520  3      
  addq %r15, %rsp                       #  32    0x49523  3      
  jmpq ._ZNSs6appendEjc                 #  33    0x49526  5      
  nop                                   #  34    0x4952b  1      
  nop                                   #  35    0x4952c  1      
.L_49540:                               #        0x4952d  0      
  movl $0x10020a93, %edi                #  36    0x4952d  5      
  nop                                   #  37    0x49532  1      
  nop                                   #  38    0x49533  1      
  callq ._ZSt20__throw_length_errorPKc  #  39    0x49534  5      
                                                                 
.size _ZNSs6resizeEjc, .-_ZNSs6resizeEjc

