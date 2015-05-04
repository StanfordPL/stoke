  .text
  .globl _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE16_M_insert_uniqueERKS5_
  .type _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE16_M_insert_uniqueERKS5_, @function

#! file-offset 0x25be0
#! rip-offset  0x25be0
#! capacity    384 bytes

# Text                                                                                                                                 #  Line  RIP      Bytes  
._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE16_M_insert_uniqueERKS5_:                              #        0x25be0  0      
  pushq %r13                                                                                                                           #  1     0x25be0  3      
  movl %esi, %r13d                                                                                                                     #  2     0x25be3  3      
  pushq %r12                                                                                                                           #  3     0x25be6  3      
  pushq %rbx                                                                                                                           #  4     0x25be9  2      
  movl %edi, %ebx                                                                                                                      #  5     0x25beb  2      
  movl %ebx, %ebx                                                                                                                      #  6     0x25bed  2      
  movl 0x8(%r15,%rbx,1), %r12d                                                                                                         #  7     0x25bef  5      
  testq %r12, %r12                                                                                                                     #  8     0x25bf4  3      
  je .L_25cc0                                                                                                                          #  9     0x25bf7  6      
  nop                                                                                                                                  #  10    0x25bfd  1      
  movl %r13d, %r13d                                                                                                                    #  11    0x25bfe  3      
  movl (%r15,%r13,1), %edx                                                                                                             #  12    0x25c01  4      
  jmpq .L_25c60                                                                                                                        #  13    0x25c05  5      
  nop                                                                                                                                  #  14    0x25c0a  1      
  nop                                                                                                                                  #  15    0x25c0b  1      
.L_25c20:                                                                                                                              #        0x25c0c  0      
  movl %r12d, %r12d                                                                                                                    #  16    0x25c0c  3      
  movl 0x8(%r15,%r12,1), %eax                                                                                                          #  17    0x25c0f  5      
  movl $0x1, %ecx                                                                                                                      #  18    0x25c14  5      
  testq %rax, %rax                                                                                                                     #  19    0x25c19  3      
  je .L_25c80                                                                                                                          #  20    0x25c1c  6      
  nop                                                                                                                                  #  21    0x25c22  1      
.L_25c40:                                                                                                                              #        0x25c23  0      
  movq %rax, %r12                                                                                                                      #  22    0x25c23  3      
  nop                                                                                                                                  #  23    0x25c26  1      
  nop                                                                                                                                  #  24    0x25c27  1      
.L_25c60:                                                                                                                              #        0x25c28  0      
  movl %r12d, %r12d                                                                                                                    #  25    0x25c28  3      
  cmpl 0x10(%r15,%r12,1), %edx                                                                                                         #  26    0x25c2b  5      
  jl .L_25c20                                                                                                                          #  27    0x25c30  6      
  movl %r12d, %r12d                                                                                                                    #  28    0x25c36  3      
  movl 0xc(%r15,%r12,1), %eax                                                                                                          #  29    0x25c39  5      
  xorl %ecx, %ecx                                                                                                                      #  30    0x25c3e  2      
  testq %rax, %rax                                                                                                                     #  31    0x25c40  3      
  jne .L_25c40                                                                                                                         #  32    0x25c43  6      
  nop                                                                                                                                  #  33    0x25c49  1      
.L_25c80:                                                                                                                              #        0x25c4a  0      
  testb %cl, %cl                                                                                                                       #  34    0x25c4a  2      
  movq %r12, %rsi                                                                                                                      #  35    0x25c4c  3      
  jne .L_25ce0                                                                                                                         #  36    0x25c4f  6      
  xorl %eax, %eax                                                                                                                      #  37    0x25c55  2      
  movl %esi, %esi                                                                                                                      #  38    0x25c57  2      
  cmpl %edx, 0x10(%r15,%rsi,1)                                                                                                         #  39    0x25c59  5      
  jl .L_25d20                                                                                                                          #  40    0x25c5e  6      
  nop                                                                                                                                  #  41    0x25c64  1      
