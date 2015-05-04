  .text
  .globl d_print_expr_op
  .type d_print_expr_op, @function

#! file-offset 0x589e0
#! rip-offset  0x589e0
#! capacity    416 bytes

# Text                            #  Line  RIP      Bytes  
.d_print_expr_op:                 #        0x589e0  0      
  movl %esi, %esi                 #  1     0x589e0  2      
  movq %rbx, -0x20(%rsp)          #  2     0x589e2  5      
  movq %r12, -0x18(%rsp)          #  3     0x589e7  5      
  movq %r13, -0x10(%rsp)          #  4     0x589ec  5      
  movq %r14, -0x8(%rsp)           #  5     0x589f1  5      
  subl $0x38, %esp                #  6     0x589f6  3      
  addq %r15, %rsp                 #  7     0x589f9  3      
  nop                             #  8     0x589fc  1      
  movl %esi, %esi                 #  9     0x589fd  2      
  cmpl $0x2b, (%r15,%rsi,1)       #  10    0x589ff  5      
  movl %edi, %ebx                 #  11    0x58a04  2      
  je .L_58a40                     #  12    0x58a06  6      
  movl %ebx, %edi                 #  13    0x58a0c  2      
  movq 0x20(%rsp), %r12           #  14    0x58a0e  5      
  movq 0x18(%rsp), %rbx           #  15    0x58a13  5      
  movq 0x28(%rsp), %r13           #  16    0x58a18  5      
  nop                             #  17    0x58a1d  1      
  movq 0x30(%rsp), %r14           #  18    0x58a1e  5      
  addl $0x38, %esp                #  19    0x58a23  3      
  addq %r15, %rsp                 #  20    0x58a26  3      
  jmpq .d_print_comp              #  21    0x58a29  5      
  nop                             #  22    0x58a2e  1      
  nop                             #  23    0x58a2f  1      
.L_58a40:                         #        0x58a30  0      
  movl %esi, %esi                 #  24    0x58a30  2      
  movl 0x4(%r15,%rsi,1), %edx     #  25    0x58a32  5      
  movl %edx, %edx                 #  26    0x58a37  2      
  movl 0x8(%r15,%rdx,1), %eax     #  27    0x58a39  5      
  movl %edx, %edx                 #  28    0x58a3e  2      
  movl 0x4(%r15,%rdx,1), %r13d    #  29    0x58a40  5      
  testl %eax, %eax                #  30    0x58a45  2      
  je .L_58b40                     #  31    0x58a47  6      
  leal 0x4(%rbx), %ecx            #  32    0x58a4d  3      
  movl %ebx, %ebx                 #  33    0x58a50  2      
  movl 0x104(%r15,%rbx,1), %edx   #  34    0x58a52  8      
  xorl %r12d, %r12d               #  35    0x58a5a  3      
  movq %rcx, 0x8(%rsp)            #  36    0x58a5d  5      
  jmpq .L_58ac0                   #  37    0x58a62  5      
  nop                             #  38    0x58a67  1      
.L_58a80:                         #        0x58a68  0      
  movslq %edx, %rdx               #  39    0x58a68  3      
  addl $0x1, %r12d                #  40    0x58a6b  4      
  addl $0x1, %r13d                #  41    0x58a6f  4      
  leaq (%rbx,%rdx,1), %rdx        #  42    0x58a73  4      
  cmpl %r12d, %eax                #  43    0x58a77  3      
  movl %ebx, %ebx                 #  44    0x58a7a  2      
  movl %ecx, 0x104(%r15,%rbx,1)   #  45    0x58a7c  8      
  nop                             #  46    0x58a84  1      
  movl %ebx, %ebx                 #  47    0x58a85  2      
  movb %r14b, 0x108(%r15,%rbx,1)  #  48    0x58a87  8      
  movl %edx, %edx                 #  49    0x58a8f  2      
  movb %r14b, 0x4(%r15,%rdx,1)    #  50    0x58a91  5      
  jbe .L_58b40                    #  51    0x58a96  6      
  movl %ecx, %edx                 #  52    0x58a9c  2      
  nop                             #  53    0x58a9e  1      
.L_58ac0:                         #        0x58a9f  0      
  movl %r13d, %ecx                #  54    0x58a9f  3      
  cmpl $0xff, %edx                #  55    0x58aa2  3      
  movl %ecx, %ecx                 #  56    0x58aa5  2      
  movzbl (%r15,%rcx,1), %r14d     #  57    0x58aa7  5      
  leal 0x1(%rdx), %ecx            #  58    0x58aac  3      
  jne .L_58a80                    #  59    0x58aaf  6      
  movl %ebx, %ebx                 #  60    0x58ab5  2      
  movl 0x10c(%r15,%rbx,1), %ecx   #  61    0x58ab7  8      
  nop                             #  62    0x58abf  1      
  movl %ebx, %ebx                 #  63    0x58ac0  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  64    0x58ac2  9      
  movl %ebx, %ebx                 #  65    0x58acb  2      
  movl 0x110(%r15,%rbx,1), %edx   #  66    0x58acd  8      
  movl %eax, (%rsp)               #  67    0x58ad5  3      
  nop                             #  68    0x58ad8  1      
  movl %ebx, %ebx                 #  69    0x58ad9  2      
  movl 0x104(%r15,%rbx,1), %esi   #  70    0x58adb  8      
  movl 0x8(%rsp), %edi            #  71    0x58ae3  4      
  nop                             #  72    0x58ae7  1      
  andl $0xffffffe0, %ecx          #  73    0x58ae8  6      
  addq %r15, %rcx                 #  74    0x58aee  3      
  callq %rcx                      #  75    0x58af1  2      
  movl %ebx, %ebx                 #  76    0x58af3  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  77    0x58af5  12     
  movl $0x1, %ecx                 #  78    0x58b01  5      
  xorl %edx, %edx                 #  79    0x58b06  2      
  movl (%rsp), %eax               #  80    0x58b08  3      
  jmpq .L_58a80                   #  81    0x58b0b  5      
  nop                             #  82    0x58b10  1      
.L_58b40:                         #        0x58b11  0      
  movq 0x18(%rsp), %rbx           #  83    0x58b11  5      
  movq 0x20(%rsp), %r12           #  84    0x58b16  5      
  movq 0x28(%rsp), %r13           #  85    0x58b1b  5      
  movq 0x30(%rsp), %r14           #  86    0x58b20  5      
  addl $0x38, %esp                #  87    0x58b25  3      
  addq %r15, %rsp                 #  88    0x58b28  3      
  popq %r11                       #  89    0x58b2b  3      
  nop                             #  90    0x58b2e  1      
  andl $0xffffffe0, %r11d         #  91    0x58b2f  7      
  addq %r15, %r11                 #  92    0x58b36  3      
  jmpq %r11                       #  93    0x58b39  3      
  nop                             #  94    0x58b3c  1      
  nop                             #  95    0x58b3d  1      
                                                           
.size d_print_expr_op, .-d_print_expr_op

