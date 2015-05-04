  .text
  .globl __copybits
  .type __copybits, @function

#! file-offset 0x7eb60
#! rip-offset  0x7eb60
#! capacity    224 bytes

# Text                          #  Line  RIP      Bytes  
.__copybits:                    #        0x7eb60  0      
  movl %edx, %edx               #  1     0x7eb60  2      
  subl $0x1, %esi               #  2     0x7eb62  3      
  movl %edi, %edi               #  3     0x7eb65  2      
  movl %edx, %edx               #  4     0x7eb67  2      
  movl 0x10(%r15,%rdx,1), %r8d  #  5     0x7eb69  5      
  leal 0x14(%rdx), %r9d         #  6     0x7eb6e  4      
  sarl $0x5, %esi               #  7     0x7eb72  3      
  leal 0x4(%rdi,%rsi,4), %esi   #  8     0x7eb75  4      
  leal 0x14(%rdx,%r8,4), %r8d   #  9     0x7eb79  5      
  xchgw %ax, %ax                #  10    0x7eb7e  3      
  cmpl %r8d, %r9d               #  11    0x7eb81  3      
  jae .L_7ec00                  #  12    0x7eb84  6      
  movq %r9, %rax                #  13    0x7eb8a  3      
  movq %rdi, %rdx               #  14    0x7eb8d  3      
  nop                           #  15    0x7eb90  1      
  nop                           #  16    0x7eb91  1      
.L_7eba0:                       #        0x7eb92  0      
  movl %eax, %eax               #  17    0x7eb92  2      
  movl (%r15,%rax,1), %ecx      #  18    0x7eb94  4      
  addl $0x4, %eax               #  19    0x7eb98  3      
  movl %edx, %edx               #  20    0x7eb9b  2      
  movl %ecx, (%r15,%rdx,1)      #  21    0x7eb9d  4      
  addl $0x4, %edx               #  22    0x7eba1  3      
  cmpl %eax, %r8d               #  23    0x7eba4  3      
  ja .L_7eba0                   #  24    0x7eba7  6      
  notl %r9d                     #  25    0x7ebad  3      
  leal (%r9,%r8,1), %r8d        #  26    0x7ebb0  4      
  xchgw %ax, %ax                #  27    0x7ebb4  3      
  shrl $0x2, %r8d               #  28    0x7ebb7  4      
  leal 0x4(%rdi,%r8,4), %edi    #  29    0x7ebbb  5      
  cmpl %edi, %esi               #  30    0x7ebc0  2      
  jbe .L_7ec20                  #  31    0x7ebc2  6      
  nop                           #  32    0x7ebc8  1      
  nop                           #  33    0x7ebc9  1      
.L_7ebe0:                       #        0x7ebca  0      
  movl %edi, %edi               #  34    0x7ebca  2      
  movl $0x0, (%r15,%rdi,1)      #  35    0x7ebcc  8      
  addl $0x4, %edi               #  36    0x7ebd4  3      
  nop                           #  37    0x7ebd7  1      
  nop                           #  38    0x7ebd8  1      
.L_7ec00:                       #        0x7ebd9  0      
  cmpl %edi, %esi               #  39    0x7ebd9  2      
  ja .L_7ebe0                   #  40    0x7ebdb  6      
  nop                           #  41    0x7ebe1  1      
  nop                           #  42    0x7ebe2  1      
.L_7ec20:                       #        0x7ebe3  0      
  popq %r11                     #  43    0x7ebe3  3      
  andl $0xffffffe0, %r11d       #  44    0x7ebe6  7      
  addq %r15, %r11               #  45    0x7ebed  3      
  jmpq %r11                     #  46    0x7ebf0  3      
  nop                           #  47    0x7ebf3  1      
  nop                           #  48    0x7ebf4  1      
                                                         
.size __copybits, .-__copybits

