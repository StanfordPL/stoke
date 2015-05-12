  .text
  .globl get_cie_encoding
  .type get_cie_encoding, @function

#! file-offset 0x5e640
#! rip-offset  0x5e640
#! capacity    480 bytes

# Text                                 #  Line  RIP      Bytes  
.get_cie_encoding:                     #        0x5e640  0      
  pushq %r12                           #  1     0x5e640  3      
  movl %edi, %r12d                     #  2     0x5e643  3      
  pushq %rbx                           #  3     0x5e646  2      
  subl $0x18, %esp                     #  4     0x5e648  3      
  addq %r15, %rsp                      #  5     0x5e64b  3      
  movl %r12d, %r12d                    #  6     0x5e64e  3      
  cmpb $0x7a, 0x9(%r15,%r12,1)         #  7     0x5e651  6      
  je .L_5e680                          #  8     0x5e657  6      
  nop                                  #  9     0x5e65d  1      
.L_5e660:                              #        0x5e65e  0      
  addl $0x18, %esp                     #  10    0x5e65e  3      
  addq %r15, %rsp                      #  11    0x5e661  3      
  xorl %eax, %eax                      #  12    0x5e664  2      
  popq %rbx                            #  13    0x5e666  2      
  popq %r12                            #  14    0x5e668  3      
  popq %r11                            #  15    0x5e66b  3      
  andl $0xffffffe0, %r11d              #  16    0x5e66e  7      
  addq %r15, %r11                      #  17    0x5e675  3      
  jmpq %r11                            #  18    0x5e678  3      
  nop                                  #  19    0x5e67b  1      
.L_5e680:                              #        0x5e67c  0      
  leal 0x9(%r12), %ebx                 #  20    0x5e67c  5      
  movl %ebx, %edi                      #  21    0x5e681  2      
  nop                                  #  22    0x5e683  1      
  nop                                  #  23    0x5e684  1      
  callq .strlen                        #  24    0x5e685  5      
  leal 0xa(%rax,%r12,1), %eax          #  25    0x5e68a  5      
  nop                                  #  26    0x5e68f  1      
  nop                                  #  27    0x5e690  1      
.L_5e6c0:                              #        0x5e691  0      
  movl %eax, %eax                      #  28    0x5e691  2      
  movzbl (%r15,%rax,1), %edx           #  29    0x5e693  5      
  addl $0x1, %eax                      #  30    0x5e698  3      
  testb %dl, %dl                       #  31    0x5e69b  2      
  js .L_5e6c0                          #  32    0x5e69d  6      
  nop                                  #  33    0x5e6a3  1      
  nop                                  #  34    0x5e6a4  1      
.L_5e6e0:                              #        0x5e6a5  0      
  movl %eax, %eax                      #  35    0x5e6a5  2      
  movzbl (%r15,%rax,1), %edx           #  36    0x5e6a7  5      
  addl $0x1, %eax                      #  37    0x5e6ac  3      
  testb %dl, %dl                       #  38    0x5e6af  2      
  js .L_5e6e0                          #  39    0x5e6b1  6      
  movl %r12d, %r12d                    #  40    0x5e6b7  3      
  cmpb $0x1, 0x8(%r15,%r12,1)          #  41    0x5e6ba  6      
  je .L_5e800                          #  42    0x5e6c0  6      
  nop                                  #  43    0x5e6c6  1      
.L_5e700:                              #        0x5e6c7  0      
  movl %eax, %eax                      #  44    0x5e6c7  2      
  movzbl (%r15,%rax,1), %edx           #  45    0x5e6c9  5      
  addl $0x1, %eax                      #  46    0x5e6ce  3      
  testb %dl, %dl                       #  47    0x5e6d1  2      
  js .L_5e700                          #  48    0x5e6d3  6      
  nop                                  #  49    0x5e6d9  1      
  nop                                  #  50    0x5e6da  1      
.L_5e720:                              #        0x5e6db  0      
  addl $0x1, %ebx                      #  51    0x5e6db  3      
  nop                                  #  52    0x5e6de  1      
  nop                                  #  53    0x5e6df  1      
