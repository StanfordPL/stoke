  .text
  .globl d_bare_function_type
  .type d_bare_function_type, @function

#! file-offset 0x52260
#! rip-offset  0x52260
#! capacity    544 bytes

# Text                          #  Line  RIP      Bytes  
.d_bare_function_type:          #        0x52260  0      
  pushq %r14                    #  1     0x52260  3      
  pushq %r13                    #  2     0x52263  3      
  pushq %r12                    #  3     0x52266  3      
  movl %esi, %r12d              #  4     0x52269  3      
  pushq %rbx                    #  5     0x5226c  2      
  movl %edi, %ebx               #  6     0x5226e  2      
  subl $0x18, %esp              #  7     0x52270  3      
  addq %r15, %rsp               #  8     0x52273  3      
  movl %ebx, %ebx               #  9     0x52276  2      
  movl 0xc(%r15,%rbx,1), %eax   #  10    0x52278  5      
  movl %eax, %eax               #  11    0x5227d  2      
  cmpb $0x4a, (%r15,%rax,1)     #  12    0x5227f  5      
  je .L_52400                   #  13    0x52284  6      
  nop                           #  14    0x5228a  1      
  nop                           #  15    0x5228b  1      
.L_522a0:                       #        0x5228c  0      
  leal 0xc(%rsp), %r14d         #  16    0x5228c  5      
  movl $0x0, 0xc(%rsp)          #  17    0x52291  8      
  xorl %r13d, %r13d             #  18    0x52299  3      
  nop                           #  19    0x5229c  1      
  nop                           #  20    0x5229d  1      
.L_522c0:                       #        0x5229e  0      
  movl %eax, %eax               #  21    0x5229e  2      
  movzbl (%r15,%rax,1), %eax    #  22    0x522a0  5      
  cmpb $0x45, %al               #  23    0x522a5  2      
  je .L_522e0                   #  24    0x522a7  6      
  testb %al, %al                #  25    0x522ad  2      
  jne .L_52360                  #  26    0x522af  6      
  nop                           #  27    0x522b5  1      
.L_522e0:                       #        0x522b6  0      
  movl 0xc(%rsp), %ecx          #  28    0x522b6  4      
  testq %rcx, %rcx              #  29    0x522ba  3      
  je .L_52340                   #  30    0x522bd  6      
  movl %ecx, %ecx               #  31    0x522c3  2      
  movl 0x8(%r15,%rcx,1), %eax   #  32    0x522c5  5      
  testl %eax, %eax              #  33    0x522ca  2      
  je .L_52420                   #  34    0x522cc  6      
  nop                           #  35    0x522d2  1      
.L_52300:                       #        0x522d3  0      
  movl %r13d, %edx              #  36    0x522d3  3      
  movl %ebx, %edi               #  37    0x522d6  2      
  movl $0x25, %esi              #  38    0x522d8  5      
  xchgw %ax, %ax                #  39    0x522dd  3      
  nop                           #  40    0x522e0  1      
  callq .d_make_comp            #  41    0x522e1  5      
  addl $0x18, %esp              #  42    0x522e6  3      
  addq %r15, %rsp               #  43    0x522e9  3      
  movl %eax, %eax               #  44    0x522ec  2      
  popq %rbx                     #  45    0x522ee  2      
  popq %r12                     #  46    0x522f0  3      
  popq %r13                     #  47    0x522f3  3      
  popq %r14                     #  48    0x522f6  3      
  popq %r11                     #  49    0x522f9  3      
  andl $0xffffffe0, %r11d       #  50    0x522fc  7      
  addq %r15, %r11               #  51    0x52303  3      
  jmpq %r11                     #  52    0x52306  3      
  nop                           #  53    0x52309  1      
.L_52340:                       #        0x5230a  0      
  addl $0x18, %esp              #  54    0x5230a  3      
  addq %r15, %rsp               #  55    0x5230d  3      
  xorl %eax, %eax               #  56    0x52310  2      
  popq %rbx                     #  57    0x52312  2      
  popq %r12                     #  58    0x52314  3      
  popq %r13                     #  59    0x52317  3      
  popq %r14                     #  60    0x5231a  3      
  popq %r11                     #  61    0x5231d  3      
  andl $0xffffffe0, %r11d       #  62    0x52320  7      
  addq %r15, %r11               #  63    0x52327  3      
  jmpq %r11                     #  64    0x5232a  3      
  nop                           #  65    0x5232d  1      
