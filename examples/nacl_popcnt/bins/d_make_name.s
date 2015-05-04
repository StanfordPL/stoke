  .text
  .globl d_make_name
  .type d_make_name, @function

#! file-offset 0x4fc00
#! rip-offset  0x4fc00
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
.d_make_name:                   #        0x4fc00  0      
  movl %edi, %edi               #  1     0x4fc00  2      
  movl %esi, %esi               #  2     0x4fc02  2      
  movl %edi, %edi               #  3     0x4fc04  2      
  movl 0x14(%r15,%rdi,1), %ecx  #  4     0x4fc06  5      
  movl %edi, %edi               #  5     0x4fc0b  2      
  cmpl 0x18(%r15,%rdi,1), %ecx  #  6     0x4fc0d  5      
  jge .L_4fc40                  #  7     0x4fc12  6      
  leal (%rcx,%rcx,2), %eax      #  8     0x4fc18  3      
  addl $0x1, %ecx               #  9     0x4fc1b  3      
  nop                           #  10    0x4fc1e  1      
  movl %edi, %edi               #  11    0x4fc1f  2      
  movl %ecx, 0x14(%r15,%rdi,1)  #  12    0x4fc21  5      
  shll $0x2, %eax               #  13    0x4fc26  3      
  movl %edi, %edi               #  14    0x4fc29  2      
  addl 0x10(%r15,%rdi,1), %eax  #  15    0x4fc2b  5      
  testq %rax, %rax              #  16    0x4fc30  3      
  jne .L_4fc60                  #  17    0x4fc33  6      
  nop                           #  18    0x4fc39  1      
.L_4fc40:                       #        0x4fc3a  0      
  xorl %eax, %eax               #  19    0x4fc3a  2      
  popq %r11                     #  20    0x4fc3c  3      
  andl $0xffffffe0, %r11d       #  21    0x4fc3f  7      
  addq %r15, %r11               #  22    0x4fc46  3      
  jmpq %r11                     #  23    0x4fc49  3      
  nop                           #  24    0x4fc4c  1      
  nop                           #  25    0x4fc4d  1      
.L_4fc60:                       #        0x4fc4e  0      
  testq %rsi, %rsi              #  26    0x4fc4e  3      
  je .L_4fc40                   #  27    0x4fc51  6      
  testl %edx, %edx              #  28    0x4fc57  2      
  je .L_4fc40                   #  29    0x4fc59  6      
  movl %eax, %eax               #  30    0x4fc5f  2      
  movl $0x0, (%r15,%rax,1)      #  31    0x4fc61  8      
  movl %eax, %eax               #  32    0x4fc69  2      
  movl %esi, 0x4(%r15,%rax,1)   #  33    0x4fc6b  5      
  nop                           #  34    0x4fc70  1      
  movl %eax, %eax               #  35    0x4fc71  2      
  movl %edx, 0x8(%r15,%rax,1)   #  36    0x4fc73  5      
  popq %r11                     #  37    0x4fc78  3      
  andl $0xffffffe0, %r11d       #  38    0x4fc7b  7      
  addq %r15, %r11               #  39    0x4fc82  3      
  jmpq %r11                     #  40    0x4fc85  3      
  nop                           #  41    0x4fc88  1      
                                                         
.size d_make_name, .-d_make_name

