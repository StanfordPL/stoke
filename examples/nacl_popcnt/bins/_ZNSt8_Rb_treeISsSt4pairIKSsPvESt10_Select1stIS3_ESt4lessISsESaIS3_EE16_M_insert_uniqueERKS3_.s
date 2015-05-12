  .text
  .globl _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE16_M_insert_uniqueERKS3_
  .type _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE16_M_insert_uniqueERKS3_, @function

#! file-offset 0x23aa0
#! rip-offset  0x23aa0
#! capacity    576 bytes

# Text                                                                                                                       #  Line  RIP      Bytes  
._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE16_M_insert_uniqueERKS3_:                              #        0x23aa0  0      
  pushq %r13                                                                                                                 #  1     0x23aa0  3      
  movl %esi, %r13d                                                                                                           #  2     0x23aa3  3      
  pushq %r12                                                                                                                 #  3     0x23aa6  3      
  pushq %rbx                                                                                                                 #  4     0x23aa9  2      
  movl %edi, %ebx                                                                                                            #  5     0x23aab  2      
  movl %ebx, %ebx                                                                                                            #  6     0x23aad  2      
  movl 0x8(%r15,%rbx,1), %r8d                                                                                                #  7     0x23aaf  5      
  testq %r8, %r8                                                                                                             #  8     0x23ab4  3      
  je .L_23cc0                                                                                                                #  9     0x23ab7  6      
  nop                                                                                                                        #  10    0x23abd  1      
  movl %r13d, %r13d                                                                                                          #  11    0x23abe  3      
  movl (%r15,%r13,1), %r9d                                                                                                   #  12    0x23ac1  4      
  leal -0xc(%r9), %eax                                                                                                       #  13    0x23ac5  4      
  movl %eax, %eax                                                                                                            #  14    0x23ac9  2      
  movl (%r15,%rax,1), %edx                                                                                                   #  15    0x23acb  4      
  jmpq .L_23b20                                                                                                              #  16    0x23acf  5      
  nop                                                                                                                        #  17    0x23ad4  1      
.L_23ae0:                                                                                                                    #        0x23ad5  0      
  movl %r8d, %r8d                                                                                                            #  18    0x23ad5  3      
  movl 0x8(%r15,%r8,1), %eax                                                                                                 #  19    0x23ad8  5      
  movl $0x1, %ecx                                                                                                            #  20    0x23add  5      
  testq %rax, %rax                                                                                                           #  21    0x23ae2  3      
  je .L_23ba0                                                                                                                #  22    0x23ae5  6      
  nop                                                                                                                        #  23    0x23aeb  1      
.L_23b00:                                                                                                                    #        0x23aec  0      
  movq %rax, %r8                                                                                                             #  24    0x23aec  3      
  nop                                                                                                                        #  25    0x23aef  1      
  nop                                                                                                                        #  26    0x23af0  1      
.L_23b20:                                                                                                                    #        0x23af1  0      
  movl %r8d, %r8d                                                                                                            #  27    0x23af1  3      
  movl 0x10(%r15,%r8,1), %edi                                                                                                #  28    0x23af4  5      
  movq %r9, %rsi                                                                                                             #  29    0x23af9  3      
  leal -0xc(%rdi), %eax                                                                                                      #  30    0x23afc  3      
  movl %eax, %eax                                                                                                            #  31    0x23aff  2      
  movl (%r15,%rax,1), %eax                                                                                                   #  32    0x23b01  4      
  cmpl %eax, %edx                                                                                                            #  33    0x23b05  2      
  movl %eax, %ecx                                                                                                            #  34    0x23b07  2      
  cmovbel %edx, %ecx                                                                                                         #  35    0x23b09  3      
  movl %ecx, %ecx                                                                                                            #  36    0x23b0c  2      
  cmpq %rcx, %rcx                                                                                                            #  37    0x23b0e  3      
  movl %esi, %esi                                                                                                            #  38    0x23b11  2      
  leaq (%r15,%rsi,1), %rsi                                                                                                   #  39    0x23b13  4      
  movl %edi, %edi                                                                                                            #  40    0x23b17  2      
  leaq (%r15,%rdi,1), %rdi                                                                                                   #  41    0x23b19  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                          #  42    0x23b1d  3      
  movl %esi, %esi                                                                                                            #  43    0x23b20  2      
  movl %edi, %edi                                                                                                            #  44    0x23b22  2      
  setb %sil                                                                                                                  #  45    0x23b24  4      
  seta %cl                                                                                                                   #  46    0x23b28  3      
  subb %sil, %cl                                                                                                             #  47    0x23b2b  3      
  movl %edx, %esi                                                                                                            #  48    0x23b2e  2      
  xchgw %ax, %ax                                                                                                             #  49    0x23b30  3      
  movsbl %cl, %ecx                                                                                                           #  50    0x23b33  3      
  subl %eax, %esi                                                                                                            #  51    0x23b36  2      
  testl %ecx, %ecx                                                                                                           #  52    0x23b38  2      
  cmovel %esi, %ecx                                                                                                          #  53    0x23b3a  3      
  testl %ecx, %ecx                                                                                                           #  54    0x23b3d  2      
  js .L_23ae0                                                                                                                #  55    0x23b3f  6      
  movl %r8d, %r8d                                                                                                            #  56    0x23b45  3      
  movl 0xc(%r15,%r8,1), %eax                                                                                                 #  57    0x23b48  5      
  xorl %ecx, %ecx                                                                                                            #  58    0x23b4d  2      
  testq %rax, %rax                                                                                                           #  59    0x23b4f  3      
  nop                                                                                                                        #  60    0x23b52  1      
  jne .L_23b00                                                                                                               #  61    0x23b53  6      
  nop                                                                                                                        #  62    0x23b59  1      
  nop                                                                                                                        #  63    0x23b5a  1      
