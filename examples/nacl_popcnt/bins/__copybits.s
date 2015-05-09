  .text
  .globl __copybits
  .type __copybits, @function

#! file-offset 0x7eac0
#! rip-offset  0x7eac0
#! capacity    224 bytes

# Text                          #  Line  RIP      Bytes  
.__copybits:                    #        0x7eac0  0      
  movl %edx, %edx               #  1     0x7eac0  2      
  subl $0x1, %esi               #  2     0x7eac2  3      
  movl %edi, %edi               #  3     0x7eac5  2      
  movl %edx, %edx               #  4     0x7eac7  2      
  movl 0x10(%r15,%rdx,1), %r8d  #  5     0x7eac9  5      
  leal 0x14(%rdx), %r9d         #  6     0x7eace  4      
  sarl $0x5, %esi               #  7     0x7ead2  3      
  leal 0x4(%rdi,%rsi,4), %esi   #  8     0x7ead5  4      
  leal 0x14(%rdx,%r8,4), %r8d   #  9     0x7ead9  5      
  xchgw %ax, %ax                #  10    0x7eade  3      
  cmpl %r8d, %r9d               #  11    0x7eae1  3      
  jae .L_7eb60                  #  12    0x7eae4  6      
  movq %r9, %rax                #  13    0x7eaea  3      
  movq %rdi, %rdx               #  14    0x7eaed  3      
  nop                           #  15    0x7eaf0  1      
  nop                           #  16    0x7eaf1  1      
.L_7eb00:                       #        0x7eaf2  0      
  movl %eax, %eax               #  17    0x7eaf2  2      
  movl (%r15,%rax,1), %ecx      #  18    0x7eaf4  4      
  addl $0x4, %eax               #  19    0x7eaf8  3      
  movl %edx, %edx               #  20    0x7eafb  2      
  movl %ecx, (%r15,%rdx,1)      #  21    0x7eafd  4      
  addl $0x4, %edx               #  22    0x7eb01  3      
  cmpl %eax, %r8d               #  23    0x7eb04  3      
  ja .L_7eb00                   #  24    0x7eb07  6      
  notl %r9d                     #  25    0x7eb0d  3      
  leal (%r9,%r8,1), %r8d        #  26    0x7eb10  4      
  xchgw %ax, %ax                #  27    0x7eb14  3      
  shrl $0x2, %r8d               #  28    0x7eb17  4      
  leal 0x4(%rdi,%r8,4), %edi    #  29    0x7eb1b  5      
  cmpl %edi, %esi               #  30    0x7eb20  2      
  jbe .L_7eb80                  #  31    0x7eb22  6      
  nop                           #  32    0x7eb28  1      
  nop                           #  33    0x7eb29  1      
.L_7eb40:                       #        0x7eb2a  0      
  movl %edi, %edi               #  34    0x7eb2a  2      
  movl $0x0, (%r15,%rdi,1)      #  35    0x7eb2c  8      
  addl $0x4, %edi               #  36    0x7eb34  3      
  nop                           #  37    0x7eb37  1      
  nop                           #  38    0x7eb38  1      
.L_7eb60:                       #        0x7eb39  0      
  cmpl %edi, %esi               #  39    0x7eb39  2      
  ja .L_7eb40                   #  40    0x7eb3b  6      
  nop                           #  41    0x7eb41  1      
  nop                           #  42    0x7eb42  1      
.L_7eb80:                       #        0x7eb43  0      
  popq %r11                     #  43    0x7eb43  3      
  andl $0xffffffe0, %r11d       #  44    0x7eb46  7      
  addq %r15, %r11               #  45    0x7eb4d  3      
  jmpq %r11                     #  46    0x7eb50  3      
  nop                           #  47    0x7eb53  1      
  nop                           #  48    0x7eb54  1      
                                                         
.size __copybits, .-__copybits