.L_5e740:                              #        0x5e6e0  0      
  movl %eax, %eax                      #  54    0x5e6e0  2      
  movzbl (%r15,%rax,1), %edx           #  55    0x5e6e2  5      
  addl $0x1, %eax                      #  56    0x5e6e7  3      
  testb %dl, %dl                       #  57    0x5e6ea  2      
  js .L_5e740                          #  58    0x5e6ec  6      
  movl %ebx, %ebx                      #  59    0x5e6f2  2      
  movzbl (%r15,%rbx,1), %edx           #  60    0x5e6f4  5      
  leal 0xc(%rsp), %r12d                #  61    0x5e6f9  5      
  cmpb $0x52, %dl                      #  62    0x5e6fe  3      
  nop                                  #  63    0x5e701  1      
  jne .L_5e7a0                         #  64    0x5e702  6      
  jmpq .L_5e7e0                        #  65    0x5e708  5      
  nop                                  #  66    0x5e70d  1      
  nop                                  #  67    0x5e70e  1      
.L_5e780:                              #        0x5e70f  0      
  cmpb $0x4c, %dl                      #  68    0x5e70f  3      
  jne .L_5e660                         #  69    0x5e712  6      
  addl $0x1, %ebx                      #  70    0x5e718  3      
  addl $0x1, %eax                      #  71    0x5e71b  3      
  movl %ebx, %ebx                      #  72    0x5e71e  2      
  movzbl (%r15,%rbx,1), %edx           #  73    0x5e720  5      
  cmpb $0x52, %dl                      #  74    0x5e725  3      
  je .L_5e7e0                          #  75    0x5e728  6      
  nop                                  #  76    0x5e72e  1      
.L_5e7a0:                              #        0x5e72f  0      
  cmpb $0x50, %dl                      #  77    0x5e72f  3      
  jne .L_5e780                         #  78    0x5e732  6      
  movl %eax, %eax                      #  79    0x5e738  2      
  movzbl (%r15,%rax,1), %edi           #  80    0x5e73a  5      
  leal 0x1(%rax), %edx                 #  81    0x5e73f  3      
  xorl %esi, %esi                      #  82    0x5e742  2      
  addl $0x1, %ebx                      #  83    0x5e744  3      
  movl %r12d, %ecx                     #  84    0x5e747  3      
  andl $0x7f, %edi                     #  85    0x5e74a  3      
  nop                                  #  86    0x5e74d  1      
  callq .read_encoded_value_with_base  #  87    0x5e74e  5      
  movl %ebx, %ebx                      #  88    0x5e753  2      
  movzbl (%r15,%rbx,1), %edx           #  89    0x5e755  5      
  movl %eax, %eax                      #  90    0x5e75a  2      
  cmpb $0x52, %dl                      #  91    0x5e75c  3      
  jne .L_5e7a0                         #  92    0x5e75f  6      
  nop                                  #  93    0x5e765  1      
  nop                                  #  94    0x5e766  1      
.L_5e7e0:                              #        0x5e767  0      
  movl %eax, %eax                      #  95    0x5e767  2      
  movzbl (%r15,%rax,1), %eax           #  96    0x5e769  5      
  addl $0x18, %esp                     #  97    0x5e76e  3      
  addq %r15, %rsp                      #  98    0x5e771  3      
  popq %rbx                            #  99    0x5e774  2      
  popq %r12                            #  100   0x5e776  3      
  popq %r11                            #  101   0x5e779  3      
  andl $0xffffffe0, %r11d              #  102   0x5e77c  7      
  addq %r15, %r11                      #  103   0x5e783  3      
  jmpq %r11                            #  104   0x5e786  3      
  nop                                  #  105   0x5e789  1      
.L_5e800:                              #        0x5e78a  0      
  addl $0x1, %eax                      #  106   0x5e78a  3      
  jmpq .L_5e720                        #  107   0x5e78d  5      
  nop                                  #  108   0x5e792  1      
  nop                                  #  109   0x5e793  1      
                                                                
.size get_cie_encoding, .-get_cie_encoding

