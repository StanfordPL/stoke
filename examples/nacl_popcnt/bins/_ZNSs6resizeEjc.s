  .text
  .globl _ZNSs6resizeEjc
  .type _ZNSs6resizeEjc, @function

#! file-offset 0x494a0
#! rip-offset  0x494a0
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6resizeEjc:                       #        0x494a0  0      
  movl %edi, %edi                       #  1     0x494a0  2      
  subl $0x8, %esp                       #  2     0x494a2  3      
  addq %r15, %rsp                       #  3     0x494a5  3      
  movl %edi, %edi                       #  4     0x494a8  2      
  movl (%r15,%rdi,1), %eax              #  5     0x494aa  4      
  subl $0xc, %eax                       #  6     0x494ae  3      
  cmpl $0x3ffffffc, %esi                #  7     0x494b1  6      
  movl %eax, %eax                       #  8     0x494b7  2      
  movl (%r15,%rax,1), %eax              #  9     0x494b9  4      
  nop                                   #  10    0x494bd  1      
  ja .L_49520                           #  11    0x494be  6      
  cmpl %eax, %esi                       #  12    0x494c4  2      
  ja .L_49500                           #  13    0x494c6  6      
  jb .L_494e0                           #  14    0x494cc  6      
  addl $0x8, %esp                       #  15    0x494d2  3      
  addq %r15, %rsp                       #  16    0x494d5  3      
  popq %r11                             #  17    0x494d8  3      
  andl $0xffffffe0, %r11d               #  18    0x494db  7      
  addq %r15, %r11                       #  19    0x494e2  3      
  jmpq %r11                             #  20    0x494e5  3      
  nop                                   #  21    0x494e8  1      
.L_494e0:                               #        0x494e9  0      
  movl %eax, %edx                       #  22    0x494e9  2      
  xorl %ecx, %ecx                       #  23    0x494eb  2      
  addl $0x8, %esp                       #  24    0x494ed  3      
  addq %r15, %rsp                       #  25    0x494f0  3      
  subl %esi, %edx                       #  26    0x494f3  2      
  jmpq ._ZNSs9_M_mutateEjjj             #  27    0x494f5  5      
  nop                                   #  28    0x494fa  1      
.L_49500:                               #        0x494fb  0      
  movsbl %dl, %edx                      #  29    0x494fb  3      
  subl %eax, %esi                       #  30    0x494fe  2      
  addl $0x8, %esp                       #  31    0x49500  3      
  addq %r15, %rsp                       #  32    0x49503  3      
  jmpq ._ZNSs6appendEjc                 #  33    0x49506  5      
  nop                                   #  34    0x4950b  1      
  nop                                   #  35    0x4950c  1      
.L_49520:                               #        0x4950d  0      
  movl $0x10020a93, %edi                #  36    0x4950d  5      
  nop                                   #  37    0x49512  1      
  nop                                   #  38    0x49513  1      
  callq ._ZSt20__throw_length_errorPKc  #  39    0x49514  5      
                                                                 
.size _ZNSs6resizeEjc, .-_ZNSs6resizeEjc

