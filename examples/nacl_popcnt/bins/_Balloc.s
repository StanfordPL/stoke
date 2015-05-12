  .text
  .globl _Balloc
  .type _Balloc, @function

#! file-offset 0x7ece0
#! rip-offset  0x7ece0
#! capacity    288 bytes

# Text                          #  Line  RIP      Bytes  
._Balloc:                       #        0x7ece0  0      
  movq %rbx, -0x18(%rsp)        #  1     0x7ece0  5      
  movl %edi, %ebx               #  2     0x7ece5  2      
  movq %r13, -0x8(%rsp)         #  3     0x7ece7  5      
  movq %r12, -0x10(%rsp)        #  4     0x7ecec  5      
  subl $0x18, %esp              #  5     0x7ecf1  3      
  addq %r15, %rsp               #  6     0x7ecf4  3      
  movl %ebx, %ebx               #  7     0x7ecf7  2      
  movl 0x4c(%r15,%rbx,1), %edx  #  8     0x7ecf9  5      
  xchgw %ax, %ax                #  9     0x7ecfe  3      
  movl %esi, %r13d              #  10    0x7ed01  3      
  testq %rdx, %rdx              #  11    0x7ed04  3      
  je .L_7ed80                   #  12    0x7ed07  6      
  nop                           #  13    0x7ed0d  1      
  nop                           #  14    0x7ed0e  1      
.L_7ed20:                       #        0x7ed0f  0      
  leal (%rdx,%r13,4), %edx      #  15    0x7ed0f  4      
  movl %edx, %edx               #  16    0x7ed13  2      
  movl (%r15,%rdx,1), %eax      #  17    0x7ed15  4      
  testq %rax, %rax              #  18    0x7ed19  3      
  je .L_7edc0                   #  19    0x7ed1c  6      
  movl %eax, %eax               #  20    0x7ed22  2      
  movl (%r15,%rax,1), %ecx      #  21    0x7ed24  4      
  movl %edx, %edx               #  22    0x7ed28  2      
  movl %ecx, (%r15,%rdx,1)      #  23    0x7ed2a  4      
  nop                           #  24    0x7ed2e  1      
.L_7ed40:                       #        0x7ed2f  0      
  movl %eax, %eax               #  25    0x7ed2f  2      
  movl $0x0, 0x10(%r15,%rax,1)  #  26    0x7ed31  9      
  movl %eax, %eax               #  27    0x7ed3a  2      
  movl $0x0, 0xc(%r15,%rax,1)   #  28    0x7ed3c  9      
  nop                           #  29    0x7ed45  1      
.L_7ed60:                       #        0x7ed46  0      
  movq (%rsp), %rbx             #  30    0x7ed46  4      
  movq 0x8(%rsp), %r12          #  31    0x7ed4a  5      
  movq 0x10(%rsp), %r13         #  32    0x7ed4f  5      
  addl $0x18, %esp              #  33    0x7ed54  3      
  addq %r15, %rsp               #  34    0x7ed57  3      
  popq %r11                     #  35    0x7ed5a  3      
  andl $0xffffffe0, %r11d       #  36    0x7ed5d  7      
  addq %r15, %r11               #  37    0x7ed64  3      
  jmpq %r11                     #  38    0x7ed67  3      
.L_7ed80:                       #        0x7ed6a  0      
  movb $0x21, %dl               #  39    0x7ed6a  2      
  movl $0x4, %esi               #  40    0x7ed6c  5      
  movl %ebx, %edi               #  41    0x7ed71  2      
  nop                           #  42    0x7ed73  1      
  nop                           #  43    0x7ed74  1      
  callq ._calloc_r              #  44    0x7ed75  5      
  movl %eax, %edx               #  45    0x7ed7a  2      
  xorl %eax, %eax               #  46    0x7ed7c  2      
  testq %rdx, %rdx              #  47    0x7ed7e  3      
  movl %ebx, %ebx               #  48    0x7ed81  2      
  movl %edx, 0x4c(%r15,%rbx,1)  #  49    0x7ed83  5      
  jne .L_7ed20                  #  50    0x7ed88  6      
  jmpq .L_7ed60                 #  51    0x7ed8e  5      
  nop                           #  52    0x7ed93  1      
.L_7edc0:                       #        0x7ed94  0      
  movl %r13d, %ecx              #  53    0x7ed94  3      
  movl $0x1, %r12d              #  54    0x7ed97  6      
  movl $0x1, %esi               #  55    0x7ed9d  5      
  shll %cl, %r12d               #  56    0x7eda2  3      
  movl %ebx, %edi               #  57    0x7eda5  2      
  leal 0x14(,%r12,4), %edx      #  58    0x7eda7  8      
  callq ._calloc_r              #  59    0x7edaf  5      
  movl %eax, %eax               #  60    0x7edb4  2      
  testq %rax, %rax              #  61    0x7edb6  3      
  je .L_7ed60                   #  62    0x7edb9  6      
  movl %eax, %eax               #  63    0x7edbf  2      
  movl %r13d, 0x4(%r15,%rax,1)  #  64    0x7edc1  5      
  movl %eax, %eax               #  65    0x7edc6  2      
  movl %r12d, 0x8(%r15,%rax,1)  #  66    0x7edc8  5      
  jmpq .L_7ed40                 #  67    0x7edcd  5      
  xchgw %ax, %ax                #  68    0x7edd2  3      
                                                         
.size _Balloc, .-_Balloc

