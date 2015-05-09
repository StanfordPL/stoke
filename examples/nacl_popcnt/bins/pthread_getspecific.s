  .text
  .globl pthread_getspecific
  .type pthread_getspecific, @function

#! file-offset 0x3fea0
#! rip-offset  0x3fea0
#! capacity    224 bytes

# Text                          #  Line  RIP      Bytes  
.pthread_getspecific:           #        0x3fea0  0      
  subl $0x8, %esp               #  1     0x3fea0  3      
  addq %r15, %rsp               #  2     0x3fea3  3      
  cmpl $0x1ff, %edi             #  3     0x3fea6  6      
  jbe .L_3ff00                  #  4     0x3feac  6      
  nop                           #  5     0x3feb2  1      
  nop                           #  6     0x3feb3  1      
.L_3fec0:                       #        0x3feb4  0      
  xorl %eax, %eax               #  7     0x3feb4  2      
  nop                           #  8     0x3feb6  1      
  nop                           #  9     0x3feb7  1      
.L_3fee0:                       #        0x3feb8  0      
  addl $0x8, %esp               #  10    0x3feb8  3      
  addq %r15, %rsp               #  11    0x3febb  3      
  popq %r11                     #  12    0x3febe  3      
  andl $0xffffffe0, %r11d       #  13    0x3fec1  7      
  addq %r15, %r11               #  14    0x3fec8  3      
  jmpq %r11                     #  15    0x3fecb  3      
  nop                           #  16    0x3fece  1      
.L_3ff00:                       #        0x3fecf  0      
  movl %edi, (%rsp)             #  17    0x3fecf  3      
  nop                           #  18    0x3fed2  1      
  nop                           #  19    0x3fed3  1      
  callq .__nacl_read_tp         #  20    0x3fed4  5      
  movl %eax, %eax               #  21    0x3fed9  2      
  movl -0x4(%r15,%rax,1), %eax  #  22    0x3fedb  5      
  movl (%rsp), %edi             #  23    0x3fee0  3      
  testq %rax, %rax              #  24    0x3fee3  3      
  je .L_3fec0                   #  25    0x3fee6  6      
  shll $0x3, %edi               #  26    0x3feec  3      
  movslq %edi, %rdi             #  27    0x3feef  3      
  leaq 0x10030da4(%rdi), %rdx   #  28    0x3fef2  7      
  nop                           #  29    0x3fef9  1      
  addq %rdi, %rax               #  30    0x3fefa  3      
  movl %edx, %edx               #  31    0x3fefd  2      
  movl (%r15,%rdx,1), %edx      #  32    0x3feff  4      
  movl %eax, %eax               #  33    0x3ff03  2      
  cmpl %edx, 0x4(%r15,%rax,1)   #  34    0x3ff05  5      
  jne .L_3fec0                  #  35    0x3ff0a  6      
  movl %eax, %eax               #  36    0x3ff10  2      
  movl (%r15,%rax,1), %eax      #  37    0x3ff12  4      
  nop                           #  38    0x3ff16  1      
  jmpq .L_3fee0                 #  39    0x3ff17  5      
  nop                           #  40    0x3ff1c  1      
  nop                           #  41    0x3ff1d  1      
                                                         
.size pthread_getspecific, .-pthread_getspecific

