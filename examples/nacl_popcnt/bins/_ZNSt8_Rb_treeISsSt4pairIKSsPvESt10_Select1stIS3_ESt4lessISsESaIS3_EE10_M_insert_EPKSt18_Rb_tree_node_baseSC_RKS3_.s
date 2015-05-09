  .text
  .globl _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_
  .type _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_, @function

#! file-offset 0x23840
#! rip-offset  0x23840
#! capacity    576 bytes

# Text                                                                                                                #  Line  RIP      Bytes  
._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_:  #        0x23840  0      
  movq %rbx, -0x20(%rsp)                                                                                              #  1     0x23840  5      
  movq %r13, -0x10(%rsp)                                                                                              #  2     0x23845  5      
  movl %edi, %ebx                                                                                                     #  3     0x2384a  2      
  movq %r14, -0x8(%rsp)                                                                                               #  4     0x2384c  5      
  movq %r12, -0x18(%rsp)                                                                                              #  5     0x23851  5      
  subl $0x38, %esp                                                                                                    #  6     0x23856  3      
  addq %r15, %rsp                                                                                                     #  7     0x23859  3      
  testl %esi, %esi                                                                                                    #  8     0x2385c  2      
  xchgw %ax, %ax                                                                                                      #  9     0x2385e  3      
  movl %edx, %r14d                                                                                                    #  10    0x23861  3      
  movl %ecx, %r13d                                                                                                    #  11    0x23864  3      
  je .L_23960                                                                                                         #  12    0x23867  6      
  nop                                                                                                                 #  13    0x2386d  1      
  nop                                                                                                                 #  14    0x2386e  1      
.L_23880:                                                                                                             #        0x2386f  0      
  movb $0x1, (%rsp)                                                                                                   #  15    0x2386f  4      
  nop                                                                                                                 #  16    0x23873  1      
  nop                                                                                                                 #  17    0x23874  1      
.L_238a0:                                                                                                             #        0x23875  0      
  movl $0x18, %edi                                                                                                    #  18    0x23875  5      
  nop                                                                                                                 #  19    0x2387a  1      
  nop                                                                                                                 #  20    0x2387b  1      
  callq ._Znwj                                                                                                        #  21    0x2387c  5      
  movl %eax, %r12d                                                                                                    #  22    0x23881  3      
  movl %r12d, %edi                                                                                                    #  23    0x23884  3      
  addl $0x10, %edi                                                                                                    #  24    0x23887  3      
  je .L_23900                                                                                                         #  25    0x2388a  6      
  movl %r13d, %esi                                                                                                    #  26    0x23890  3      
  nop                                                                                                                 #  27    0x23893  1      
  callq ._ZNSsC1ERKSs                                                                                                 #  28    0x23894  5      
  movl %r13d, %r13d                                                                                                   #  29    0x23899  3      
  movl 0x4(%r15,%r13,1), %eax                                                                                         #  30    0x2389c  5      
  movl %r12d, %r12d                                                                                                   #  31    0x238a1  3      
  movl %eax, 0x14(%r15,%r12,1)                                                                                        #  32    0x238a4  5      
  nop                                                                                                                 #  33    0x238a9  1      
  nop                                                                                                                 #  34    0x238aa  1      
.L_23900:                                                                                                             #        0x238ab  0      
  movzbl (%rsp), %edi                                                                                                 #  35    0x238ab  4      
  leal 0x4(%rbx), %ecx                                                                                                #  36    0x238af  3      
  movl %r14d, %edx                                                                                                    #  37    0x238b2  3      
  movl %r12d, %esi                                                                                                    #  38    0x238b5  3      
  nop                                                                                                                 #  39    0x238b8  1      
  callq ._ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_                                            #  40    0x238b9  5      
  movl %ebx, %ebx                                                                                                     #  41    0x238be  2      
  addl $0x1, 0x14(%r15,%rbx,1)                                                                                        #  42    0x238c0  6      
  movl %r12d, %eax                                                                                                    #  43    0x238c6  3      
  movq 0x18(%rsp), %rbx                                                                                               #  44    0x238c9  5      
  movq 0x20(%rsp), %r12                                                                                               #  45    0x238ce  5      
  movq 0x28(%rsp), %r13                                                                                               #  46    0x238d3  5      
  movq 0x30(%rsp), %r14                                                                                               #  47    0x238d8  5      
  nop                                                                                                                 #  48    0x238dd  1      
  addl $0x38, %esp                                                                                                    #  49    0x238de  3      
  addq %r15, %rsp                                                                                                     #  50    0x238e1  3      
  popq %r11                                                                                                           #  51    0x238e4  3      
  andl $0xffffffe0, %r11d                                                                                             #  52    0x238e7  7      
  addq %r15, %r11                                                                                                     #  53    0x238ee  3      
  jmpq %r11                                                                                                           #  54    0x238f1  3      
  nop                                                                                                                 #  55    0x238f4  1      
