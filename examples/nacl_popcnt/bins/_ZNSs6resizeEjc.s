  .text
  .globl _ZNSs6resizeEjc
  .type _ZNSs6resizeEjc, @function

#! file-offset 0x49540
#! rip-offset  0x49540
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6resizeEjc:                       #        0x49540  0      
  movl %edi, %edi                       #  1     0x49540  2      
  subl $0x8, %esp                       #  2     0x49542  3      
  addq %r15, %rsp                       #  3     0x49545  3      
  movl %edi, %edi                       #  4     0x49548  2      
  movl (%r15,%rdi,1), %eax              #  5     0x4954a  4      
  subl $0xc, %eax                       #  6     0x4954e  3      
  cmpl $0x3ffffffc, %esi                #  7     0x49551  6      
  movl %eax, %eax                       #  8     0x49557  2      
  movl (%r15,%rax,1), %eax              #  9     0x49559  4      
  nop                                   #  10    0x4955d  1      
  ja .L_495c0                           #  11    0x4955e  6      
  cmpl %eax, %esi                       #  12    0x49564  2      
  ja .L_495a0                           #  13    0x49566  6      
  jb .L_49580                           #  14    0x4956c  6      
  addl $0x8, %esp                       #  15    0x49572  3      
  addq %r15, %rsp                       #  16    0x49575  3      
  popq %r11                             #  17    0x49578  3      
  andl $0xffffffe0, %r11d               #  18    0x4957b  7      
  addq %r15, %r11                       #  19    0x49582  3      
  jmpq %r11                             #  20    0x49585  3      
  nop                                   #  21    0x49588  1      
.L_49580:                               #        0x49589  0      
  movl %eax, %edx                       #  22    0x49589  2      
  xorl %ecx, %ecx                       #  23    0x4958b  2      
  addl $0x8, %esp                       #  24    0x4958d  3      
  addq %r15, %rsp                       #  25    0x49590  3      
  subl %esi, %edx                       #  26    0x49593  2      
  jmpq ._ZNSs9_M_mutateEjjj             #  27    0x49595  5      
  nop                                   #  28    0x4959a  1      
.L_495a0:                               #        0x4959b  0      
  movsbl %dl, %edx                      #  29    0x4959b  3      
  subl %eax, %esi                       #  30    0x4959e  2      
  addl $0x8, %esp                       #  31    0x495a0  3      
  addq %r15, %rsp                       #  32    0x495a3  3      
  jmpq ._ZNSs6appendEjc                 #  33    0x495a6  5      
  nop                                   #  34    0x495ab  1      
  nop                                   #  35    0x495ac  1      
.L_495c0:                               #        0x495ad  0      
  movl $0x10020a93, %edi                #  36    0x495ad  5      
  nop                                   #  37    0x495b2  1      
  nop                                   #  38    0x495b3  1      
  callq ._ZSt20__throw_length_errorPKc  #  39    0x495b4  5      
                                                                 
.size _ZNSs6resizeEjc, .-_ZNSs6resizeEjc

