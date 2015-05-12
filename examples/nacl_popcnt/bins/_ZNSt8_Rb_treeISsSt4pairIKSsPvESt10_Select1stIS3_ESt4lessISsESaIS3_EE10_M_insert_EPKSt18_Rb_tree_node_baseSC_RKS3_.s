  .text
  .globl _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_
  .type _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_, @function

#! file-offset 0x23860
#! rip-offset  0x23860
#! capacity    576 bytes

# Text                                                                                                                #  Line  RIP      Bytes  
._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_:  #        0x23860  0      
  movq %rbx, -0x20(%rsp)                                                                                              #  1     0x23860  5      
  movq %r13, -0x10(%rsp)                                                                                              #  2     0x23865  5      
  movl %edi, %ebx                                                                                                     #  3     0x2386a  2      
  movq %r14, -0x8(%rsp)                                                                                               #  4     0x2386c  5      
  movq %r12, -0x18(%rsp)                                                                                              #  5     0x23871  5      
  subl $0x38, %esp                                                                                                    #  6     0x23876  3      
  addq %r15, %rsp                                                                                                     #  7     0x23879  3      
  testl %esi, %esi                                                                                                    #  8     0x2387c  2      
  xchgw %ax, %ax                                                                                                      #  9     0x2387e  3      
  movl %edx, %r14d                                                                                                    #  10    0x23881  3      
  movl %ecx, %r13d                                                                                                    #  11    0x23884  3      
  je .L_23980                                                                                                         #  12    0x23887  6      
  nop                                                                                                                 #  13    0x2388d  1      
  nop                                                                                                                 #  14    0x2388e  1      
.L_238a0:                                                                                                             #        0x2388f  0      
  movb $0x1, (%rsp)                                                                                                   #  15    0x2388f  4      
  nop                                                                                                                 #  16    0x23893  1      
  nop                                                                                                                 #  17    0x23894  1      
.L_238c0:                                                                                                             #        0x23895  0      
  movl $0x18, %edi                                                                                                    #  18    0x23895  5      
  nop                                                                                                                 #  19    0x2389a  1      
  nop                                                                                                                 #  20    0x2389b  1      
  callq ._Znwj                                                                                                        #  21    0x2389c  5      
  movl %eax, %r12d                                                                                                    #  22    0x238a1  3      
  movl %r12d, %edi                                                                                                    #  23    0x238a4  3      
  addl $0x10, %edi                                                                                                    #  24    0x238a7  3      
  je .L_23920                                                                                                         #  25    0x238aa  6      
  movl %r13d, %esi                                                                                                    #  26    0x238b0  3      
  nop                                                                                                                 #  27    0x238b3  1      
  callq ._ZNSsC1ERKSs                                                                                                 #  28    0x238b4  5      
  movl %r13d, %r13d                                                                                                   #  29    0x238b9  3      
  movl 0x4(%r15,%r13,1), %eax                                                                                         #  30    0x238bc  5      
  movl %r12d, %r12d                                                                                                   #  31    0x238c1  3      
  movl %eax, 0x14(%r15,%r12,1)                                                                                        #  32    0x238c4  5      
  nop                                                                                                                 #  33    0x238c9  1      
  nop                                                                                                                 #  34    0x238ca  1      
.L_23920:                                                                                                             #        0x238cb  0      
  movzbl (%rsp), %edi                                                                                                 #  35    0x238cb  4      
  leal 0x4(%rbx), %ecx                                                                                                #  36    0x238cf  3      
  movl %r14d, %edx                                                                                                    #  37    0x238d2  3      
  movl %r12d, %esi                                                                                                    #  38    0x238d5  3      
  nop                                                                                                                 #  39    0x238d8  1      
  callq ._ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_                                            #  40    0x238d9  5      
  movl %ebx, %ebx                                                                                                     #  41    0x238de  2      
  addl $0x1, 0x14(%r15,%rbx,1)                                                                                        #  42    0x238e0  6      
  movl %r12d, %eax                                                                                                    #  43    0x238e6  3      
  movq 0x18(%rsp), %rbx                                                                                               #  44    0x238e9  5      
  movq 0x20(%rsp), %r12                                                                                               #  45    0x238ee  5      
  movq 0x28(%rsp), %r13                                                                                               #  46    0x238f3  5      
  movq 0x30(%rsp), %r14                                                                                               #  47    0x238f8  5      
  nop                                                                                                                 #  48    0x238fd  1      
  addl $0x38, %esp                                                                                                    #  49    0x238fe  3      
  addq %r15, %rsp                                                                                                     #  50    0x23901  3      
  popq %r11                                                                                                           #  51    0x23904  3      
  andl $0xffffffe0, %r11d                                                                                             #  52    0x23907  7      
  addq %r15, %r11                                                                                                     #  53    0x2390e  3      
  jmpq %r11                                                                                                           #  54    0x23911  3      
  nop                                                                                                                 #  55    0x23914  1      
