  .text
  .globl pthread_getspecific
  .type pthread_getspecific, @function

#! file-offset 0x3fec0
#! rip-offset  0x3fec0
#! capacity    224 bytes

# Text                          #  Line  RIP      Bytes  
.pthread_getspecific:           #        0x3fec0  0      
  subl $0x8, %esp               #  1     0x3fec0  3      
  addq %r15, %rsp               #  2     0x3fec3  3      
  cmpl $0x1ff, %edi             #  3     0x3fec6  6      
  jbe .L_3ff20                  #  4     0x3fecc  6      
  nop                           #  5     0x3fed2  1      
  nop                           #  6     0x3fed3  1      
.L_3fee0:                       #        0x3fed4  0      
  xorl %eax, %eax               #  7     0x3fed4  2      
  nop                           #  8     0x3fed6  1      
  nop                           #  9     0x3fed7  1      
.L_3ff00:                       #        0x3fed8  0      
  addl $0x8, %esp               #  10    0x3fed8  3      
  addq %r15, %rsp               #  11    0x3fedb  3      
  popq %r11                     #  12    0x3fede  3      
  andl $0xffffffe0, %r11d       #  13    0x3fee1  7      
  addq %r15, %r11               #  14    0x3fee8  3      
  jmpq %r11                     #  15    0x3feeb  3      
  nop                           #  16    0x3feee  1      
.L_3ff20:                       #        0x3feef  0      
  movl %edi, (%rsp)             #  17    0x3feef  3      
  nop                           #  18    0x3fef2  1      
  nop                           #  19    0x3fef3  1      
  callq .__nacl_read_tp         #  20    0x3fef4  5      
  movl %eax, %eax               #  21    0x3fef9  2      
  movl -0x4(%r15,%rax,1), %eax  #  22    0x3fefb  5      
  movl (%rsp), %edi             #  23    0x3ff00  3      
  testq %rax, %rax              #  24    0x3ff03  3      
  je .L_3fee0                   #  25    0x3ff06  6      
  shll $0x3, %edi               #  26    0x3ff0c  3      
  movslq %edi, %rdi             #  27    0x3ff0f  3      
  leaq 0x10030da4(%rdi), %rdx   #  28    0x3ff12  7      
  nop                           #  29    0x3ff19  1      
  addq %rdi, %rax               #  30    0x3ff1a  3      
  movl %edx, %edx               #  31    0x3ff1d  2      
  movl (%r15,%rdx,1), %edx      #  32    0x3ff1f  4      
  movl %eax, %eax               #  33    0x3ff23  2      
  cmpl %edx, 0x4(%r15,%rax,1)   #  34    0x3ff25  5      
  jne .L_3fee0                  #  35    0x3ff2a  6      
  movl %eax, %eax               #  36    0x3ff30  2      
  movl (%r15,%rax,1), %eax      #  37    0x3ff32  4      
  nop                           #  38    0x3ff36  1      
  jmpq .L_3ff00                 #  39    0x3ff37  5      
  nop                           #  40    0x3ff3c  1      
  nop                           #  41    0x3ff3d  1      
                                                         
.size pthread_getspecific, .-pthread_getspecific

