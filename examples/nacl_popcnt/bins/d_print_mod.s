  .text
  .globl d_print_mod
  .type d_print_mod, @function

#! file-offset 0x58400
#! rip-offset  0x58400
#! capacity    704 bytes

# Text                                #  Line  RIP      Bytes  
.d_print_mod:                         #        0x58400  0      
  movq %rbx, -0x10(%rsp)              #  1     0x58400  5      
  movl %esi, %ebx                     #  2     0x58405  2      
  movq %r12, -0x8(%rsp)               #  3     0x58407  5      
  subl $0x18, %esp                    #  4     0x5840c  3      
  addq %r15, %rsp                     #  5     0x5840f  3      
  movl %ebx, %ebx                     #  6     0x58412  2      
  movl (%r15,%rbx,1), %eax            #  7     0x58414  4      
  movl %edi, %r12d                    #  8     0x58418  3      
  subl $0x3, %eax                     #  9     0x5841b  3      
  xchgw %ax, %ax                      #  10    0x5841e  3      
  cmpl $0x24, %eax                    #  11    0x58421  3      
  jbe .L_58480                        #  12    0x58424  6      
  nop                                 #  13    0x5842a  1      
  nop                                 #  14    0x5842b  1      
  movl %ebx, %esi                     #  15    0x5842c  2      
  nop                                 #  16    0x5842e  1      
  nop                                 #  17    0x5842f  1      
.L_58460:                             #        0x58430  0      
  movl %r12d, %edi                    #  18    0x58430  3      
  movq 0x8(%rsp), %rbx                #  19    0x58433  5      
  movq 0x10(%rsp), %r12               #  20    0x58438  5      
  addl $0x18, %esp                    #  21    0x5843d  3      
  addq %r15, %rsp                     #  22    0x58440  3      
  jmpq .d_print_comp                  #  23    0x58443  5      
  nop                                 #  24    0x58448  1      
.L_58480:                             #        0x58449  0      
  movl %eax, %eax                     #  25    0x58449  2      
  movl %eax, %eax                     #  26    0x5844b  2      
  movq 0x10022050(%r15,%rax,8), %rax  #  27    0x5844d  8      
  andl $0xffffffe0, %eax              #  28    0x58455  5      
  addq %r15, %rax                     #  29    0x5845a  3      
  jmpq %rax                           #  30    0x5845d  2      
  nop                                 #  31    0x5845f  1      
  movl %ebx, %ebx                     #  32    0x58460  2      
  movl 0x4(%r15,%rbx,1), %esi         #  33    0x58462  5      
  jmpq .L_58460                       #  34    0x58467  5      
  nop                                 #  35    0x5846c  1      
  nop                                 #  36    0x5846d  1      
  movl $0x100229eb, %esi              #  37    0x5846e  5      
  nop                                 #  38    0x58473  1      
  nop                                 #  39    0x58474  1      
