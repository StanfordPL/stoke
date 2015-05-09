  .text
  .globl d_bare_function_type
  .type d_bare_function_type, @function

#! file-offset 0x521c0
#! rip-offset  0x521c0
#! capacity    544 bytes

# Text                          #  Line  RIP      Bytes  
.d_bare_function_type:          #        0x521c0  0      
  pushq %r14                    #  1     0x521c0  3      
  pushq %r13                    #  2     0x521c3  3      
  pushq %r12                    #  3     0x521c6  3      
  movl %esi, %r12d              #  4     0x521c9  3      
  pushq %rbx                    #  5     0x521cc  2      
  movl %edi, %ebx               #  6     0x521ce  2      
  subl $0x18, %esp              #  7     0x521d0  3      
  addq %r15, %rsp               #  8     0x521d3  3      
  movl %ebx, %ebx               #  9     0x521d6  2      
  movl 0xc(%r15,%rbx,1), %eax   #  10    0x521d8  5      
  movl %eax, %eax               #  11    0x521dd  2      
  cmpb $0x4a, (%r15,%rax,1)     #  12    0x521df  5      
  je .L_52360                   #  13    0x521e4  6      
  nop                           #  14    0x521ea  1      
  nop                           #  15    0x521eb  1      
.L_52200:                       #        0x521ec  0      
  leal 0xc(%rsp), %r14d         #  16    0x521ec  5      
  movl $0x0, 0xc(%rsp)          #  17    0x521f1  8      
  xorl %r13d, %r13d             #  18    0x521f9  3      
  nop                           #  19    0x521fc  1      
  nop                           #  20    0x521fd  1      
.L_52220:                       #        0x521fe  0      
  movl %eax, %eax               #  21    0x521fe  2      
  movzbl (%r15,%rax,1), %eax    #  22    0x52200  5      
  cmpb $0x45, %al               #  23    0x52205  2      
  je .L_52240                   #  24    0x52207  6      
  testb %al, %al                #  25    0x5220d  2      
  jne .L_522c0                  #  26    0x5220f  6      
  nop                           #  27    0x52215  1      
.L_52240:                       #        0x52216  0      
  movl 0xc(%rsp), %ecx          #  28    0x52216  4      
  testq %rcx, %rcx              #  29    0x5221a  3      
  je .L_522a0                   #  30    0x5221d  6      
  movl %ecx, %ecx               #  31    0x52223  2      
  movl 0x8(%r15,%rcx,1), %eax   #  32    0x52225  5      
  testl %eax, %eax              #  33    0x5222a  2      
  je .L_52380                   #  34    0x5222c  6      
  nop                           #  35    0x52232  1      
.L_52260:                       #        0x52233  0      
  movl %r13d, %edx              #  36    0x52233  3      
  movl %ebx, %edi               #  37    0x52236  2      
  movl $0x25, %esi              #  38    0x52238  5      
  xchgw %ax, %ax                #  39    0x5223d  3      
  nop                           #  40    0x52240  1      
  callq .d_make_comp            #  41    0x52241  5      
  addl $0x18, %esp              #  42    0x52246  3      
  addq %r15, %rsp               #  43    0x52249  3      
  movl %eax, %eax               #  44    0x5224c  2      
  popq %rbx                     #  45    0x5224e  2      
  popq %r12                     #  46    0x52250  3      
  popq %r13                     #  47    0x52253  3      
  popq %r14                     #  48    0x52256  3      
  popq %r11                     #  49    0x52259  3      
  andl $0xffffffe0, %r11d       #  50    0x5225c  7      
  addq %r15, %r11               #  51    0x52263  3      
  jmpq %r11                     #  52    0x52266  3      
  nop                           #  53    0x52269  1      
.L_522a0:                       #        0x5226a  0      
  addl $0x18, %esp              #  54    0x5226a  3      
  addq %r15, %rsp               #  55    0x5226d  3      
  xorl %eax, %eax               #  56    0x52270  2      
  popq %rbx                     #  57    0x52272  2      
  popq %r12                     #  58    0x52274  3      
  popq %r13                     #  59    0x52277  3      
  popq %r14                     #  60    0x5227a  3      
  popq %r11                     #  61    0x5227d  3      
  andl $0xffffffe0, %r11d       #  62    0x52280  7      
  addq %r15, %r11               #  63    0x52287  3      
  jmpq %r11                     #  64    0x5228a  3      
  nop                           #  65    0x5228d  1      
