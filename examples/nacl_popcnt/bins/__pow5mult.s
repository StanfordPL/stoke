  .text
  .globl __pow5mult
  .type __pow5mult, @function

#! file-offset 0x7fa80
#! rip-offset  0x7fa80
#! capacity    512 bytes

# Text                                #  Line  RIP      Bytes  
.__pow5mult:                          #        0x7fa80  0      
  pushq %r14                          #  1     0x7fa80  3      
  movl %edx, %eax                     #  2     0x7fa83  2      
  pushq %r13                          #  3     0x7fa85  3      
  movl %edx, %r13d                    #  4     0x7fa88  3      
  pushq %r12                          #  5     0x7fa8b  3      
  movl %edi, %r12d                    #  6     0x7fa8e  3      
  pushq %rbx                          #  7     0x7fa91  2      
  movl %esi, %ebx                     #  8     0x7fa93  2      
  subl $0x8, %esp                     #  9     0x7fa95  3      
  addq %r15, %rsp                     #  10    0x7fa98  3      
  andl $0x3, %eax                     #  11    0x7fa9b  3      
  jne .L_7fc00                        #  12    0x7fa9e  6      
.L_7faa0:                             #        0x7faa4  0      
  sarl $0x2, %r13d                    #  13    0x7faa4  4      
  testl %r13d, %r13d                  #  14    0x7faa8  3      
  je .L_7fba0                         #  15    0x7faab  6      
  movl %r12d, %r12d                   #  16    0x7fab1  3      
  movl 0x48(%r15,%r12,1), %r14d       #  17    0x7fab4  5      
  testq %r14, %r14                    #  18    0x7fab9  3      
  jne .L_7fb20                        #  19    0x7fabc  6      
  jmpq .L_7fc40                       #  20    0x7fac2  5      
  nop                                 #  21    0x7fac7  1      
.L_7fac0:                             #        0x7fac8  0      
  sarl $0x1, %r13d                    #  22    0x7fac8  3      
  je .L_7fba0                         #  23    0x7facb  6      
  nop                                 #  24    0x7fad1  1      
  nop                                 #  25    0x7fad2  1      
.L_7fae0:                             #        0x7fad3  0      
  movl %r14d, %r14d                   #  26    0x7fad3  3      
  movl (%r15,%r14,1), %eax            #  27    0x7fad6  4      
  testq %rax, %rax                    #  28    0x7fada  3      
  je .L_7fbc0                         #  29    0x7fadd  6      
  nop                                 #  30    0x7fae3  1      
  nop                                 #  31    0x7fae4  1      
.L_7fb00:                             #        0x7fae5  0      
  movq %rax, %r14                     #  32    0x7fae5  3      
  nop                                 #  33    0x7fae8  1      
  nop                                 #  34    0x7fae9  1      
.L_7fb20:                             #        0x7faea  0      
  testb $0x1, %r13b                   #  35    0x7faea  4      
  je .L_7fac0                         #  36    0x7faee  6      
  movl %r14d, %edx                    #  37    0x7faf4  3      
  movl %ebx, %esi                     #  38    0x7faf7  2      
  movl %r12d, %edi                    #  39    0x7faf9  3      
  nop                                 #  40    0x7fafc  1      
  callq .__multiply                   #  41    0x7fafd  5      
  testq %rbx, %rbx                    #  42    0x7fb02  3      
  movl %eax, %eax                     #  43    0x7fb05  2      
  je .L_7fb80                         #  44    0x7fb07  6      
  movl %ebx, %ebx                     #  45    0x7fb0d  2      
  movl 0x4(%r15,%rbx,1), %edx         #  46    0x7fb0f  5      
  shll $0x2, %edx                     #  47    0x7fb14  3      
  movl %r12d, %r12d                   #  48    0x7fb17  3      
  addl 0x4c(%r15,%r12,1), %edx        #  49    0x7fb1a  5      
  movl %edx, %edx                     #  50    0x7fb1f  2      
  movl (%r15,%rdx,1), %ecx            #  51    0x7fb21  4      
  nop                                 #  52    0x7fb25  1      
  movl %ebx, %ebx                     #  53    0x7fb26  2      
  movl %ecx, (%r15,%rbx,1)            #  54    0x7fb28  4      
  movl %edx, %edx                     #  55    0x7fb2c  2      
  movl %ebx, (%r15,%rdx,1)            #  56    0x7fb2e  4      
  nop                                 #  57    0x7fb32  1      
  nop                                 #  58    0x7fb33  1      