.L_23980:                                                                                                             #        0x23915  0      
  leal 0x4(%rbx), %eax                                                                                                #  56    0x23915  3      
  cmpl %r14d, %eax                                                                                                    #  57    0x23918  3      
  je .L_238a0                                                                                                         #  58    0x2391b  6      
  movl %r13d, %r13d                                                                                                   #  59    0x23921  3      
  movl (%r15,%r13,1), %esi                                                                                            #  60    0x23924  4      
  movl %r14d, %r14d                                                                                                   #  61    0x23928  3      
  movl 0x10(%r15,%r14,1), %edi                                                                                        #  62    0x2392b  5      
  leal -0xc(%rsi), %eax                                                                                               #  63    0x23930  3      
  xchgw %ax, %ax                                                                                                      #  64    0x23933  3      
  movl %eax, %eax                                                                                                     #  65    0x23936  2      
  movl (%r15,%rax,1), %edx                                                                                            #  66    0x23938  4      
  leal -0xc(%rdi), %eax                                                                                               #  67    0x2393c  3      
  movl %eax, %eax                                                                                                     #  68    0x2393f  2      
  movl (%r15,%rax,1), %eax                                                                                            #  69    0x23941  4      
  movl %edx, %ecx                                                                                                     #  70    0x23945  2      
  cmpl %edx, %eax                                                                                                     #  71    0x23947  2      
  cmovbel %eax, %ecx                                                                                                  #  72    0x23949  3      
  movl %ecx, %ecx                                                                                                     #  73    0x2394c  2      
  cmpq %rcx, %rcx                                                                                                     #  74    0x2394e  3      
  nop                                                                                                                 #  75    0x23951  1      
  movl %esi, %esi                                                                                                     #  76    0x23952  2      
  leaq (%r15,%rsi,1), %rsi                                                                                            #  77    0x23954  4      
  movl %edi, %edi                                                                                                     #  78    0x23958  2      
  leaq (%r15,%rdi,1), %rdi                                                                                            #  79    0x2395a  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                   #  80    0x2395e  3      
  movl %esi, %esi                                                                                                     #  81    0x23961  2      
  movl %edi, %edi                                                                                                     #  82    0x23963  2      
  seta %cl                                                                                                            #  83    0x23965  3      
  setb %sil                                                                                                           #  84    0x23968  4      
  subl %eax, %edx                                                                                                     #  85    0x2396c  2      
  subb %sil, %cl                                                                                                      #  86    0x2396e  3      
  xchgw %ax, %ax                                                                                                      #  87    0x23971  3      
  movsbl %cl, %ecx                                                                                                    #  88    0x23974  3      
  testl %ecx, %ecx                                                                                                    #  89    0x23977  2      
  cmovel %edx, %ecx                                                                                                   #  90    0x23979  3      
  shrl $0x1f, %ecx                                                                                                    #  91    0x2397c  3      
  movb %cl, (%rsp)                                                                                                    #  92    0x2397f  3      
  jmpq .L_238c0                                                                                                       #  93    0x23982  5      
  nop                                                                                                                 #  94    0x23987  1      
  movl %eax, %edi                                                                                                     #  95    0x23988  2      
  nop                                                                                                                 #  96    0x2398a  1      
  nop                                                                                                                 #  97    0x2398b  1      
  callq .__cxa_begin_catch                                                                                            #  98    0x2398c  5      
  movl %r12d, %edi                                                                                                    #  99    0x23991  3      
  nop                                                                                                                 #  100   0x23994  1      
  nop                                                                                                                 #  101   0x23995  1      
  callq ._ZdlPv                                                                                                       #  102   0x23996  5      
  nop                                                                                                                 #  103   0x2399b  1      
  nop                                                                                                                 #  104   0x2399c  1      
  callq .__cxa_rethrow                                                                                                #  105   0x2399d  5      
  movl %eax, %ebx                                                                                                     #  106   0x239a2  2      
  nop                                                                                                                 #  107   0x239a4  1      
  nop                                                                                                                 #  108   0x239a5  1      
  callq .__cxa_end_catch                                                                                              #  109   0x239a6  5      
  movl %ebx, %edi                                                                                                     #  110   0x239ab  2      
  nop                                                                                                                 #  111   0x239ad  1      
  nop                                                                                                                 #  112   0x239ae  1      
  callq ._Unwind_Resume                                                                                               #  113   0x239af  5      
                                                                                                                                               
.size _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_, .-_ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_