.L_52360:                       #        0x5232e  0      
  movl %ebx, %edi               #  66    0x5232e  2      
  nop                           #  67    0x52330  1      
  nop                           #  68    0x52331  1      
  callq .d_type                 #  69    0x52332  5      
  movl %eax, %edx               #  70    0x52337  2      
  testq %rdx, %rdx              #  71    0x52339  3      
  je .L_52340                   #  72    0x5233c  6      
  testl %r12d, %r12d            #  73    0x52342  3      
  je .L_523a0                   #  74    0x52345  6      
  movl %ebx, %ebx               #  75    0x5234b  2      
  movl 0xc(%r15,%rbx,1), %eax   #  76    0x5234d  5      
  xorl %r12d, %r12d             #  77    0x52352  3      
  movq %rdx, %r13               #  78    0x52355  3      
  jmpq .L_522c0                 #  79    0x52358  5      
  xchgw %ax, %ax                #  80    0x5235d  3      
.L_523a0:                       #        0x52360  0      
  xorl %ecx, %ecx               #  81    0x52360  2      
  movl $0x29, %esi              #  82    0x52362  5      
  movl %ebx, %edi               #  83    0x52367  2      
  nop                           #  84    0x52369  1      
  nop                           #  85    0x5236a  1      
  callq .d_make_comp            #  86    0x5236b  5      
  movl %eax, %eax               #  87    0x52370  2      
  testq %rax, %rax              #  88    0x52372  3      
  movl %r14d, %r14d             #  89    0x52375  3      
  movl %eax, (%r15,%r14,1)      #  90    0x52378  4      
  je .L_52340                   #  91    0x5237c  6      
  leal 0x8(%rax), %r14d         #  92    0x52382  4      
  movl %ebx, %ebx               #  93    0x52386  2      
  movl 0xc(%r15,%rbx,1), %eax   #  94    0x52388  5      
  nop                           #  95    0x5238d  1      
  jmpq .L_522c0                 #  96    0x5238e  5      
  nop                           #  97    0x52393  1      
  nop                           #  98    0x52394  1      
.L_52400:                       #        0x52395  0      
  addl $0x1, %eax               #  99    0x52395  3      
  movl $0x1, %r12d              #  100   0x52398  6      
  movl %ebx, %ebx               #  101   0x5239e  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  102   0x523a0  5      
  jmpq .L_522a0                 #  103   0x523a5  5      
  nop                           #  104   0x523aa  1      
.L_52420:                       #        0x523ab  0      
  movl %ecx, %ecx               #  105   0x523ab  2      
  movl 0x4(%r15,%rcx,1), %eax   #  106   0x523ad  5      
  movl %eax, %eax               #  107   0x523b2  2      
  cmpl $0x23, (%r15,%rax,1)     #  108   0x523b4  5      
  jne .L_52300                  #  109   0x523b9  6      
  movl %eax, %eax               #  110   0x523bf  2      
  movl 0x4(%r15,%rax,1), %eax   #  111   0x523c1  5      
  nop                           #  112   0x523c6  1      
  movl %eax, %eax               #  113   0x523c7  2      
  cmpl $0x9, 0x10(%r15,%rax,1)  #  114   0x523c9  6      
  jne .L_52300                  #  115   0x523cf  6      
  movl %eax, %eax               #  116   0x523d5  2      
  movl 0x4(%r15,%rax,1), %eax   #  117   0x523d7  5      
  movl $0x0, 0xc(%rsp)          #  118   0x523dc  8      
  xorl %ecx, %ecx               #  119   0x523e4  2      
  nop                           #  120   0x523e6  1      
  movl %ebx, %ebx               #  121   0x523e7  2      
  subl %eax, 0x30(%r15,%rbx,1)  #  122   0x523e9  5      
  jmpq .L_52300                 #  123   0x523ee  5      
  nop                           #  124   0x523f3  1      
  nop                           #  125   0x523f4  1      
                                                         
.size d_bare_function_type, .-d_bare_function_type