.L_25ca0:                                                                                                                              #        0x25c65  0      
  popq %rbx                                                                                                                            #  42    0x25c65  2      
  popq %r12                                                                                                                            #  43    0x25c67  3      
  popq %r13                                                                                                                            #  44    0x25c6a  3      
  popq %r11                                                                                                                            #  45    0x25c6d  3      
  movzbl %al, %eax                                                                                                                     #  46    0x25c70  3      
  shlq $0x20, %rax                                                                                                                     #  47    0x25c73  4      
  orq %rsi, %rax                                                                                                                       #  48    0x25c77  3      
  andl $0xffffffe0, %r11d                                                                                                              #  49    0x25c7a  7      
  addq %r15, %r11                                                                                                                      #  50    0x25c81  3      
  jmpq %r11                                                                                                                            #  51    0x25c84  3      
  nop                                                                                                                                  #  52    0x25c87  1      
.L_25cc0:                                                                                                                              #        0x25c88  0      
  leal 0x4(%rbx), %r12d                                                                                                                #  53    0x25c88  4      
  nop                                                                                                                                  #  54    0x25c8c  1      
  nop                                                                                                                                  #  55    0x25c8d  1      
.L_25ce0:                                                                                                                              #        0x25c8e  0      
  movl %ebx, %ebx                                                                                                                      #  56    0x25c8e  2      
  cmpl %r12d, 0xc(%r15,%rbx,1)                                                                                                         #  57    0x25c90  5      
  je .L_25d20                                                                                                                          #  58    0x25c95  6      
  movl %r12d, %edi                                                                                                                     #  59    0x25c9b  3      
  nop                                                                                                                                  #  60    0x25c9e  1      
  callq ._ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base                                                                               #  61    0x25c9f  5      
  movl %eax, %esi                                                                                                                      #  62    0x25ca4  2      
  movl %r13d, %r13d                                                                                                                    #  63    0x25ca6  3      
  movl (%r15,%r13,1), %edx                                                                                                             #  64    0x25ca9  4      
  xorl %eax, %eax                                                                                                                      #  65    0x25cad  2      
  movl %esi, %esi                                                                                                                      #  66    0x25caf  2      
  cmpl %edx, 0x10(%r15,%rsi,1)                                                                                                         #  67    0x25cb1  5      
  jge .L_25ca0                                                                                                                         #  68    0x25cb6  6      
  nop                                                                                                                                  #  69    0x25cbc  1      
.L_25d20:                                                                                                                              #        0x25cbd  0      
  xorl %esi, %esi                                                                                                                      #  70    0x25cbd  2      
  movl %r13d, %ecx                                                                                                                     #  71    0x25cbf  3      
  movl %r12d, %edx                                                                                                                     #  72    0x25cc2  3      
  movl %ebx, %edi                                                                                                                      #  73    0x25cc5  2      
  xchgw %ax, %ax                                                                                                                       #  74    0x25cc7  3      
  nop                                                                                                                                  #  75    0x25cca  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_  #  76    0x25ccb  5      
  movl %eax, %esi                                                                                                                      #  77    0x25cd0  2      
  movl $0x1, %eax                                                                                                                      #  78    0x25cd2  5      
  jmpq .L_25ca0                                                                                                                        #  79    0x25cd7  5      
  nop                                                                                                                                  #  80    0x25cdc  1      
  nop                                                                                                                                  #  81    0x25cdd  1      
  nop                                                                                                                                  #  82    0x25cde  1      
  nop                                                                                                                                  #  83    0x25cdf  1      
  nop                                                                                                                                  #  84    0x25ce0  1      
  nop                                                                                                                                  #  85    0x25ce1  1      
  nop                                                                                                                                  #  86    0x25ce2  1      
  nop                                                                                                                                  #  87    0x25ce3  1      
  nop                                                                                                                                  #  88    0x25ce4  1      
  nop                                                                                                                                  #  89    0x25ce5  1      
  nop                                                                                                                                  #  90    0x25ce6  1      
  nop                                                                                                                                  #  91    0x25ce7  1      
  nop                                                                                                                                  #  92    0x25ce8  1      
  nop                                                                                                                                  #  93    0x25ce9  1      
  nop                                                                                                                                  #  94    0x25cea  1      
  nop                                                                                                                                  #  95    0x25ceb  1      
  nop                                                                                                                                  #  96    0x25cec  1      
  nop                                                                                                                                  #  97    0x25ced  1      
  nop                                                                                                                                  #  98    0x25cee  1      
  nop                                                                                                                                  #  99    0x25cef  1      
                                                                                                                                                                
.size _ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE16_M_insert_uniqueERKS5_, .-_ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE16_M_insert_uniqueERKS5_