.L_522c0:                       #        0x5228e  0      
  movl %ebx, %edi               #  66    0x5228e  2      
  nop                           #  67    0x52290  1      
  nop                           #  68    0x52291  1      
  callq .d_type                 #  69    0x52292  5      
  movl %eax, %edx               #  70    0x52297  2      
  testq %rdx, %rdx              #  71    0x52299  3      
  je .L_522a0                   #  72    0x5229c  6      
  testl %r12d, %r12d            #  73    0x522a2  3      
  je .L_52300                   #  74    0x522a5  6      
  movl %ebx, %ebx               #  75    0x522ab  2      
  movl 0xc(%r15,%rbx,1), %eax   #  76    0x522ad  5      
  xorl %r12d, %r12d             #  77    0x522b2  3      
  movq %rdx, %r13               #  78    0x522b5  3      
  jmpq .L_52220                 #  79    0x522b8  5      
  xchgw %ax, %ax                #  80    0x522bd  3      
.L_52300:                       #        0x522c0  0      
  xorl %ecx, %ecx               #  81    0x522c0  2      
  movl $0x29, %esi              #  82    0x522c2  5      
  movl %ebx, %edi               #  83    0x522c7  2      
  nop                           #  84    0x522c9  1      
  nop                           #  85    0x522ca  1      
  callq .d_make_comp            #  86    0x522cb  5      
  movl %eax, %eax               #  87    0x522d0  2      
  testq %rax, %rax              #  88    0x522d2  3      
  movl %r14d, %r14d             #  89    0x522d5  3      
  movl %eax, (%r15,%r14,1)      #  90    0x522d8  4      
  je .L_522a0                   #  91    0x522dc  6      
  leal 0x8(%rax), %r14d         #  92    0x522e2  4      
  movl %ebx, %ebx               #  93    0x522e6  2      
  movl 0xc(%r15,%rbx,1), %eax   #  94    0x522e8  5      
  nop                           #  95    0x522ed  1      
  jmpq .L_52220                 #  96    0x522ee  5      
  nop                           #  97    0x522f3  1      
  nop                           #  98    0x522f4  1      
.L_52360:                       #        0x522f5  0      
  addl $0x1, %eax               #  99    0x522f5  3      
  movl $0x1, %r12d              #  100   0x522f8  6      
  movl %ebx, %ebx               #  101   0x522fe  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  102   0x52300  5      
  jmpq .L_52200                 #  103   0x52305  5      
  nop                           #  104   0x5230a  1      
.L_52380:                       #        0x5230b  0      
  movl %ecx, %ecx               #  105   0x5230b  2      
  movl 0x4(%r15,%rcx,1), %eax   #  106   0x5230d  5      
  movl %eax, %eax               #  107   0x52312  2      
  cmpl $0x23, (%r15,%rax,1)     #  108   0x52314  5      
  jne .L_52260                  #  109   0x52319  6      
  movl %eax, %eax               #  110   0x5231f  2      
  movl 0x4(%r15,%rax,1), %eax   #  111   0x52321  5      
  nop                           #  112   0x52326  1      
  movl %eax, %eax               #  113   0x52327  2      
  cmpl $0x9, 0x10(%r15,%rax,1)  #  114   0x52329  6      
  jne .L_52260                  #  115   0x5232f  6      
  movl %eax, %eax               #  116   0x52335  2      
  movl 0x4(%r15,%rax,1), %eax   #  117   0x52337  5      
  movl $0x0, 0xc(%rsp)          #  118   0x5233c  8      
  xorl %ecx, %ecx               #  119   0x52344  2      
  nop                           #  120   0x52346  1      
  movl %ebx, %ebx               #  121   0x52347  2      
  subl %eax, 0x30(%r15,%rbx,1)  #  122   0x52349  5      
  jmpq .L_52260                 #  123   0x5234e  5      
  nop                           #  124   0x52353  1      
  nop                           #  125   0x52354  1      
                                                         
.size d_bare_function_type, .-d_bare_function_type

