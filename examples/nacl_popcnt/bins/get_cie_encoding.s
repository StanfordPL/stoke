  .text
  .globl get_cie_encoding
  .type get_cie_encoding, @function

#! file-offset 0x5e6c0
#! rip-offset  0x5e6c0
#! capacity    480 bytes

# Text                                 #  Line  RIP      Bytes  
.get_cie_encoding:                     #        0x5e6c0  0      
  pushq %r12                           #  1     0x5e6c0  3      
  movl %edi, %r12d                     #  2     0x5e6c3  3      
  pushq %rbx                           #  3     0x5e6c6  2      
  subl $0x18, %esp                     #  4     0x5e6c8  3      
  addq %r15, %rsp                      #  5     0x5e6cb  3      
  movl %r12d, %r12d                    #  6     0x5e6ce  3      
  cmpb $0x7a, 0x9(%r15,%r12,1)         #  7     0x5e6d1  6      
  je .L_5e700                          #  8     0x5e6d7  6      
  nop                                  #  9     0x5e6dd  1      
.L_5e6e0:                              #        0x5e6de  0      
  addl $0x18, %esp                     #  10    0x5e6de  3      
  addq %r15, %rsp                      #  11    0x5e6e1  3      
  xorl %eax, %eax                      #  12    0x5e6e4  2      
  popq %rbx                            #  13    0x5e6e6  2      
  popq %r12                            #  14    0x5e6e8  3      
  popq %r11                            #  15    0x5e6eb  3      
  andl $0xffffffe0, %r11d              #  16    0x5e6ee  7      
  addq %r15, %r11                      #  17    0x5e6f5  3      
  jmpq %r11                            #  18    0x5e6f8  3      
  nop                                  #  19    0x5e6fb  1      
.L_5e700:                              #        0x5e6fc  0      
  leal 0x9(%r12), %ebx                 #  20    0x5e6fc  5      
  movl %ebx, %edi                      #  21    0x5e701  2      
  nop                                  #  22    0x5e703  1      
  nop                                  #  23    0x5e704  1      
  callq .strlen                        #  24    0x5e705  5      
  leal 0xa(%rax,%r12,1), %eax          #  25    0x5e70a  5      
  nop                                  #  26    0x5e70f  1      
  nop                                  #  27    0x5e710  1      
.L_5e740:                              #        0x5e711  0      
  movl %eax, %eax                      #  28    0x5e711  2      
  movzbl (%r15,%rax,1), %edx           #  29    0x5e713  5      
  addl $0x1, %eax                      #  30    0x5e718  3      
  testb %dl, %dl                       #  31    0x5e71b  2      
  js .L_5e740                          #  32    0x5e71d  6      
  nop                                  #  33    0x5e723  1      
  nop                                  #  34    0x5e724  1      
.L_5e760:                              #        0x5e725  0      
  movl %eax, %eax                      #  35    0x5e725  2      
  movzbl (%r15,%rax,1), %edx           #  36    0x5e727  5      
  addl $0x1, %eax                      #  37    0x5e72c  3      
  testb %dl, %dl                       #  38    0x5e72f  2      
  js .L_5e760                          #  39    0x5e731  6      
  movl %r12d, %r12d                    #  40    0x5e737  3      
  cmpb $0x1, 0x8(%r15,%r12,1)          #  41    0x5e73a  6      
  je .L_5e880                          #  42    0x5e740  6      
  nop                                  #  43    0x5e746  1      
.L_5e780:                              #        0x5e747  0      
  movl %eax, %eax                      #  44    0x5e747  2      
  movzbl (%r15,%rax,1), %edx           #  45    0x5e749  5      
  addl $0x1, %eax                      #  46    0x5e74e  3      
  testb %dl, %dl                       #  47    0x5e751  2      
  js .L_5e780                          #  48    0x5e753  6      
  nop                                  #  49    0x5e759  1      
  nop                                  #  50    0x5e75a  1      
.L_5e7a0:                              #        0x5e75b  0      
  addl $0x1, %ebx                      #  51    0x5e75b  3      
  nop                                  #  52    0x5e75e  1      
  nop                                  #  53    0x5e75f  1      