.L_23960:                                                                                                             #        0x238f5  0      
  leal 0x4(%rbx), %eax                                                                                                #  56    0x238f5  3      
  cmpl %r14d, %eax                                                                                                    #  57    0x238f8  3      
  je .L_23880                                                                                                         #  58    0x238fb  6      
  movl %r13d, %r13d                                                                                                   #  59    0x23901  3      
  movl (%r15,%r13,1), %esi                                                                                            #  60    0x23904  4      
  movl %r14d, %r14d                                                                                                   #  61    0x23908  3      
  movl 0x10(%r15,%r14,1), %edi                                                                                        #  62    0x2390b  5      
  leal -0xc(%rsi), %eax                                                                                               #  63    0x23910  3      
  xchgw %ax, %ax                                                                                                      #  64    0x23913  3      
  movl %eax, %eax                                                                                                     #  65    0x23916  2      
  movl (%r15,%rax,1), %edx                                                                                            #  66    0x23918  4      
  leal -0xc(%rdi), %eax                                                                                               #  67    0x2391c  3      
  movl %eax, %eax                                                                                                     #  68    0x2391f  2      
  movl (%r15,%rax,1), %eax                                                                                            #  69    0x23921  4      
  movl %edx, %ecx                                                                                                     #  70    0x23925  2      
  cmpl %edx, %eax                                                                                                     #  71    0x23927  2      
  cmovbel %eax, %ecx                                                                                                  #  72    0x23929  3      
  movl %ecx, %ecx                                                                                                     #  73    0x2392c  2      
  cmpq %rcx, %rcx                                                                                                     #  74    0x2392e  3      
  nop                                                                                                                 #  75    0x23931  1      
  movl %esi, %esi                                                                                                     #  76    0x23932  2      
  leaq (%r15,%rsi,1), %rsi                                                                                            #  77    0x23934  4      
  movl %edi, %edi                                                                                                     #  78    0x23938  2      
  leaq (%r15,%rdi,1), %rdi                                                                                            #  79    0x2393a  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                   #  80    0x2393e  3      
  movl %esi, %esi                                                                                                     #  81    0x23941  2      
  movl %edi, %edi                                                                                                     #  82    0x23943  2      
  seta %cl                                                                                                            #  83    0x23945  3      
  setb %sil                                                                                                           #  84    0x23948  4      
  subl %eax, %edx                                                                                                     #  85    0x2394c  2      
  subb %sil, %cl                                                                                                      #  86    0x2394e  3      
  xchgw %ax, %ax                                                                                                      #  87    0x23951  3      
  movsbl %cl, %ecx                                                                                                    #  88    0x23954  3      
  testl %ecx, %ecx                                                                                                    #  89    0x23957  2      
  cmovel %edx, %ecx                                                                                                   #  90    0x23959  3      
  shrl $0x1f, %ecx                                                                                                    #  91    0x2395c  3      
  movb %cl, (%rsp)                                                                                                    #  92    0x2395f  3      
  jmpq .L_238a0                                                                                                       #  93    0x23962  5      
  nop                                                                                                                 #  94    0x23967  1      
  movl %eax, %edi                                                                                                     #  95    0x23968  2      
  nop                                                                                                                 #  96    0x2396a  1      
  nop                                                                                                                 #  97    0x2396b  1      
  callq .__cxa_begin_catch                                                                                            #  98    0x2396c  5      
  movl %r12d, %edi                                                                                                    #  99    0x23971  3      
  nop                                                                                                                 #  100   0x23974  1      
  nop                                                                                                                 #  101   0x23975  1      
  callq ._ZdlPv                                                                                                       #  102   0x23976  5      
  nop                                                                                                                 #  103   0x2397b  1      
  nop                                                                                                                 #  104   0x2397c  1      
  callq .__cxa_rethrow                                                                                                #  105   0x2397d  5      
  movl %eax, %ebx                                                                                                     #  106   0x23982  2      
  nop                                                                                                                 #  107   0x23984  1      
  nop                                                                                                                 #  108   0x23985  1      
  callq .__cxa_end_catch                                                                                              #  109   0x23986  5      
  movl %ebx, %edi                                                                                                     #  110   0x2398b  2      
  nop                                                                                                                 #  111   0x2398d  1      
  nop                                                                                                                 #  112   0x2398e  1      
  callq ._Unwind_Resume                                                                                               #  113   0x2398f  5      
                                                                                                                                               
.size _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_, .-_ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_

