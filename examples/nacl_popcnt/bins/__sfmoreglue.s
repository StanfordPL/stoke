  .text
  .globl __sfmoreglue
  .type __sfmoreglue, @function

#! file-offset 0x7b320
#! rip-offset  0x7b320
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
.__sfmoreglue:                  #        0x7b320  0      
  pushq %r12                    #  1     0x7b320  3      
  movl %esi, %r12d              #  2     0x7b323  3      
  shll $0x7, %esi               #  3     0x7b326  3      
  addl $0x10, %esi              #  4     0x7b329  3      
  movl %edi, %edi               #  5     0x7b32c  2      
  pushq %rbx                    #  6     0x7b32e  2      
  subl $0x8, %esp               #  7     0x7b330  3      
  addq %r15, %rsp               #  8     0x7b333  3      
  nop                           #  9     0x7b336  1      
  callq ._malloc_r              #  10    0x7b337  5      
  movl %eax, %ebx               #  11    0x7b33c  2      
  xorl %eax, %eax               #  12    0x7b33e  2      
  testq %rbx, %rbx              #  13    0x7b340  3      
  je .L_7b3a0                   #  14    0x7b343  6      
  leal 0x10(%rbx), %edi         #  15    0x7b349  3      
  movl %r12d, %edx              #  16    0x7b34c  3      
  movl %ebx, %ebx               #  17    0x7b34f  2      
  movl $0x0, (%r15,%rbx,1)      #  18    0x7b351  8      
  movl %ebx, %ebx               #  19    0x7b359  2      
  movl %r12d, 0x4(%r15,%rbx,1)  #  20    0x7b35b  5      
  shll $0x7, %edx               #  21    0x7b360  3      
  xorl %esi, %esi               #  22    0x7b363  2      
  movl %ebx, %ebx               #  23    0x7b365  2      
  movl %edi, 0x8(%r15,%rbx,1)   #  24    0x7b367  5      
  nop                           #  25    0x7b36c  1      
  callq .memset                 #  26    0x7b36d  5      
  movq %rbx, %rax               #  27    0x7b372  3      
  nop                           #  28    0x7b375  1      
  nop                           #  29    0x7b376  1      
.L_7b3a0:                       #        0x7b377  0      
  addl $0x8, %esp               #  30    0x7b377  3      
  addq %r15, %rsp               #  31    0x7b37a  3      
  popq %rbx                     #  32    0x7b37d  2      
  popq %r12                     #  33    0x7b37f  3      
  popq %r11                     #  34    0x7b382  3      
  andl $0xffffffe0, %r11d       #  35    0x7b385  7      
  addq %r15, %r11               #  36    0x7b38c  3      
  jmpq %r11                     #  37    0x7b38f  3      
  nop                           #  38    0x7b392  1      
                                                         
.size __sfmoreglue, .-__sfmoreglue