.L_584e0:                             #        0x58475  0      
  movl %r12d, %edi                    #  40    0x58475  3      
  movq 0x8(%rsp), %rbx                #  41    0x58478  5      
  movq 0x10(%rsp), %r12               #  42    0x5847d  5      
  addl $0x18, %esp                    #  43    0x58482  3      
  addq %r15, %rsp                     #  44    0x58485  3      
  jmpq .d_append_string               #  45    0x58488  5      
  nop                                 #  46    0x5848d  1      
  movl $0x100229f5, %esi              #  47    0x5848e  5      
  jmpq .L_584e0                       #  48    0x58493  5      
  nop                                 #  49    0x58498  1      
  nop                                 #  50    0x58499  1      
  movl $0x100229ff, %esi              #  51    0x5849a  5      
  jmpq .L_584e0                       #  52    0x5849f  5      
  nop                                 #  53    0x584a4  1      
  nop                                 #  54    0x584a5  1      
  movl $0x20, %esi                    #  55    0x584a6  5      
  movl %r12d, %edi                    #  56    0x584ab  3      
  nop                                 #  57    0x584ae  1      
  nop                                 #  58    0x584af  1      
  callq .d_append_char                #  59    0x584b0  5      
  movl %ebx, %ebx                     #  60    0x584b5  2      
  movl 0x8(%r15,%rbx,1), %esi         #  61    0x584b7  5      
  jmpq .L_58460                       #  62    0x584bc  5      
  nop                                 #  63    0x584c1  1      
  nop                                 #  64    0x584c2  1      
  movl %r12d, %r12d                   #  65    0x584c3  3      
  testb $0x4, (%r15,%r12,1)           #  66    0x584c6  5      
  movl $0x2a, %esi                    #  67    0x584cb  5      
  je .L_585e0                         #  68    0x584d0  6      
  movq 0x8(%rsp), %rbx                #  69    0x584d6  5      
  movq 0x10(%rsp), %r12               #  70    0x584db  5      
  addl $0x18, %esp                    #  71    0x584e0  3      
  addq %r15, %rsp                     #  72    0x584e3  3      
  nop                                 #  73    0x584e6  1      
  popq %r11                           #  74    0x584e7  3      
  andl $0xffffffe0, %r11d             #  75    0x584ea  7      
  addq %r15, %r11                     #  76    0x584f1  3      
  jmpq %r11                           #  77    0x584f4  3      
  nop                                 #  78    0x584f7  1      
  nop                                 #  79    0x584f8  1      
  movl $0x26, %esi                    #  80    0x584f9  5      
  nop                                 #  81    0x584fe  1      
  nop                                 #  82    0x584ff  1      
.L_585e0:                             #        0x58500  0      
  movl %r12d, %edi                    #  83    0x58500  3      
  movq 0x8(%rsp), %rbx                #  84    0x58503  5      
  movq 0x10(%rsp), %r12               #  85    0x58508  5      
  addl $0x18, %esp                    #  86    0x5850d  3      
  addq %r15, %rsp                     #  87    0x58510  3      
  jmpq .d_append_char                 #  88    0x58513  5      
  nop                                 #  89    0x58518  1      
  movl $0x10022a06, %esi              #  90    0x58519  5      
  jmpq .L_584e0                       #  91    0x5851e  5      
  nop                                 #  92    0x58523  1      
  nop                                 #  93    0x58524  1      
  movl $0x10022a09, %esi              #  94    0x58525  5      
  jmpq .L_584e0                       #  95    0x5852a  5      
  nop                                 #  96    0x5852f  1      
  nop                                 #  97    0x58530  1      
  movl $0x10022a12, %esi              #  98    0x58531  5      
  jmpq .L_584e0                       #  99    0x58536  5      
  nop                                 #  100   0x5853b  1      
  nop                                 #  101   0x5853c  1      
  movl %r12d, %r12d                   #  102   0x5853d  3      
  cmpb $0x28, 0x108(%r15,%r12,1)      #  103   0x58540  9      
  je .L_58680                         #  104   0x58549  6      
  movl $0x20, %esi                    #  105   0x5854f  5      
  movl %r12d, %edi                    #  106   0x58554  3      
  nop                                 #  107   0x58557  1      
  callq .d_append_char                #  108   0x58558  5      
.L_58680:                             #        0x5855d  0      
  movl %ebx, %ebx                     #  109   0x5855d  2      
  movl 0x4(%r15,%rbx,1), %esi         #  110   0x5855f  5      
  movl %r12d, %edi                    #  111   0x58564  3      
  xchgw %ax, %ax                      #  112   0x58567  3      
  nop                                 #  113   0x5856a  1      
  callq .d_print_comp                 #  114   0x5856b  5      
  movl $0x10022948, %esi              #  115   0x58570  5      
  jmpq .L_584e0                       #  116   0x58575  5      
  nop                                 #  117   0x5857a  1      
  nop                                 #  118   0x5857b  1      
                                                               
.size d_print_mod, .-d_print_mod

