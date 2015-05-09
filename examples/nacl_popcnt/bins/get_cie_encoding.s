  .text
  .globl get_cie_encoding
  .type get_cie_encoding, @function

#! file-offset 0x5e620
#! rip-offset  0x5e620
#! capacity    480 bytes

# Text                                 #  Line  RIP      Bytes  
.get_cie_encoding:                     #        0x5e620  0      
  pushq %r12                           #  1     0x5e620  3      
  movl %edi, %r12d                     #  2     0x5e623  3      
  pushq %rbx                           #  3     0x5e626  2      
  subl $0x18, %esp                     #  4     0x5e628  3      
  addq %r15, %rsp                      #  5     0x5e62b  3      
  movl %r12d, %r12d                    #  6     0x5e62e  3      
  cmpb $0x7a, 0x9(%r15,%r12,1)         #  7     0x5e631  6      
  je .L_5e660                          #  8     0x5e637  6      
  nop                                  #  9     0x5e63d  1      
.L_5e640:                              #        0x5e63e  0      
  addl $0x18, %esp                     #  10    0x5e63e  3      
  addq %r15, %rsp                      #  11    0x5e641  3      
  xorl %eax, %eax                      #  12    0x5e644  2      
  popq %rbx                            #  13    0x5e646  2      
  popq %r12                            #  14    0x5e648  3      
  popq %r11                            #  15    0x5e64b  3      
  andl $0xffffffe0, %r11d              #  16    0x5e64e  7      
  addq %r15, %r11                      #  17    0x5e655  3      
  jmpq %r11                            #  18    0x5e658  3      
  nop                                  #  19    0x5e65b  1      
.L_5e660:                              #        0x5e65c  0      
  leal 0x9(%r12), %ebx                 #  20    0x5e65c  5      
  movl %ebx, %edi                      #  21    0x5e661  2      
  nop                                  #  22    0x5e663  1      
  nop                                  #  23    0x5e664  1      
  callq .strlen                        #  24    0x5e665  5      
  leal 0xa(%rax,%r12,1), %eax          #  25    0x5e66a  5      
  nop                                  #  26    0x5e66f  1      
  nop                                  #  27    0x5e670  1      
.L_5e6a0:                              #        0x5e671  0      
  movl %eax, %eax                      #  28    0x5e671  2      
  movzbl (%r15,%rax,1), %edx           #  29    0x5e673  5      
  addl $0x1, %eax                      #  30    0x5e678  3      
  testb %dl, %dl                       #  31    0x5e67b  2      
  js .L_5e6a0                          #  32    0x5e67d  6      
  nop                                  #  33    0x5e683  1      
  nop                                  #  34    0x5e684  1      
.L_5e6c0:                              #        0x5e685  0      
  movl %eax, %eax                      #  35    0x5e685  2      
  movzbl (%r15,%rax,1), %edx           #  36    0x5e687  5      
  addl $0x1, %eax                      #  37    0x5e68c  3      
  testb %dl, %dl                       #  38    0x5e68f  2      
  js .L_5e6c0                          #  39    0x5e691  6      
  movl %r12d, %r12d                    #  40    0x5e697  3      
  cmpb $0x1, 0x8(%r15,%r12,1)          #  41    0x5e69a  6      
  je .L_5e7e0                          #  42    0x5e6a0  6      
  nop                                  #  43    0x5e6a6  1      
.L_5e6e0:                              #        0x5e6a7  0      
  movl %eax, %eax                      #  44    0x5e6a7  2      
  movzbl (%r15,%rax,1), %edx           #  45    0x5e6a9  5      
  addl $0x1, %eax                      #  46    0x5e6ae  3      
  testb %dl, %dl                       #  47    0x5e6b1  2      
  js .L_5e6e0                          #  48    0x5e6b3  6      
  nop                                  #  49    0x5e6b9  1      
  nop                                  #  50    0x5e6ba  1      
.L_5e700:                              #        0x5e6bb  0      
  addl $0x1, %ebx                      #  51    0x5e6bb  3      
  nop                                  #  52    0x5e6be  1      
  nop                                  #  53    0x5e6bf  1      
