  .text
  .globl d_make_name
  .type d_make_name, @function

#! file-offset 0x4fb80
#! rip-offset  0x4fb80
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
.d_make_name:                   #        0x4fb80  0      
  movl %edi, %edi               #  1     0x4fb80  2      
  movl %esi, %esi               #  2     0x4fb82  2      
  movl %edi, %edi               #  3     0x4fb84  2      
  movl 0x14(%r15,%rdi,1), %ecx  #  4     0x4fb86  5      
  movl %edi, %edi               #  5     0x4fb8b  2      
  cmpl 0x18(%r15,%rdi,1), %ecx  #  6     0x4fb8d  5      
  jge .L_4fbc0                  #  7     0x4fb92  6      
  leal (%rcx,%rcx,2), %eax      #  8     0x4fb98  3      
  addl $0x1, %ecx               #  9     0x4fb9b  3      
  nop                           #  10    0x4fb9e  1      
  movl %edi, %edi               #  11    0x4fb9f  2      
  movl %ecx, 0x14(%r15,%rdi,1)  #  12    0x4fba1  5      
  shll $0x2, %eax               #  13    0x4fba6  3      
  movl %edi, %edi               #  14    0x4fba9  2      
  addl 0x10(%r15,%rdi,1), %eax  #  15    0x4fbab  5      
  testq %rax, %rax              #  16    0x4fbb0  3      
  jne .L_4fbe0                  #  17    0x4fbb3  6      
  nop                           #  18    0x4fbb9  1      
.L_4fbc0:                       #        0x4fbba  0      
  xorl %eax, %eax               #  19    0x4fbba  2      
  popq %r11                     #  20    0x4fbbc  3      
  andl $0xffffffe0, %r11d       #  21    0x4fbbf  7      
  addq %r15, %r11               #  22    0x4fbc6  3      
  jmpq %r11                     #  23    0x4fbc9  3      
  nop                           #  24    0x4fbcc  1      
  nop                           #  25    0x4fbcd  1      
.L_4fbe0:                       #        0x4fbce  0      
  testq %rsi, %rsi              #  26    0x4fbce  3      
  je .L_4fbc0                   #  27    0x4fbd1  6      
  testl %edx, %edx              #  28    0x4fbd7  2      
  je .L_4fbc0                   #  29    0x4fbd9  6      
  movl %eax, %eax               #  30    0x4fbdf  2      
  movl $0x0, (%r15,%rax,1)      #  31    0x4fbe1  8      
  movl %eax, %eax               #  32    0x4fbe9  2      
  movl %esi, 0x4(%r15,%rax,1)   #  33    0x4fbeb  5      
  nop                           #  34    0x4fbf0  1      
  movl %eax, %eax               #  35    0x4fbf1  2      
  movl %edx, 0x8(%r15,%rax,1)   #  36    0x4fbf3  5      
  popq %r11                     #  37    0x4fbf8  3      
  andl $0xffffffe0, %r11d       #  38    0x4fbfb  7      
  addq %r15, %r11               #  39    0x4fc02  3      
  jmpq %r11                     #  40    0x4fc05  3      
  nop                           #  41    0x4fc08  1      
                                                         
.size d_make_name, .-d_make_name

