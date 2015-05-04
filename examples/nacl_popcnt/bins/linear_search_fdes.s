  .text
  .globl linear_search_fdes
  .type linear_search_fdes, @function

#! file-offset 0x5ef40
#! rip-offset  0x5ef40
#! capacity    640 bytes

# Text                                 #  Line  RIP      Bytes  
.linear_search_fdes:                   #        0x5ef40  0      
  pushq %r14                           #  1     0x5ef40  3      
  movl %edx, %edx                      #  2     0x5ef43  2      
  pushq %r13                           #  3     0x5ef45  3      
  movl %edi, %r13d                     #  4     0x5ef48  3      
  pushq %r12                           #  5     0x5ef4b  3      
  pushq %rbx                           #  6     0x5ef4e  2      
  movl %esi, %ebx                      #  7     0x5ef50  2      
  movl %r13d, %esi                     #  8     0x5ef52  3      
  subl $0x48, %esp                     #  9     0x5ef55  3      
  addq %r15, %rsp                      #  10    0x5ef58  3      
  movl %r13d, %r13d                    #  11    0x5ef5b  3      
  movzwl 0x10(%r15,%r13,1), %r12d      #  12    0x5ef5e  6      
  movq %rdx, 0x18(%rsp)                #  13    0x5ef64  5      
  shrw $0x3, %r12w                     #  14    0x5ef69  5      
  movzbl %r12b, %r12d                  #  15    0x5ef6e  4      
  movl %r12d, %edi                     #  16    0x5ef72  3      
  nop                                  #  17    0x5ef75  1      
  callq .base_from_object              #  18    0x5ef76  5      
  movl %ebx, %ebx                      #  19    0x5ef7b  2      
  movl (%r15,%rbx,1), %r14d            #  20    0x5ef7d  4      
  movl %eax, %r9d                      #  21    0x5ef81  3      
  testl %r14d, %r14d                   #  22    0x5ef84  3      
  je .L_5f1a0                          #  23    0x5ef87  6      
  leal 0x3c(%rsp), %eax                #  24    0x5ef8d  4      
  leal 0x38(%rsp), %ecx                #  25    0x5ef91  4      
  xorl %r8d, %r8d                      #  26    0x5ef95  3      
  nop                                  #  27    0x5ef98  1      
  movq %rax, 0x20(%rsp)                #  28    0x5ef99  5      
  movq %rcx, 0x28(%rsp)                #  29    0x5ef9e  5      
  jmpq .L_5f020                        #  30    0x5efa3  5      
  nop                                  #  31    0x5efa8  1      
  nop                                  #  32    0x5efa9  1      
.L_5efc0:                              #        0x5efaa  0      
  leal 0x8(%rbx), %edx                 #  33    0x5efaa  3      
  movl %edx, %edx                      #  34    0x5efad  2      
  movl (%r15,%rdx,1), %eax             #  35    0x5efaf  4      
  movl %eax, 0x3c(%rsp)                #  36    0x5efb3  4      
  movl %edx, %edx                      #  37    0x5efb7  2      
  movl 0x4(%r15,%rdx,1), %edx          #  38    0x5efb9  5      
  testl %eax, %eax                     #  39    0x5efbe  2      
  movl %edx, 0x38(%rsp)                #  40    0x5efc0  4      
  je .L_5f000                          #  41    0x5efc4  6      
  movl 0x18(%rsp), %ecx                #  42    0x5efca  4      
  subl %eax, %ecx                      #  43    0x5efce  2      
  cmpl %edx, %ecx                      #  44    0x5efd0  2      
  jb .L_5f180                          #  45    0x5efd2  6      
  nop                                  #  46    0x5efd8  1      
  nop                                  #  47    0x5efd9  1      
.L_5f000:                              #        0x5efda  0      
  movl %ebx, %ebx                      #  48    0x5efda  2      
  movl (%r15,%rbx,1), %eax             #  49    0x5efdc  4      
  leal 0x4(%rax,%rbx,1), %ebx          #  50    0x5efe0  4      
  movl %ebx, %ebx                      #  51    0x5efe4  2      
  movl (%r15,%rbx,1), %r11d            #  52    0x5efe6  4      
  testl %r11d, %r11d                   #  53    0x5efea  3      
  je .L_5f1a0                          #  54    0x5efed  6      
  nop                                  #  55    0x5eff3  1      
