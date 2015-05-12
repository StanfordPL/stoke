  .text
  .globl __pow5mult
  .type __pow5mult, @function

#! file-offset 0x7fa00
#! rip-offset  0x7fa00
#! capacity    512 bytes

# Text                                #  Line  RIP      Bytes  
.__pow5mult:                          #        0x7fa00  0      
  pushq %r14                          #  1     0x7fa00  3      
  movl %edx, %eax                     #  2     0x7fa03  2      
  pushq %r13                          #  3     0x7fa05  3      
  movl %edx, %r13d                    #  4     0x7fa08  3      
  pushq %r12                          #  5     0x7fa0b  3      
  movl %edi, %r12d                    #  6     0x7fa0e  3      
  pushq %rbx                          #  7     0x7fa11  2      
  movl %esi, %ebx                     #  8     0x7fa13  2      
  subl $0x8, %esp                     #  9     0x7fa15  3      
  addq %r15, %rsp                     #  10    0x7fa18  3      
  andl $0x3, %eax                     #  11    0x7fa1b  3      
  jne .L_7fb80                        #  12    0x7fa1e  6      
.L_7fa20:                             #        0x7fa24  0      
  sarl $0x2, %r13d                    #  13    0x7fa24  4      
  testl %r13d, %r13d                  #  14    0x7fa28  3      
  je .L_7fb20                         #  15    0x7fa2b  6      
  movl %r12d, %r12d                   #  16    0x7fa31  3      
  movl 0x48(%r15,%r12,1), %r14d       #  17    0x7fa34  5      
  testq %r14, %r14                    #  18    0x7fa39  3      
  jne .L_7faa0                        #  19    0x7fa3c  6      
  jmpq .L_7fbc0                       #  20    0x7fa42  5      
  nop                                 #  21    0x7fa47  1      
.L_7fa40:                             #        0x7fa48  0      
  sarl $0x1, %r13d                    #  22    0x7fa48  3      
  je .L_7fb20                         #  23    0x7fa4b  6      
  nop                                 #  24    0x7fa51  1      
  nop                                 #  25    0x7fa52  1      
.L_7fa60:                             #        0x7fa53  0      
  movl %r14d, %r14d                   #  26    0x7fa53  3      
  movl (%r15,%r14,1), %eax            #  27    0x7fa56  4      
  testq %rax, %rax                    #  28    0x7fa5a  3      
  je .L_7fb40                         #  29    0x7fa5d  6      
  nop                                 #  30    0x7fa63  1      
  nop                                 #  31    0x7fa64  1      
.L_7fa80:                             #        0x7fa65  0      
  movq %rax, %r14                     #  32    0x7fa65  3      
  nop                                 #  33    0x7fa68  1      
  nop                                 #  34    0x7fa69  1      
.L_7faa0:                             #        0x7fa6a  0      
  testb $0x1, %r13b                   #  35    0x7fa6a  4      
  je .L_7fa40                         #  36    0x7fa6e  6      
  movl %r14d, %edx                    #  37    0x7fa74  3      
  movl %ebx, %esi                     #  38    0x7fa77  2      
  movl %r12d, %edi                    #  39    0x7fa79  3      
  nop                                 #  40    0x7fa7c  1      
  callq .__multiply                   #  41    0x7fa7d  5      
  testq %rbx, %rbx                    #  42    0x7fa82  3      
  movl %eax, %eax                     #  43    0x7fa85  2      
  je .L_7fb00                         #  44    0x7fa87  6      
  movl %ebx, %ebx                     #  45    0x7fa8d  2      
  movl 0x4(%r15,%rbx,1), %edx         #  46    0x7fa8f  5      
  shll $0x2, %edx                     #  47    0x7fa94  3      
  movl %r12d, %r12d                   #  48    0x7fa97  3      
  addl 0x4c(%r15,%r12,1), %edx        #  49    0x7fa9a  5      
  movl %edx, %edx                     #  50    0x7fa9f  2      
  movl (%r15,%rdx,1), %ecx            #  51    0x7faa1  4      
  nop                                 #  52    0x7faa5  1      
  movl %ebx, %ebx                     #  53    0x7faa6  2      
  movl %ecx, (%r15,%rbx,1)            #  54    0x7faa8  4      
  movl %edx, %edx                     #  55    0x7faac  2      
  movl %ebx, (%r15,%rdx,1)            #  56    0x7faae  4      
  nop                                 #  57    0x7fab2  1      
  nop                                 #  58    0x7fab3  1      
