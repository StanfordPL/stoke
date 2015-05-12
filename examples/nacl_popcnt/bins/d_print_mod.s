  .text
  .globl d_print_mod
  .type d_print_mod, @function

#! file-offset 0x58380
#! rip-offset  0x58380
#! capacity    704 bytes

# Text                                #  Line  RIP      Bytes  
.d_print_mod:                         #        0x58380  0      
  movq %rbx, -0x10(%rsp)              #  1     0x58380  5      
  movl %esi, %ebx                     #  2     0x58385  2      
  movq %r12, -0x8(%rsp)               #  3     0x58387  5      
  subl $0x18, %esp                    #  4     0x5838c  3      
  addq %r15, %rsp                     #  5     0x5838f  3      
  movl %ebx, %ebx                     #  6     0x58392  2      
  movl (%r15,%rbx,1), %eax            #  7     0x58394  4      
  movl %edi, %r12d                    #  8     0x58398  3      
  subl $0x3, %eax                     #  9     0x5839b  3      
  xchgw %ax, %ax                      #  10    0x5839e  3      
  cmpl $0x24, %eax                    #  11    0x583a1  3      
  jbe .L_58400                        #  12    0x583a4  6      
  nop                                 #  13    0x583aa  1      
  nop                                 #  14    0x583ab  1      
  movl %ebx, %esi                     #  15    0x583ac  2      
  nop                                 #  16    0x583ae  1      
  nop                                 #  17    0x583af  1      
.L_583e0:                             #        0x583b0  0      
  movl %r12d, %edi                    #  18    0x583b0  3      
  movq 0x8(%rsp), %rbx                #  19    0x583b3  5      
  movq 0x10(%rsp), %r12               #  20    0x583b8  5      
  addl $0x18, %esp                    #  21    0x583bd  3      
  addq %r15, %rsp                     #  22    0x583c0  3      
  jmpq .d_print_comp                  #  23    0x583c3  5      
  nop                                 #  24    0x583c8  1      
.L_58400:                             #        0x583c9  0      
  movl %eax, %eax                     #  25    0x583c9  2      
  movl %eax, %eax                     #  26    0x583cb  2      
  movq 0x10022050(%r15,%rax,8), %rax  #  27    0x583cd  8      
  andl $0xffffffe0, %eax              #  28    0x583d5  5      
  addq %r15, %rax                     #  29    0x583da  3      
  jmpq %rax                           #  30    0x583dd  2      
  nop                                 #  31    0x583df  1      
  movl %ebx, %ebx                     #  32    0x583e0  2      
  movl 0x4(%r15,%rbx,1), %esi         #  33    0x583e2  5      
  jmpq .L_583e0                       #  34    0x583e7  5      
  nop                                 #  35    0x583ec  1      
  nop                                 #  36    0x583ed  1      
  movl $0x100229eb, %esi              #  37    0x583ee  5      
  nop                                 #  38    0x583f3  1      
  nop                                 #  39    0x583f4  1      