.L_5e720:                              #        0x5e6c0  0      
  movl %eax, %eax                      #  54    0x5e6c0  2      
  movzbl (%r15,%rax,1), %edx           #  55    0x5e6c2  5      
  addl $0x1, %eax                      #  56    0x5e6c7  3      
  testb %dl, %dl                       #  57    0x5e6ca  2      
  js .L_5e720                          #  58    0x5e6cc  6      
  movl %ebx, %ebx                      #  59    0x5e6d2  2      
  movzbl (%r15,%rbx,1), %edx           #  60    0x5e6d4  5      
  leal 0xc(%rsp), %r12d                #  61    0x5e6d9  5      
  cmpb $0x52, %dl                      #  62    0x5e6de  3      
  nop                                  #  63    0x5e6e1  1      
  jne .L_5e780                         #  64    0x5e6e2  6      
  jmpq .L_5e7c0                        #  65    0x5e6e8  5      
  nop                                  #  66    0x5e6ed  1      
  nop                                  #  67    0x5e6ee  1      
.L_5e760:                              #        0x5e6ef  0      
  cmpb $0x4c, %dl                      #  68    0x5e6ef  3      
  jne .L_5e640                         #  69    0x5e6f2  6      
  addl $0x1, %ebx                      #  70    0x5e6f8  3      
  addl $0x1, %eax                      #  71    0x5e6fb  3      
  movl %ebx, %ebx                      #  72    0x5e6fe  2      
  movzbl (%r15,%rbx,1), %edx           #  73    0x5e700  5      
  cmpb $0x52, %dl                      #  74    0x5e705  3      
  je .L_5e7c0                          #  75    0x5e708  6      
  nop                                  #  76    0x5e70e  1      
.L_5e780:                              #        0x5e70f  0      
  cmpb $0x50, %dl                      #  77    0x5e70f  3      
  jne .L_5e760                         #  78    0x5e712  6      
  movl %eax, %eax                      #  79    0x5e718  2      
  movzbl (%r15,%rax,1), %edi           #  80    0x5e71a  5      
  leal 0x1(%rax), %edx                 #  81    0x5e71f  3      
  xorl %esi, %esi                      #  82    0x5e722  2      
  addl $0x1, %ebx                      #  83    0x5e724  3      
  movl %r12d, %ecx                     #  84    0x5e727  3      
  andl $0x7f, %edi                     #  85    0x5e72a  3      
  nop                                  #  86    0x5e72d  1      
  callq .read_encoded_value_with_base  #  87    0x5e72e  5      
  movl %ebx, %ebx                      #  88    0x5e733  2      
  movzbl (%r15,%rbx,1), %edx           #  89    0x5e735  5      
  movl %eax, %eax                      #  90    0x5e73a  2      
  cmpb $0x52, %dl                      #  91    0x5e73c  3      
  jne .L_5e780                         #  92    0x5e73f  6      
  nop                                  #  93    0x5e745  1      
  nop                                  #  94    0x5e746  1      
.L_5e7c0:                              #        0x5e747  0      
  movl %eax, %eax                      #  95    0x5e747  2      
  movzbl (%r15,%rax,1), %eax           #  96    0x5e749  5      
  addl $0x18, %esp                     #  97    0x5e74e  3      
  addq %r15, %rsp                      #  98    0x5e751  3      
  popq %rbx                            #  99    0x5e754  2      
  popq %r12                            #  100   0x5e756  3      
  popq %r11                            #  101   0x5e759  3      
  andl $0xffffffe0, %r11d              #  102   0x5e75c  7      
  addq %r15, %r11                      #  103   0x5e763  3      
  jmpq %r11                            #  104   0x5e766  3      
  nop                                  #  105   0x5e769  1      
.L_5e7e0:                              #        0x5e76a  0      
  addl $0x1, %eax                      #  106   0x5e76a  3      
  jmpq .L_5e700                        #  107   0x5e76d  5      
  nop                                  #  108   0x5e772  1      
  nop                                  #  109   0x5e773  1      
                                                                
.size get_cie_encoding, .-get_cie_encoding

