  .text
  .globl d_bare_function_type
  .type d_bare_function_type, @function

#! file-offset 0x521e0
#! rip-offset  0x521e0
#! capacity    544 bytes

# Text                          #  Line  RIP      Bytes  
.d_bare_function_type:          #        0x521e0  0      
  pushq %r14                    #  1     0x521e0  3      
  pushq %r13                    #  2     0x521e3  3      
  pushq %r12                    #  3     0x521e6  3      
  movl %esi, %r12d              #  4     0x521e9  3      
  pushq %rbx                    #  5     0x521ec  2      
  movl %edi, %ebx               #  6     0x521ee  2      
  subl $0x18, %esp              #  7     0x521f0  3      
  addq %r15, %rsp               #  8     0x521f3  3      
  movl %ebx, %ebx               #  9     0x521f6  2      
  movl 0xc(%r15,%rbx,1), %eax   #  10    0x521f8  5      
  movl %eax, %eax               #  11    0x521fd  2      
  cmpb $0x4a, (%r15,%rax,1)     #  12    0x521ff  5      
  je .L_52380                   #  13    0x52204  6      
  nop                           #  14    0x5220a  1      
  nop                           #  15    0x5220b  1      
.L_52220:                       #        0x5220c  0      
  leal 0xc(%rsp), %r14d         #  16    0x5220c  5      
  movl $0x0, 0xc(%rsp)          #  17    0x52211  8      
  xorl %r13d, %r13d             #  18    0x52219  3      
  nop                           #  19    0x5221c  1      
  nop                           #  20    0x5221d  1      
.L_52240:                       #        0x5221e  0      
  movl %eax, %eax               #  21    0x5221e  2      
  movzbl (%r15,%rax,1), %eax    #  22    0x52220  5      
  cmpb $0x45, %al               #  23    0x52225  2      
  je .L_52260                   #  24    0x52227  6      
  testb %al, %al                #  25    0x5222d  2      
  jne .L_522e0                  #  26    0x5222f  6      
  nop                           #  27    0x52235  1      
.L_52260:                       #        0x52236  0      
  movl 0xc(%rsp), %ecx          #  28    0x52236  4      
  testq %rcx, %rcx              #  29    0x5223a  3      
  je .L_522c0                   #  30    0x5223d  6      
  movl %ecx, %ecx               #  31    0x52243  2      
  movl 0x8(%r15,%rcx,1), %eax   #  32    0x52245  5      
  testl %eax, %eax              #  33    0x5224a  2      
  je .L_523a0                   #  34    0x5224c  6      
  nop                           #  35    0x52252  1      
.L_52280:                       #        0x52253  0      
  movl %r13d, %edx              #  36    0x52253  3      
  movl %ebx, %edi               #  37    0x52256  2      
  movl $0x25, %esi              #  38    0x52258  5      
  xchgw %ax, %ax                #  39    0x5225d  3      
  nop                           #  40    0x52260  1      
  callq .d_make_comp            #  41    0x52261  5      
  addl $0x18, %esp              #  42    0x52266  3      
  addq %r15, %rsp               #  43    0x52269  3      
  movl %eax, %eax               #  44    0x5226c  2      
  popq %rbx                     #  45    0x5226e  2      
  popq %r12                     #  46    0x52270  3      
  popq %r13                     #  47    0x52273  3      
  popq %r14                     #  48    0x52276  3      
  popq %r11                     #  49    0x52279  3      
  andl $0xffffffe0, %r11d       #  50    0x5227c  7      
  addq %r15, %r11               #  51    0x52283  3      
  jmpq %r11                     #  52    0x52286  3      
  nop                           #  53    0x52289  1      
.L_522c0:                       #        0x5228a  0      
  addl $0x18, %esp              #  54    0x5228a  3      
  addq %r15, %rsp               #  55    0x5228d  3      
  xorl %eax, %eax               #  56    0x52290  2      
  popq %rbx                     #  57    0x52292  2      
  popq %r12                     #  58    0x52294  3      
  popq %r13                     #  59    0x52297  3      
  popq %r14                     #  60    0x5229a  3      
  popq %r11                     #  61    0x5229d  3      
  andl $0xffffffe0, %r11d       #  62    0x522a0  7      
  addq %r15, %r11               #  63    0x522a7  3      
  jmpq %r11                     #  64    0x522aa  3      
  nop                           #  65    0x522ad  1      
