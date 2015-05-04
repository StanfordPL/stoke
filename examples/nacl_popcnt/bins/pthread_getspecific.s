  .text
  .globl pthread_getspecific
  .type pthread_getspecific, @function

#! file-offset 0x3ff40
#! rip-offset  0x3ff40
#! capacity    224 bytes

# Text                          #  Line  RIP      Bytes  
.pthread_getspecific:           #        0x3ff40  0      
  subl $0x8, %esp               #  1     0x3ff40  3      
  addq %r15, %rsp               #  2     0x3ff43  3      
  cmpl $0x1ff, %edi             #  3     0x3ff46  6      
  jbe .L_3ffa0                  #  4     0x3ff4c  6      
  nop                           #  5     0x3ff52  1      
  nop                           #  6     0x3ff53  1      
.L_3ff60:                       #        0x3ff54  0      
  xorl %eax, %eax               #  7     0x3ff54  2      
  nop                           #  8     0x3ff56  1      
  nop                           #  9     0x3ff57  1      
.L_3ff80:                       #        0x3ff58  0      
  addl $0x8, %esp               #  10    0x3ff58  3      
  addq %r15, %rsp               #  11    0x3ff5b  3      
  popq %r11                     #  12    0x3ff5e  3      
  andl $0xffffffe0, %r11d       #  13    0x3ff61  7      
  addq %r15, %r11               #  14    0x3ff68  3      
  jmpq %r11                     #  15    0x3ff6b  3      
  nop                           #  16    0x3ff6e  1      
.L_3ffa0:                       #        0x3ff6f  0      
  movl %edi, (%rsp)             #  17    0x3ff6f  3      
  nop                           #  18    0x3ff72  1      
  nop                           #  19    0x3ff73  1      
  callq .__nacl_read_tp         #  20    0x3ff74  5      
  movl %eax, %eax               #  21    0x3ff79  2      
  movl -0x4(%r15,%rax,1), %eax  #  22    0x3ff7b  5      
  movl (%rsp), %edi             #  23    0x3ff80  3      
  testq %rax, %rax              #  24    0x3ff83  3      
  je .L_3ff60                   #  25    0x3ff86  6      
  shll $0x3, %edi               #  26    0x3ff8c  3      
  movslq %edi, %rdi             #  27    0x3ff8f  3      
  leaq 0x10030da4(%rdi), %rdx   #  28    0x3ff92  7      
  nop                           #  29    0x3ff99  1      
  addq %rdi, %rax               #  30    0x3ff9a  3      
  movl %edx, %edx               #  31    0x3ff9d  2      
  movl (%r15,%rdx,1), %edx      #  32    0x3ff9f  4      
  movl %eax, %eax               #  33    0x3ffa3  2      
  cmpl %edx, 0x4(%r15,%rax,1)   #  34    0x3ffa5  5      
  jne .L_3ff60                  #  35    0x3ffaa  6      
  movl %eax, %eax               #  36    0x3ffb0  2      
  movl (%r15,%rax,1), %eax      #  37    0x3ffb2  4      
  nop                           #  38    0x3ffb6  1      
  jmpq .L_3ff80                 #  39    0x3ffb7  5      
  nop                           #  40    0x3ffbc  1      
  nop                           #  41    0x3ffbd  1      
                                                         
.size pthread_getspecific, .-pthread_getspecific

