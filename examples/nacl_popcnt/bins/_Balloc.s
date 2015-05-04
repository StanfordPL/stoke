  .text
  .globl _Balloc
  .type _Balloc, @function

#! file-offset 0x7ed60
#! rip-offset  0x7ed60
#! capacity    288 bytes

# Text                          #  Line  RIP      Bytes  
._Balloc:                       #        0x7ed60  0      
  movq %rbx, -0x18(%rsp)        #  1     0x7ed60  5      
  movl %edi, %ebx               #  2     0x7ed65  2      
  movq %r13, -0x8(%rsp)         #  3     0x7ed67  5      
  movq %r12, -0x10(%rsp)        #  4     0x7ed6c  5      
  subl $0x18, %esp              #  5     0x7ed71  3      
  addq %r15, %rsp               #  6     0x7ed74  3      
  movl %ebx, %ebx               #  7     0x7ed77  2      
  movl 0x4c(%r15,%rbx,1), %edx  #  8     0x7ed79  5      
  xchgw %ax, %ax                #  9     0x7ed7e  3      
  movl %esi, %r13d              #  10    0x7ed81  3      
  testq %rdx, %rdx              #  11    0x7ed84  3      
  je .L_7ee00                   #  12    0x7ed87  6      
  nop                           #  13    0x7ed8d  1      
  nop                           #  14    0x7ed8e  1      
.L_7eda0:                       #        0x7ed8f  0      
  leal (%rdx,%r13,4), %edx      #  15    0x7ed8f  4      
  movl %edx, %edx               #  16    0x7ed93  2      
  movl (%r15,%rdx,1), %eax      #  17    0x7ed95  4      
  testq %rax, %rax              #  18    0x7ed99  3      
  je .L_7ee40                   #  19    0x7ed9c  6      
  movl %eax, %eax               #  20    0x7eda2  2      
  movl (%r15,%rax,1), %ecx      #  21    0x7eda4  4      
  movl %edx, %edx               #  22    0x7eda8  2      
  movl %ecx, (%r15,%rdx,1)      #  23    0x7edaa  4      
  nop                           #  24    0x7edae  1      
.L_7edc0:                       #        0x7edaf  0      
  movl %eax, %eax               #  25    0x7edaf  2      
  movl $0x0, 0x10(%r15,%rax,1)  #  26    0x7edb1  9      
  movl %eax, %eax               #  27    0x7edba  2      
  movl $0x0, 0xc(%r15,%rax,1)   #  28    0x7edbc  9      
  nop                           #  29    0x7edc5  1      
.L_7ede0:                       #        0x7edc6  0      
  movq (%rsp), %rbx             #  30    0x7edc6  4      
  movq 0x8(%rsp), %r12          #  31    0x7edca  5      
  movq 0x10(%rsp), %r13         #  32    0x7edcf  5      
  addl $0x18, %esp              #  33    0x7edd4  3      
  addq %r15, %rsp               #  34    0x7edd7  3      
  popq %r11                     #  35    0x7edda  3      
  andl $0xffffffe0, %r11d       #  36    0x7eddd  7      
  addq %r15, %r11               #  37    0x7ede4  3      
  jmpq %r11                     #  38    0x7ede7  3      
.L_7ee00:                       #        0x7edea  0      
  movb $0x21, %dl               #  39    0x7edea  2      
  movl $0x4, %esi               #  40    0x7edec  5      
  movl %ebx, %edi               #  41    0x7edf1  2      
  nop                           #  42    0x7edf3  1      
  nop                           #  43    0x7edf4  1      
  callq ._calloc_r              #  44    0x7edf5  5      
  movl %eax, %edx               #  45    0x7edfa  2      
  xorl %eax, %eax               #  46    0x7edfc  2      
  testq %rdx, %rdx              #  47    0x7edfe  3      
  movl %ebx, %ebx               #  48    0x7ee01  2      
  movl %edx, 0x4c(%r15,%rbx,1)  #  49    0x7ee03  5      
  jne .L_7eda0                  #  50    0x7ee08  6      
  jmpq .L_7ede0                 #  51    0x7ee0e  5      
  nop                           #  52    0x7ee13  1      
.L_7ee40:                       #        0x7ee14  0      
  movl %r13d, %ecx              #  53    0x7ee14  3      
  movl $0x1, %r12d              #  54    0x7ee17  6      
  movl $0x1, %esi               #  55    0x7ee1d  5      
  shll %cl, %r12d               #  56    0x7ee22  3      
  movl %ebx, %edi               #  57    0x7ee25  2      
  leal 0x14(,%r12,4), %edx      #  58    0x7ee27  8      
  callq ._calloc_r              #  59    0x7ee2f  5      
  movl %eax, %eax               #  60    0x7ee34  2      
  testq %rax, %rax              #  61    0x7ee36  3      
  je .L_7ede0                   #  62    0x7ee39  6      
  movl %eax, %eax               #  63    0x7ee3f  2      
  movl %r13d, 0x4(%r15,%rax,1)  #  64    0x7ee41  5      
  movl %eax, %eax               #  65    0x7ee46  2      
  movl %r12d, 0x8(%r15,%rax,1)  #  66    0x7ee48  5      
  jmpq .L_7edc0                 #  67    0x7ee4d  5      
  xchgw %ax, %ax                #  68    0x7ee52  3      
                                                         
.size _Balloc, .-_Balloc