.L_23ba0:                                                                                                                    #        0x23b5b  0      
  testb %cl, %cl                                                                                                             #  64    0x23b5b  2      
  movq %r8, %r12                                                                                                             #  65    0x23b5d  3      
  je .L_23c00                                                                                                                #  66    0x23b60  6      
  nop                                                                                                                        #  67    0x23b66  1      
  nop                                                                                                                        #  68    0x23b67  1      
.L_23bc0:                                                                                                                    #        0x23b68  0      
  movl %ebx, %ebx                                                                                                            #  69    0x23b68  2      
  cmpl %r12d, 0xc(%r15,%rbx,1)                                                                                               #  70    0x23b6a  5      
  je .L_23c80                                                                                                                #  71    0x23b6f  6      
  movl %r12d, %edi                                                                                                           #  72    0x23b75  3      
  nop                                                                                                                        #  73    0x23b78  1      
  callq ._ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base                                                                     #  74    0x23b79  5      
  movl %r13d, %r13d                                                                                                          #  75    0x23b7e  3      
  movl (%r15,%r13,1), %r9d                                                                                                   #  76    0x23b81  4      
  movl %eax, %r8d                                                                                                            #  77    0x23b85  3      
  leal -0xc(%r9), %eax                                                                                                       #  78    0x23b88  4      
  movl %eax, %eax                                                                                                            #  79    0x23b8c  2      
  movl (%r15,%rax,1), %edx                                                                                                   #  80    0x23b8e  4      
  nop                                                                                                                        #  81    0x23b92  1      
.L_23c00:                                                                                                                    #        0x23b93  0      
  movl %r8d, %r8d                                                                                                            #  82    0x23b93  3      
  movl 0x10(%r15,%r8,1), %esi                                                                                                #  83    0x23b96  5      
  movq %r9, %rdi                                                                                                             #  84    0x23b9b  3      
  leal -0xc(%rsi), %eax                                                                                                      #  85    0x23b9e  3      
  movl %eax, %eax                                                                                                            #  86    0x23ba1  2      
  movl (%r15,%rax,1), %eax                                                                                                   #  87    0x23ba3  4      
  cmpl %eax, %edx                                                                                                            #  88    0x23ba7  2      
  movl %eax, %ecx                                                                                                            #  89    0x23ba9  2      
  cmovbel %edx, %ecx                                                                                                         #  90    0x23bab  3      
  movl %ecx, %ecx                                                                                                            #  91    0x23bae  2      
  cmpq %rcx, %rcx                                                                                                            #  92    0x23bb0  3      
  movl %esi, %esi                                                                                                            #  93    0x23bb3  2      
  leaq (%r15,%rsi,1), %rsi                                                                                                   #  94    0x23bb5  4      
  movl %edi, %edi                                                                                                            #  95    0x23bb9  2      
  leaq (%r15,%rdi,1), %rdi                                                                                                   #  96    0x23bbb  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)                                                                                          #  97    0x23bbf  3      
  movl %esi, %esi                                                                                                            #  98    0x23bc2  2      
  movl %edi, %edi                                                                                                            #  99    0x23bc4  2      
  seta %cl                                                                                                                   #  100   0x23bc6  3      
  setb %sil                                                                                                                  #  101   0x23bc9  4      
  subl %edx, %eax                                                                                                            #  102   0x23bcd  2      
  subb %sil, %cl                                                                                                             #  103   0x23bcf  3      
  xchgw %ax, %ax                                                                                                             #  104   0x23bd2  3      
  movsbl %cl, %ecx                                                                                                           #  105   0x23bd5  3      
  testl %ecx, %ecx                                                                                                           #  106   0x23bd8  2      
  cmovel %eax, %ecx                                                                                                          #  107   0x23bda  3      
  xorl %eax, %eax                                                                                                            #  108   0x23bdd  2      
  testl %ecx, %ecx                                                                                                           #  109   0x23bdf  2      
  js .L_23c80                                                                                                                #  110   0x23be1  6      
  nop                                                                                                                        #  111   0x23be7  1      
  nop                                                                                                                        #  112   0x23be8  1      
