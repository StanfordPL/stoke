  .text
  .globl d_make_name
  .type d_make_name, @function

#! file-offset 0x4fb60
#! rip-offset  0x4fb60
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
.d_make_name:                   #        0x4fb60  0      
  movl %edi, %edi               #  1     0x4fb60  2      
  movl %esi, %esi               #  2     0x4fb62  2      
  movl %edi, %edi               #  3     0x4fb64  2      
  movl 0x14(%r15,%rdi,1), %ecx  #  4     0x4fb66  5      
  movl %edi, %edi               #  5     0x4fb6b  2      
  cmpl 0x18(%r15,%rdi,1), %ecx  #  6     0x4fb6d  5      
  jge .L_4fba0                  #  7     0x4fb72  6      
  leal (%rcx,%rcx,2), %eax      #  8     0x4fb78  3      
  addl $0x1, %ecx               #  9     0x4fb7b  3      
  nop                           #  10    0x4fb7e  1      
  movl %edi, %edi               #  11    0x4fb7f  2      
  movl %ecx, 0x14(%r15,%rdi,1)  #  12    0x4fb81  5      
  shll $0x2, %eax               #  13    0x4fb86  3      
  movl %edi, %edi               #  14    0x4fb89  2      
  addl 0x10(%r15,%rdi,1), %eax  #  15    0x4fb8b  5      
  testq %rax, %rax              #  16    0x4fb90  3      
  jne .L_4fbc0                  #  17    0x4fb93  6      
  nop                           #  18    0x4fb99  1      
.L_4fba0:                       #        0x4fb9a  0      
  xorl %eax, %eax               #  19    0x4fb9a  2      
  popq %r11                     #  20    0x4fb9c  3      
  andl $0xffffffe0, %r11d       #  21    0x4fb9f  7      
  addq %r15, %r11               #  22    0x4fba6  3      
  jmpq %r11                     #  23    0x4fba9  3      
  nop                           #  24    0x4fbac  1      
  nop                           #  25    0x4fbad  1      
.L_4fbc0:                       #        0x4fbae  0      
  testq %rsi, %rsi              #  26    0x4fbae  3      
  je .L_4fba0                   #  27    0x4fbb1  6      
  testl %edx, %edx              #  28    0x4fbb7  2      
  je .L_4fba0                   #  29    0x4fbb9  6      
  movl %eax, %eax               #  30    0x4fbbf  2      
  movl $0x0, (%r15,%rax,1)      #  31    0x4fbc1  8      
  movl %eax, %eax               #  32    0x4fbc9  2      
  movl %esi, 0x4(%r15,%rax,1)   #  33    0x4fbcb  5      
  nop                           #  34    0x4fbd0  1      
  movl %eax, %eax               #  35    0x4fbd1  2      
  movl %edx, 0x8(%r15,%rax,1)   #  36    0x4fbd3  5      
  popq %r11                     #  37    0x4fbd8  3      
  andl $0xffffffe0, %r11d       #  38    0x4fbdb  7      
  addq %r15, %r11               #  39    0x4fbe2  3      
  jmpq %r11                     #  40    0x4fbe5  3      
  nop                           #  41    0x4fbe8  1      
                                                         
.size d_make_name, .-d_make_name