.L_7fb00:                             #        0x7fab4  0      
  sarl $0x1, %r13d                    #  59    0x7fab4  3      
  movq %rax, %rbx                     #  60    0x7fab7  3      
  jne .L_7fa60                        #  61    0x7faba  6      
  nop                                 #  62    0x7fac0  1      
  nop                                 #  63    0x7fac1  1      
.L_7fb20:                             #        0x7fac2  0      
  addl $0x8, %esp                     #  64    0x7fac2  3      
  addq %r15, %rsp                     #  65    0x7fac5  3      
  movl %ebx, %eax                     #  66    0x7fac8  2      
  popq %rbx                           #  67    0x7faca  2      
  popq %r12                           #  68    0x7facc  3      
  popq %r13                           #  69    0x7facf  3      
  popq %r14                           #  70    0x7fad2  3      
  popq %r11                           #  71    0x7fad5  3      
  andl $0xffffffe0, %r11d             #  72    0x7fad8  7      
  addq %r15, %r11                     #  73    0x7fadf  3      
  jmpq %r11                           #  74    0x7fae2  3      
  nop                                 #  75    0x7fae5  1      
.L_7fb40:                             #        0x7fae6  0      
  movl %r14d, %edx                    #  76    0x7fae6  3      
  movl %r14d, %esi                    #  77    0x7fae9  3      
  movl %r12d, %edi                    #  78    0x7faec  3      
  nop                                 #  79    0x7faef  1      
  nop                                 #  80    0x7faf0  1      
  callq .__multiply                   #  81    0x7faf1  5      
  movl %eax, %eax                     #  82    0x7faf6  2      
  movl %r14d, %r14d                   #  83    0x7faf8  3      
  movl %eax, (%r15,%r14,1)            #  84    0x7fafb  4      
  movl %eax, %eax                     #  85    0x7faff  2      
  movl $0x0, (%r15,%rax,1)            #  86    0x7fb01  8      
  jmpq .L_7fa80                       #  87    0x7fb09  5      
  nop                                 #  88    0x7fb0e  1      
.L_7fb80:                             #        0x7fb0f  0      
  leal -0x4(,%rax,4), %eax            #  89    0x7fb0f  7      
  movl %ebx, %esi                     #  90    0x7fb16  2      
  xorl %ecx, %ecx                     #  91    0x7fb18  2      
  movl %r12d, %edi                    #  92    0x7fb1a  3      
  cltq                                #  93    0x7fb1d  2      
  movl %eax, %eax                     #  94    0x7fb1f  2      
  movl 0x10024928(%r15,%rax,1), %edx  #  95    0x7fb21  8      
  nop                                 #  96    0x7fb29  1      
  callq .__multadd                    #  97    0x7fb2a  5      
  movl %eax, %ebx                     #  98    0x7fb2f  2      
  jmpq .L_7fa20                       #  99    0x7fb31  5      
  nop                                 #  100   0x7fb36  1      
  nop                                 #  101   0x7fb37  1      
.L_7fbc0:                             #        0x7fb38  0      
  movl $0x271, %esi                   #  102   0x7fb38  5      
  movl %r12d, %edi                    #  103   0x7fb3d  3      
  nop                                 #  104   0x7fb40  1      
  nop                                 #  105   0x7fb41  1      
  callq .__i2b                        #  106   0x7fb42  5      
  movl %eax, %r14d                    #  107   0x7fb47  3      
  movl %r12d, %r12d                   #  108   0x7fb4a  3      
  movl %r14d, 0x48(%r15,%r12,1)       #  109   0x7fb4d  5      
  movl %r14d, %r14d                   #  110   0x7fb52  3      
  movl $0x0, (%r15,%r14,1)            #  111   0x7fb55  8      
  jmpq .L_7faa0                       #  112   0x7fb5d  5      
  nop                                 #  113   0x7fb62  1      
                                                               
.size __pow5mult, .-__pow5mult