.L_522e0:                       #        0x522ae  0      
  movl %ebx, %edi               #  66    0x522ae  2      
  nop                           #  67    0x522b0  1      
  nop                           #  68    0x522b1  1      
  callq .d_type                 #  69    0x522b2  5      
  movl %eax, %edx               #  70    0x522b7  2      
  testq %rdx, %rdx              #  71    0x522b9  3      
  je .L_522c0                   #  72    0x522bc  6      
  testl %r12d, %r12d            #  73    0x522c2  3      
  je .L_52320                   #  74    0x522c5  6      
  movl %ebx, %ebx               #  75    0x522cb  2      
  movl 0xc(%r15,%rbx,1), %eax   #  76    0x522cd  5      
  xorl %r12d, %r12d             #  77    0x522d2  3      
  movq %rdx, %r13               #  78    0x522d5  3      
  jmpq .L_52240                 #  79    0x522d8  5      
  xchgw %ax, %ax                #  80    0x522dd  3      
.L_52320:                       #        0x522e0  0      
  xorl %ecx, %ecx               #  81    0x522e0  2      
  movl $0x29, %esi              #  82    0x522e2  5      
  movl %ebx, %edi               #  83    0x522e7  2      
  nop                           #  84    0x522e9  1      
  nop                           #  85    0x522ea  1      
  callq .d_make_comp            #  86    0x522eb  5      
  movl %eax, %eax               #  87    0x522f0  2      
  testq %rax, %rax              #  88    0x522f2  3      
  movl %r14d, %r14d             #  89    0x522f5  3      
  movl %eax, (%r15,%r14,1)      #  90    0x522f8  4      
  je .L_522c0                   #  91    0x522fc  6      
  leal 0x8(%rax), %r14d         #  92    0x52302  4      
  movl %ebx, %ebx               #  93    0x52306  2      
  movl 0xc(%r15,%rbx,1), %eax   #  94    0x52308  5      
  nop                           #  95    0x5230d  1      
  jmpq .L_52240                 #  96    0x5230e  5      
  nop                           #  97    0x52313  1      
  nop                           #  98    0x52314  1      
.L_52380:                       #        0x52315  0      
  addl $0x1, %eax               #  99    0x52315  3      
  movl $0x1, %r12d              #  100   0x52318  6      
  movl %ebx, %ebx               #  101   0x5231e  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  102   0x52320  5      
  jmpq .L_52220                 #  103   0x52325  5      
  nop                           #  104   0x5232a  1      
.L_523a0:                       #        0x5232b  0      
  movl %ecx, %ecx               #  105   0x5232b  2      
  movl 0x4(%r15,%rcx,1), %eax   #  106   0x5232d  5      
  movl %eax, %eax               #  107   0x52332  2      
  cmpl $0x23, (%r15,%rax,1)     #  108   0x52334  5      
  jne .L_52280                  #  109   0x52339  6      
  movl %eax, %eax               #  110   0x5233f  2      
  movl 0x4(%r15,%rax,1), %eax   #  111   0x52341  5      
  nop                           #  112   0x52346  1      
  movl %eax, %eax               #  113   0x52347  2      
  cmpl $0x9, 0x10(%r15,%rax,1)  #  114   0x52349  6      
  jne .L_52280                  #  115   0x5234f  6      
  movl %eax, %eax               #  116   0x52355  2      
  movl 0x4(%r15,%rax,1), %eax   #  117   0x52357  5      
  movl $0x0, 0xc(%rsp)          #  118   0x5235c  8      
  xorl %ecx, %ecx               #  119   0x52364  2      
  nop                           #  120   0x52366  1      
  movl %ebx, %ebx               #  121   0x52367  2      
  subl %eax, 0x30(%r15,%rbx,1)  #  122   0x52369  5      
  jmpq .L_52280                 #  123   0x5236e  5      
  nop                           #  124   0x52373  1      
  nop                           #  125   0x52374  1      
                                                         
.size d_bare_function_type, .-d_bare_function_type