.L_58460:                             #        0x583f5  0      
  movl %r12d, %edi                    #  40    0x583f5  3      
  movq 0x8(%rsp), %rbx                #  41    0x583f8  5      
  movq 0x10(%rsp), %r12               #  42    0x583fd  5      
  addl $0x18, %esp                    #  43    0x58402  3      
  addq %r15, %rsp                     #  44    0x58405  3      
  jmpq .d_append_string               #  45    0x58408  5      
  nop                                 #  46    0x5840d  1      
  movl $0x100229f5, %esi              #  47    0x5840e  5      
  jmpq .L_58460                       #  48    0x58413  5      
  nop                                 #  49    0x58418  1      
  nop                                 #  50    0x58419  1      
  movl $0x100229ff, %esi              #  51    0x5841a  5      
  jmpq .L_58460                       #  52    0x5841f  5      
  nop                                 #  53    0x58424  1      
  nop                                 #  54    0x58425  1      
  movl $0x20, %esi                    #  55    0x58426  5      
  movl %r12d, %edi                    #  56    0x5842b  3      
  nop                                 #  57    0x5842e  1      
  nop                                 #  58    0x5842f  1      
  callq .d_append_char                #  59    0x58430  5      
  movl %ebx, %ebx                     #  60    0x58435  2      
  movl 0x8(%r15,%rbx,1), %esi         #  61    0x58437  5      
  jmpq .L_583e0                       #  62    0x5843c  5      
  nop                                 #  63    0x58441  1      
  nop                                 #  64    0x58442  1      
  movl %r12d, %r12d                   #  65    0x58443  3      
  testb $0x4, (%r15,%r12,1)           #  66    0x58446  5      
  movl $0x2a, %esi                    #  67    0x5844b  5      
  je .L_58560                         #  68    0x58450  6      
  movq 0x8(%rsp), %rbx                #  69    0x58456  5      
  movq 0x10(%rsp), %r12               #  70    0x5845b  5      
  addl $0x18, %esp                    #  71    0x58460  3      
  addq %r15, %rsp                     #  72    0x58463  3      
  nop                                 #  73    0x58466  1      
  popq %r11                           #  74    0x58467  3      
  andl $0xffffffe0, %r11d             #  75    0x5846a  7      
  addq %r15, %r11                     #  76    0x58471  3      
  jmpq %r11                           #  77    0x58474  3      
  nop                                 #  78    0x58477  1      
  nop                                 #  79    0x58478  1      
  movl $0x26, %esi                    #  80    0x58479  5      
  nop                                 #  81    0x5847e  1      
  nop                                 #  82    0x5847f  1      
.L_58560:                             #        0x58480  0      
  movl %r12d, %edi                    #  83    0x58480  3      
  movq 0x8(%rsp), %rbx                #  84    0x58483  5      
  movq 0x10(%rsp), %r12               #  85    0x58488  5      
  addl $0x18, %esp                    #  86    0x5848d  3      
  addq %r15, %rsp                     #  87    0x58490  3      
  jmpq .d_append_char                 #  88    0x58493  5      
  nop                                 #  89    0x58498  1      
  movl $0x10022a06, %esi              #  90    0x58499  5      
  jmpq .L_58460                       #  91    0x5849e  5      
  nop                                 #  92    0x584a3  1      
  nop                                 #  93    0x584a4  1      
  movl $0x10022a09, %esi              #  94    0x584a5  5      
  jmpq .L_58460                       #  95    0x584aa  5      
  nop                                 #  96    0x584af  1      
  nop                                 #  97    0x584b0  1      
  movl $0x10022a12, %esi              #  98    0x584b1  5      
  jmpq .L_58460                       #  99    0x584b6  5      
  nop                                 #  100   0x584bb  1      
  nop                                 #  101   0x584bc  1      
  movl %r12d, %r12d                   #  102   0x584bd  3      
  cmpb $0x28, 0x108(%r15,%r12,1)      #  103   0x584c0  9      
  je .L_58600                         #  104   0x584c9  6      
  movl $0x20, %esi                    #  105   0x584cf  5      
  movl %r12d, %edi                    #  106   0x584d4  3      
  nop                                 #  107   0x584d7  1      
  callq .d_append_char                #  108   0x584d8  5      
.L_58600:                             #        0x584dd  0      
  movl %ebx, %ebx                     #  109   0x584dd  2      
  movl 0x4(%r15,%rbx,1), %esi         #  110   0x584df  5      
  movl %r12d, %edi                    #  111   0x584e4  3      
  xchgw %ax, %ax                      #  112   0x584e7  3      
  nop                                 #  113   0x584ea  1      
  callq .d_print_comp                 #  114   0x584eb  5      
  movl $0x10022948, %esi              #  115   0x584f0  5      
  jmpq .L_58460                       #  116   0x584f5  5      
  nop                                 #  117   0x584fa  1      
  nop                                 #  118   0x584fb  1      
                                                               
.size d_print_mod, .-d_print_mod