.L_5e7c0:                              #        0x5e760  0      
  movl %eax, %eax                      #  54    0x5e760  2      
  movzbl (%r15,%rax,1), %edx           #  55    0x5e762  5      
  addl $0x1, %eax                      #  56    0x5e767  3      
  testb %dl, %dl                       #  57    0x5e76a  2      
  js .L_5e7c0                          #  58    0x5e76c  6      
  movl %ebx, %ebx                      #  59    0x5e772  2      
  movzbl (%r15,%rbx,1), %edx           #  60    0x5e774  5      
  leal 0xc(%rsp), %r12d                #  61    0x5e779  5      
  cmpb $0x52, %dl                      #  62    0x5e77e  3      
  nop                                  #  63    0x5e781  1      
  jne .L_5e820                         #  64    0x5e782  6      
  jmpq .L_5e860                        #  65    0x5e788  5      
  nop                                  #  66    0x5e78d  1      
  nop                                  #  67    0x5e78e  1      
.L_5e800:                              #        0x5e78f  0      
  cmpb $0x4c, %dl                      #  68    0x5e78f  3      
  jne .L_5e6e0                         #  69    0x5e792  6      
  addl $0x1, %ebx                      #  70    0x5e798  3      
  addl $0x1, %eax                      #  71    0x5e79b  3      
  movl %ebx, %ebx                      #  72    0x5e79e  2      
  movzbl (%r15,%rbx,1), %edx           #  73    0x5e7a0  5      
  cmpb $0x52, %dl                      #  74    0x5e7a5  3      
  je .L_5e860                          #  75    0x5e7a8  6      
  nop                                  #  76    0x5e7ae  1      
.L_5e820:                              #        0x5e7af  0      
  cmpb $0x50, %dl                      #  77    0x5e7af  3      
  jne .L_5e800                         #  78    0x5e7b2  6      
  movl %eax, %eax                      #  79    0x5e7b8  2      
  movzbl (%r15,%rax,1), %edi           #  80    0x5e7ba  5      
  leal 0x1(%rax), %edx                 #  81    0x5e7bf  3      
  xorl %esi, %esi                      #  82    0x5e7c2  2      
  addl $0x1, %ebx                      #  83    0x5e7c4  3      
  movl %r12d, %ecx                     #  84    0x5e7c7  3      
  andl $0x7f, %edi                     #  85    0x5e7ca  3      
  nop                                  #  86    0x5e7cd  1      
  callq .read_encoded_value_with_base  #  87    0x5e7ce  5      
  movl %ebx, %ebx                      #  88    0x5e7d3  2      
  movzbl (%r15,%rbx,1), %edx           #  89    0x5e7d5  5      
  movl %eax, %eax                      #  90    0x5e7da  2      
  cmpb $0x52, %dl                      #  91    0x5e7dc  3      
  jne .L_5e820                         #  92    0x5e7df  6      
  nop                                  #  93    0x5e7e5  1      
  nop                                  #  94    0x5e7e6  1      
.L_5e860:                              #        0x5e7e7  0      
  movl %eax, %eax                      #  95    0x5e7e7  2      
  movzbl (%r15,%rax,1), %eax           #  96    0x5e7e9  5      
  addl $0x18, %esp                     #  97    0x5e7ee  3      
  addq %r15, %rsp                      #  98    0x5e7f1  3      
  popq %rbx                            #  99    0x5e7f4  2      
  popq %r12                            #  100   0x5e7f6  3      
  popq %r11                            #  101   0x5e7f9  3      
  andl $0xffffffe0, %r11d              #  102   0x5e7fc  7      
  addq %r15, %r11                      #  103   0x5e803  3      
  jmpq %r11                            #  104   0x5e806  3      
  nop                                  #  105   0x5e809  1      
.L_5e880:                              #        0x5e80a  0      
  addl $0x1, %eax                      #  106   0x5e80a  3      
  jmpq .L_5e7a0                        #  107   0x5e80d  5      
  nop                                  #  108   0x5e812  1      
  nop                                  #  109   0x5e813  1      
                                                                
.size get_cie_encoding, .-get_cie_encoding

