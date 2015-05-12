  .text
  .globl __sfmoreglue
  .type __sfmoreglue, @function

#! file-offset 0x7b2a0
#! rip-offset  0x7b2a0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
.__sfmoreglue:                  #        0x7b2a0  0      
  pushq %r12                    #  1     0x7b2a0  3      
  movl %esi, %r12d              #  2     0x7b2a3  3      
  shll $0x7, %esi               #  3     0x7b2a6  3      
  addl $0x10, %esi              #  4     0x7b2a9  3      
  movl %edi, %edi               #  5     0x7b2ac  2      
  pushq %rbx                    #  6     0x7b2ae  2      
  subl $0x8, %esp               #  7     0x7b2b0  3      
  addq %r15, %rsp               #  8     0x7b2b3  3      
  nop                           #  9     0x7b2b6  1      
  callq ._malloc_r              #  10    0x7b2b7  5      
  movl %eax, %ebx               #  11    0x7b2bc  2      
  xorl %eax, %eax               #  12    0x7b2be  2      
  testq %rbx, %rbx              #  13    0x7b2c0  3      
  je .L_7b320                   #  14    0x7b2c3  6      
  leal 0x10(%rbx), %edi         #  15    0x7b2c9  3      
  movl %r12d, %edx              #  16    0x7b2cc  3      
  movl %ebx, %ebx               #  17    0x7b2cf  2      
  movl $0x0, (%r15,%rbx,1)      #  18    0x7b2d1  8      
  movl %ebx, %ebx               #  19    0x7b2d9  2      
  movl %r12d, 0x4(%r15,%rbx,1)  #  20    0x7b2db  5      
  shll $0x7, %edx               #  21    0x7b2e0  3      
  xorl %esi, %esi               #  22    0x7b2e3  2      
  movl %ebx, %ebx               #  23    0x7b2e5  2      
  movl %edi, 0x8(%r15,%rbx,1)   #  24    0x7b2e7  5      
  nop                           #  25    0x7b2ec  1      
  callq .memset                 #  26    0x7b2ed  5      
  movq %rbx, %rax               #  27    0x7b2f2  3      
  nop                           #  28    0x7b2f5  1      
  nop                           #  29    0x7b2f6  1      
.L_7b320:                       #        0x7b2f7  0      
  addl $0x8, %esp               #  30    0x7b2f7  3      
  addq %r15, %rsp               #  31    0x7b2fa  3      
  popq %rbx                     #  32    0x7b2fd  2      
  popq %r12                     #  33    0x7b2ff  3      
  popq %r11                     #  34    0x7b302  3      
  andl $0xffffffe0, %r11d       #  35    0x7b305  7      
  addq %r15, %r11               #  36    0x7b30c  3      
  jmpq %r11                     #  37    0x7b30f  3      
  nop                           #  38    0x7b312  1      
                                                         
.size __sfmoreglue, .-__sfmoreglue