.L_23c60:                                                                                                                    #        0x23be9  0      
  popq %rbx                                                                                                                  #  113   0x23be9  2      
  popq %r12                                                                                                                  #  114   0x23beb  3      
  popq %r13                                                                                                                  #  115   0x23bee  3      
  popq %r11                                                                                                                  #  116   0x23bf1  3      
  movzbl %al, %eax                                                                                                           #  117   0x23bf4  3      
  shlq $0x20, %rax                                                                                                           #  118   0x23bf7  4      
  orq %r8, %rax                                                                                                              #  119   0x23bfb  3      
  andl $0xffffffe0, %r11d                                                                                                    #  120   0x23bfe  7      
  addq %r15, %r11                                                                                                            #  121   0x23c05  3      
  jmpq %r11                                                                                                                  #  122   0x23c08  3      
  nop                                                                                                                        #  123   0x23c0b  1      
.L_23c80:                                                                                                                    #        0x23c0c  0      
  movl %r13d, %ecx                                                                                                           #  124   0x23c0c  3      
  movl %r12d, %edx                                                                                                           #  125   0x23c0f  3      
  xorl %esi, %esi                                                                                                            #  126   0x23c12  2      
  movl %ebx, %edi                                                                                                            #  127   0x23c14  2      
  xchgw %ax, %ax                                                                                                             #  128   0x23c16  3      
  nop                                                                                                                        #  129   0x23c19  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_  #  130   0x23c1a  5      
  movl %eax, %r8d                                                                                                            #  131   0x23c1f  3      
  movl $0x1, %eax                                                                                                            #  132   0x23c22  5      
  jmpq .L_23c60                                                                                                              #  133   0x23c27  5      
  nop                                                                                                                        #  134   0x23c2c  1      
  nop                                                                                                                        #  135   0x23c2d  1      
.L_23cc0:                                                                                                                    #        0x23c2e  0      
  leal 0x4(%rbx), %r12d                                                                                                      #  136   0x23c2e  4      
  jmpq .L_23bc0                                                                                                              #  137   0x23c32  5      
  nop                                                                                                                        #  138   0x23c37  1      
  nop                                                                                                                        #  139   0x23c38  1      
  nop                                                                                                                        #  140   0x23c39  1      
  nop                                                                                                                        #  141   0x23c3a  1      
  nop                                                                                                                        #  142   0x23c3b  1      
  nop                                                                                                                        #  143   0x23c3c  1      
  nop                                                                                                                        #  144   0x23c3d  1      
  nop                                                                                                                        #  145   0x23c3e  1      
  nop                                                                                                                        #  146   0x23c3f  1      
  nop                                                                                                                        #  147   0x23c40  1      
  nop                                                                                                                        #  148   0x23c41  1      
  nop                                                                                                                        #  149   0x23c42  1      
  nop                                                                                                                        #  150   0x23c43  1      
  nop                                                                                                                        #  151   0x23c44  1      
  nop                                                                                                                        #  152   0x23c45  1      
  nop                                                                                                                        #  153   0x23c46  1      
  nop                                                                                                                        #  154   0x23c47  1      
  nop                                                                                                                        #  155   0x23c48  1      
  nop                                                                                                                        #  156   0x23c49  1      
  nop                                                                                                                        #  157   0x23c4a  1      
  nop                                                                                                                        #  158   0x23c4b  1      
  nop                                                                                                                        #  159   0x23c4c  1      
  nop                                                                                                                        #  160   0x23c4d  1      
                                                                                                                                                      
.size _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE16_M_insert_uniqueERKS3_, .-_ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE16_M_insert_uniqueERKS3_