.L_5f020:                              #        0x5eff4  0      
  movl %ebx, %ebx                      #  56    0x5eff4  2      
  movl 0x4(%r15,%rbx,1), %r14d         #  57    0x5eff6  5      
  testl %r14d, %r14d                   #  58    0x5effb  3      
  je .L_5f000                          #  59    0x5effe  6      
  movl %r13d, %r13d                    #  60    0x5f004  3      
  testb $0x4, 0x10(%r15,%r13,1)        #  61    0x5f007  6      
  je .L_5f0a0                          #  62    0x5f00d  6      
  negl %r14d                           #  63    0x5f013  3      
  leal 0x4(%r14,%rbx,1), %r14d         #  64    0x5f016  5      
  nop                                  #  65    0x5f01b  1      
  cmpl %r14d, %r8d                     #  66    0x5f01c  3      
  je .L_5f0a0                          #  67    0x5f01f  6      
  movl %r14d, %edi                     #  68    0x5f025  3      
  nop                                  #  69    0x5f028  1      
  nop                                  #  70    0x5f029  1      
  callq .get_cie_encoding              #  71    0x5f02a  5      
  movl %r13d, %esi                     #  72    0x5f02f  3      
  movzbl %al, %edi                     #  73    0x5f032  3      
  movl %eax, %r12d                     #  74    0x5f035  3      
  nop                                  #  75    0x5f038  1      
  nop                                  #  76    0x5f039  1      
  callq .base_from_object              #  77    0x5f03a  5      
  movq %r14, %r8                       #  78    0x5f03f  3      
  movl %eax, %r9d                      #  79    0x5f042  3      
  nop                                  #  80    0x5f045  1      
  nop                                  #  81    0x5f046  1      
.L_5f0a0:                              #        0x5f047  0      
  testl %r12d, %r12d                   #  82    0x5f047  3      
  je .L_5efc0                          #  83    0x5f04a  6      
  movl 0x20(%rsp), %ecx                #  84    0x5f050  4      
  movzbl %r12b, %r14d                  #  85    0x5f054  4      
  leal 0x8(%rbx), %edx                 #  86    0x5f058  3      
  movl %r9d, %esi                      #  87    0x5f05b  3      
  movl %r14d, %edi                     #  88    0x5f05e  3      
  movq %r8, 0x8(%rsp)                  #  89    0x5f061  5      
  nop                                  #  90    0x5f066  1      
  movl %r9d, 0x10(%rsp)                #  91    0x5f067  5      
  nop                                  #  92    0x5f06c  1      
  nop                                  #  93    0x5f06d  1      
  callq .read_encoded_value_with_base  #  94    0x5f06e  5      
  movl 0x28(%rsp), %ecx                #  95    0x5f073  4      
  movl %r14d, %edi                     #  96    0x5f077  3      
  movl %eax, %edx                      #  97    0x5f07a  2      
  andl $0xf, %edi                      #  98    0x5f07c  3      
  xorl %esi, %esi                      #  99    0x5f07f  2      
  nop                                  #  100   0x5f081  1      
  callq .read_encoded_value_with_base  #  101   0x5f082  5      
  movl %r14d, %edi                     #  102   0x5f087  3      
  nop                                  #  103   0x5f08a  1      
  nop                                  #  104   0x5f08b  1      
  callq .size_of_encoded_value         #  105   0x5f08c  5      
  cmpl $0x3, %eax                      #  106   0x5f091  3      
  movl $0xffffffff, %edx               #  107   0x5f094  5      
  movq 0x8(%rsp), %r8                  #  108   0x5f099  5      
  movl 0x10(%rsp), %r9d                #  109   0x5f09e  5      
  ja .L_5f160                          #  110   0x5f0a3  6      
  leal (,%rax,8), %ecx                 #  111   0x5f0a9  7      
  movl $0x1, %edx                      #  112   0x5f0b0  5      
  shll %cl, %edx                       #  113   0x5f0b5  2      
  subl $0x1, %edx                      #  114   0x5f0b7  3      
  nop                                  #  115   0x5f0ba  1      
  nop                                  #  116   0x5f0bb  1      
.L_5f160:                              #        0x5f0bc  0      
  movl 0x3c(%rsp), %eax                #  117   0x5f0bc  4      
  testl %eax, %edx                     #  118   0x5f0c0  2      
  je .L_5f000                          #  119   0x5f0c2  6      
  movl 0x18(%rsp), %ecx                #  120   0x5f0c8  4      
  movl 0x38(%rsp), %edx                #  121   0x5f0cc  4      
  subl %eax, %ecx                      #  122   0x5f0d0  2      
  cmpl %edx, %ecx                      #  123   0x5f0d2  2      
  jae .L_5f000                         #  124   0x5f0d4  6      
  xchgw %ax, %ax                       #  125   0x5f0da  3      
.L_5f180:                              #        0x5f0dd  0      
  addl $0x48, %esp                     #  126   0x5f0dd  3      
  addq %r15, %rsp                      #  127   0x5f0e0  3      
  movl %ebx, %eax                      #  128   0x5f0e3  2      
  popq %rbx                            #  129   0x5f0e5  2      
  popq %r12                            #  130   0x5f0e7  3      
  popq %r13                            #  131   0x5f0ea  3      
  popq %r14                            #  132   0x5f0ed  3      
  popq %r11                            #  133   0x5f0f0  3      
  andl $0xffffffe0, %r11d              #  134   0x5f0f3  7      
  addq %r15, %r11                      #  135   0x5f0fa  3      
  jmpq %r11                            #  136   0x5f0fd  3      
  nop                                  #  137   0x5f100  1      
.L_5f1a0:                              #        0x5f101  0      
  xorl %ebx, %ebx                      #  138   0x5f101  2      
  jmpq .L_5f180                        #  139   0x5f103  5      
  nop                                  #  140   0x5f108  1      
  nop                                  #  141   0x5f109  1      
                                                                
.size linear_search_fdes, .-linear_search_fdes

