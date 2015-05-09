  .text
  .globl d_print_expr_op
  .type d_print_expr_op, @function

#! file-offset 0x58940
#! rip-offset  0x58940
#! capacity    416 bytes

# Text                            #  Line  RIP      Bytes  
.d_print_expr_op:                 #        0x58940  0      
  movl %esi, %esi                 #  1     0x58940  2      
  movq %rbx, -0x20(%rsp)          #  2     0x58942  5      
  movq %r12, -0x18(%rsp)          #  3     0x58947  5      
  movq %r13, -0x10(%rsp)          #  4     0x5894c  5      
  movq %r14, -0x8(%rsp)           #  5     0x58951  5      
  subl $0x38, %esp                #  6     0x58956  3      
  addq %r15, %rsp                 #  7     0x58959  3      
  nop                             #  8     0x5895c  1      
  movl %esi, %esi                 #  9     0x5895d  2      
  cmpl $0x2b, (%r15,%rsi,1)       #  10    0x5895f  5      
  movl %edi, %ebx                 #  11    0x58964  2      
  je .L_589a0                     #  12    0x58966  6      
  movl %ebx, %edi                 #  13    0x5896c  2      
  movq 0x20(%rsp), %r12           #  14    0x5896e  5      
  movq 0x18(%rsp), %rbx           #  15    0x58973  5      
  movq 0x28(%rsp), %r13           #  16    0x58978  5      
  nop                             #  17    0x5897d  1      
  movq 0x30(%rsp), %r14           #  18    0x5897e  5      
  addl $0x38, %esp                #  19    0x58983  3      
  addq %r15, %rsp                 #  20    0x58986  3      
  jmpq .d_print_comp              #  21    0x58989  5      
  nop                             #  22    0x5898e  1      
  nop                             #  23    0x5898f  1      
.L_589a0:                         #        0x58990  0      
  movl %esi, %esi                 #  24    0x58990  2      
  movl 0x4(%r15,%rsi,1), %edx     #  25    0x58992  5      
  movl %edx, %edx                 #  26    0x58997  2      
  movl 0x8(%r15,%rdx,1), %eax     #  27    0x58999  5      
  movl %edx, %edx                 #  28    0x5899e  2      
  movl 0x4(%r15,%rdx,1), %r13d    #  29    0x589a0  5      
  testl %eax, %eax                #  30    0x589a5  2      
  je .L_58aa0                     #  31    0x589a7  6      
  leal 0x4(%rbx), %ecx            #  32    0x589ad  3      
  movl %ebx, %ebx                 #  33    0x589b0  2      
  movl 0x104(%r15,%rbx,1), %edx   #  34    0x589b2  8      
  xorl %r12d, %r12d               #  35    0x589ba  3      
  movq %rcx, 0x8(%rsp)            #  36    0x589bd  5      
  jmpq .L_58a20                   #  37    0x589c2  5      
  nop                             #  38    0x589c7  1      
.L_589e0:                         #        0x589c8  0      
  movslq %edx, %rdx               #  39    0x589c8  3      
  addl $0x1, %r12d                #  40    0x589cb  4      
  addl $0x1, %r13d                #  41    0x589cf  4      
  leaq (%rbx,%rdx,1), %rdx        #  42    0x589d3  4      
  cmpl %r12d, %eax                #  43    0x589d7  3      
  movl %ebx, %ebx                 #  44    0x589da  2      
  movl %ecx, 0x104(%r15,%rbx,1)   #  45    0x589dc  8      
  nop                             #  46    0x589e4  1      
  movl %ebx, %ebx                 #  47    0x589e5  2      
  movb %r14b, 0x108(%r15,%rbx,1)  #  48    0x589e7  8      
  movl %edx, %edx                 #  49    0x589ef  2      
  movb %r14b, 0x4(%r15,%rdx,1)    #  50    0x589f1  5      
  jbe .L_58aa0                    #  51    0x589f6  6      
  movl %ecx, %edx                 #  52    0x589fc  2      
  nop                             #  53    0x589fe  1      
.L_58a20:                         #        0x589ff  0      
  movl %r13d, %ecx                #  54    0x589ff  3      
  cmpl $0xff, %edx                #  55    0x58a02  3      
  movl %ecx, %ecx                 #  56    0x58a05  2      
  movzbl (%r15,%rcx,1), %r14d     #  57    0x58a07  5      
  leal 0x1(%rdx), %ecx            #  58    0x58a0c  3      
  jne .L_589e0                    #  59    0x58a0f  6      
  movl %ebx, %ebx                 #  60    0x58a15  2      
  movl 0x10c(%r15,%rbx,1), %ecx   #  61    0x58a17  8      
  nop                             #  62    0x58a1f  1      
  movl %ebx, %ebx                 #  63    0x58a20  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  64    0x58a22  9      
  movl %ebx, %ebx                 #  65    0x58a2b  2      
  movl 0x110(%r15,%rbx,1), %edx   #  66    0x58a2d  8      
  movl %eax, (%rsp)               #  67    0x58a35  3      
  nop                             #  68    0x58a38  1      
  movl %ebx, %ebx                 #  69    0x58a39  2      
  movl 0x104(%r15,%rbx,1), %esi   #  70    0x58a3b  8      
  movl 0x8(%rsp), %edi            #  71    0x58a43  4      
  nop                             #  72    0x58a47  1      
  andl $0xffffffe0, %ecx          #  73    0x58a48  6      
  addq %r15, %rcx                 #  74    0x58a4e  3      
  callq %rcx                      #  75    0x58a51  2      
  movl %ebx, %ebx                 #  76    0x58a53  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  77    0x58a55  12     
  movl $0x1, %ecx                 #  78    0x58a61  5      
  xorl %edx, %edx                 #  79    0x58a66  2      
  movl (%rsp), %eax               #  80    0x58a68  3      
  jmpq .L_589e0                   #  81    0x58a6b  5      
  nop                             #  82    0x58a70  1      
.L_58aa0:                         #        0x58a71  0      
  movq 0x18(%rsp), %rbx           #  83    0x58a71  5      
  movq 0x20(%rsp), %r12           #  84    0x58a76  5      
  movq 0x28(%rsp), %r13           #  85    0x58a7b  5      
  movq 0x30(%rsp), %r14           #  86    0x58a80  5      
  addl $0x38, %esp                #  87    0x58a85  3      
  addq %r15, %rsp                 #  88    0x58a88  3      
  popq %r11                       #  89    0x58a8b  3      
  nop                             #  90    0x58a8e  1      
  andl $0xffffffe0, %r11d         #  91    0x58a8f  7      
  addq %r15, %r11                 #  92    0x58a96  3      
  jmpq %r11                       #  93    0x58a99  3      
  nop                             #  94    0x58a9c  1      
  nop                             #  95    0x58a9d  1      
                                                           
.size d_print_expr_op, .-d_print_expr_op