.L_7fb80:                             #        0x7fb34  0      
  sarl $0x1, %r13d                    #  59    0x7fb34  3      
  movq %rax, %rbx                     #  60    0x7fb37  3      
  jne .L_7fae0                        #  61    0x7fb3a  6      
  nop                                 #  62    0x7fb40  1      
  nop                                 #  63    0x7fb41  1      
.L_7fba0:                             #        0x7fb42  0      
  addl $0x8, %esp                     #  64    0x7fb42  3      
  addq %r15, %rsp                     #  65    0x7fb45  3      
  movl %ebx, %eax                     #  66    0x7fb48  2      
  popq %rbx                           #  67    0x7fb4a  2      
  popq %r12                           #  68    0x7fb4c  3      
  popq %r13                           #  69    0x7fb4f  3      
  popq %r14                           #  70    0x7fb52  3      
  popq %r11                           #  71    0x7fb55  3      
  andl $0xffffffe0, %r11d             #  72    0x7fb58  7      
  addq %r15, %r11                     #  73    0x7fb5f  3      
  jmpq %r11                           #  74    0x7fb62  3      
  nop                                 #  75    0x7fb65  1      
.L_7fbc0:                             #        0x7fb66  0      
  movl %r14d, %edx                    #  76    0x7fb66  3      
  movl %r14d, %esi                    #  77    0x7fb69  3      
  movl %r12d, %edi                    #  78    0x7fb6c  3      
  nop                                 #  79    0x7fb6f  1      
  nop                                 #  80    0x7fb70  1      
  callq .__multiply                   #  81    0x7fb71  5      
  movl %eax, %eax                     #  82    0x7fb76  2      
  movl %r14d, %r14d                   #  83    0x7fb78  3      
  movl %eax, (%r15,%r14,1)            #  84    0x7fb7b  4      
  movl %eax, %eax                     #  85    0x7fb7f  2      
  movl $0x0, (%r15,%rax,1)            #  86    0x7fb81  8      
  jmpq .L_7fb00                       #  87    0x7fb89  5      
  nop                                 #  88    0x7fb8e  1      
.L_7fc00:                             #        0x7fb8f  0      
  leal -0x4(,%rax,4), %eax            #  89    0x7fb8f  7      
  movl %ebx, %esi                     #  90    0x7fb96  2      
  xorl %ecx, %ecx                     #  91    0x7fb98  2      
  movl %r12d, %edi                    #  92    0x7fb9a  3      
  cltq                                #  93    0x7fb9d  2      
  movl %eax, %eax                     #  94    0x7fb9f  2      
  movl 0x10024928(%r15,%rax,1), %edx  #  95    0x7fba1  8      
  nop                                 #  96    0x7fba9  1      
  callq .__multadd                    #  97    0x7fbaa  5      
  movl %eax, %ebx                     #  98    0x7fbaf  2      
  jmpq .L_7faa0                       #  99    0x7fbb1  5      
  nop                                 #  100   0x7fbb6  1      
  nop                                 #  101   0x7fbb7  1      
.L_7fc40:                             #        0x7fbb8  0      
  movl $0x271, %esi                   #  102   0x7fbb8  5      
  movl %r12d, %edi                    #  103   0x7fbbd  3      
  nop                                 #  104   0x7fbc0  1      
  nop                                 #  105   0x7fbc1  1      
  callq .__i2b                        #  106   0x7fbc2  5      
  movl %eax, %r14d                    #  107   0x7fbc7  3      
  movl %r12d, %r12d                   #  108   0x7fbca  3      
  movl %r14d, 0x48(%r15,%r12,1)       #  109   0x7fbcd  5      
  movl %r14d, %r14d                   #  110   0x7fbd2  3      
  movl $0x0, (%r15,%r14,1)            #  111   0x7fbd5  8      
  jmpq .L_7fb20                       #  112   0x7fbdd  5      
  nop                                 #  113   0x7fbe2  1      
                                                               
.size __pow5mult, .-__pow5mult

