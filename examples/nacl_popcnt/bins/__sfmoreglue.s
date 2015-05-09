  .text
  .globl __sfmoreglue
  .type __sfmoreglue, @function

#! file-offset 0x7b280
#! rip-offset  0x7b280
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
.__sfmoreglue:                  #        0x7b280  0      
  pushq %r12                    #  1     0x7b280  3      
  movl %esi, %r12d              #  2     0x7b283  3      
  shll $0x7, %esi               #  3     0x7b286  3      
  addl $0x10, %esi              #  4     0x7b289  3      
  movl %edi, %edi               #  5     0x7b28c  2      
  pushq %rbx                    #  6     0x7b28e  2      
  subl $0x8, %esp               #  7     0x7b290  3      
  addq %r15, %rsp               #  8     0x7b293  3      
  nop                           #  9     0x7b296  1      
  callq ._malloc_r              #  10    0x7b297  5      
  movl %eax, %ebx               #  11    0x7b29c  2      
  xorl %eax, %eax               #  12    0x7b29e  2      
  testq %rbx, %rbx              #  13    0x7b2a0  3      
  je .L_7b300                   #  14    0x7b2a3  6      
  leal 0x10(%rbx), %edi         #  15    0x7b2a9  3      
  movl %r12d, %edx              #  16    0x7b2ac  3      
  movl %ebx, %ebx               #  17    0x7b2af  2      
  movl $0x0, (%r15,%rbx,1)      #  18    0x7b2b1  8      
  movl %ebx, %ebx               #  19    0x7b2b9  2      
  movl %r12d, 0x4(%r15,%rbx,1)  #  20    0x7b2bb  5      
  shll $0x7, %edx               #  21    0x7b2c0  3      
  xorl %esi, %esi               #  22    0x7b2c3  2      
  movl %ebx, %ebx               #  23    0x7b2c5  2      
  movl %edi, 0x8(%r15,%rbx,1)   #  24    0x7b2c7  5      
  nop                           #  25    0x7b2cc  1      
  callq .memset                 #  26    0x7b2cd  5      
  movq %rbx, %rax               #  27    0x7b2d2  3      
  nop                           #  28    0x7b2d5  1      
  nop                           #  29    0x7b2d6  1      
.L_7b300:                       #        0x7b2d7  0      
  addl $0x8, %esp               #  30    0x7b2d7  3      
  addq %r15, %rsp               #  31    0x7b2da  3      
  popq %rbx                     #  32    0x7b2dd  2      
  popq %r12                     #  33    0x7b2df  3      
  popq %r11                     #  34    0x7b2e2  3      
  andl $0xffffffe0, %r11d       #  35    0x7b2e5  7      
  addq %r15, %r11               #  36    0x7b2ec  3      
  jmpq %r11                     #  37    0x7b2ef  3      
  nop                           #  38    0x7b2f2  1      
                                                         
.size __sfmoreglue, .-__sfmoreglue

