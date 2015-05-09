  .text
  .globl __jis_mbtowc
  .type __jis_mbtowc, @function

#! file-offset 0x7e020
#! rip-offset  0x7e020
#! capacity    704 bytes

# Text                                 #  Line  RIP      Bytes  
.__jis_mbtowc:                         #        0x7e020  0      
  movl %esi, %esi                      #  1     0x7e020  2      
  leal -0x24(%rsp), %eax               #  2     0x7e022  4      
  movl %edx, %edx                      #  3     0x7e026  2      
  testq %rsi, %rsi                     #  4     0x7e028  3      
  movq %rbx, -0x20(%rsp)               #  5     0x7e02b  5      
  movq %r12, -0x18(%rsp)               #  6     0x7e030  5      
  cmoveq %rax, %rsi                    #  7     0x7e035  4      
  testq %rdx, %rdx                     #  8     0x7e039  3      
  nop                                  #  9     0x7e03c  1      
  movq %r13, -0x10(%rsp)               #  10    0x7e03d  5      
  movq %r14, -0x8(%rsp)                #  11    0x7e042  5      
  movl %edi, %edi                      #  12    0x7e047  2      
  movl %r9d, %r9d                      #  13    0x7e049  3      
  jne .L_7e0a0                         #  14    0x7e04c  6      
  movl %r9d, %r9d                      #  15    0x7e052  3      
  movl $0x0, (%r15,%r9,1)              #  16    0x7e055  8      
  nop                                  #  17    0x7e05d  1      
  movl $0x1, %eax                      #  18    0x7e05e  5      
  nop                                  #  19    0x7e063  1      
  nop                                  #  20    0x7e064  1      
.L_7e080:                              #        0x7e065  0      
  movq -0x20(%rsp), %rbx               #  21    0x7e065  5      
  movq -0x18(%rsp), %r12               #  22    0x7e06a  5      
  movq -0x10(%rsp), %r13               #  23    0x7e06f  5      
  movq -0x8(%rsp), %r14                #  24    0x7e074  5      
  popq %r11                            #  25    0x7e079  3      
  andl $0xffffffe0, %r11d              #  26    0x7e07c  7      
  addq %r15, %r11                      #  27    0x7e083  3      
  jmpq %r11                            #  28    0x7e086  3      
.L_7e0a0:                              #        0x7e089  0      
  testl %ecx, %ecx                     #  29    0x7e089  2      
  movl $0xfffffffe, %eax               #  30    0x7e08b  5      
  je .L_7e080                          #  31    0x7e090  6      
  movl %r9d, %r9d                      #  32    0x7e096  3      
  movl (%r15,%r9,1), %r11d             #  33    0x7e099  4      
  movl %edx, %r14d                     #  34    0x7e09d  3      
  movl %edx, %r12d                     #  35    0x7e0a0  3      
  movl $0x1, %ebx                      #  36    0x7e0a3  5      
  nop                                  #  37    0x7e0a8  1      
.L_7e0c0:                              #        0x7e0a9  0      
  movl %r12d, %r13d                    #  38    0x7e0a9  3      
  leal -0x1(%rbx), %eax                #  39    0x7e0ac  3      
  movl $0x2, %r8d                      #  40    0x7e0af  6      
  movl %r13d, %r13d                    #  41    0x7e0b5  3      
  movzbl (%r15,%r13,1), %r10d          #  42    0x7e0b8  5      
  cmpb $0x28, %r10b                    #  43    0x7e0bd  4      
  je .L_7e100                          #  44    0x7e0c1  6      
  ja .L_7e1c0                          #  45    0x7e0c7  6      
  xorb %r8b, %r8b                      #  46    0x7e0cd  3      
  cmpb $0x1b, %r10b                    #  47    0x7e0d0  4      
  je .L_7e100                          #  48    0x7e0d4  6      
  cmpb $0x24, %r10b                    #  49    0x7e0da  4      
  movb $0x1, %r8b                      #  50    0x7e0de  3      
  je .L_7e100                          #  51    0x7e0e1  6      
  testb %r10b, %r10b                   #  52    0x7e0e7  3      
  movb $0x6, %r8b                      #  53    0x7e0ea  3      
  jne .L_7e200                         #  54    0x7e0ed  6      
  xchgw %ax, %ax                       #  55    0x7e0f3  3      
.L_7e100:                              #        0x7e0f6  0      
  leal (%r11,%r11,8), %r11d            #  56    0x7e0f6  4      
  addl %r8d, %r11d                     #  57    0x7e0fa  3      
  shll $0x2, %r11d                     #  58    0x7e0fd  4      
  movslq %r11d, %r11                   #  59    0x7e101  3      
  movl %r11d, %r11d                    #  60    0x7e104  3      
  movl 0x100245a0(%r15,%r11,1), %r8d   #  61    0x7e107  8      
  nop                                  #  62    0x7e10f  1      
  movl %r11d, %r11d                    #  63    0x7e110  3      
  movl 0x100246c0(%r15,%r11,1), %r11d  #  64    0x7e113  8      
  cmpl $0x5, %r8d                      #  65    0x7e11b  4      
  jbe .L_7e160                         #  66    0x7e11f  6      
  movl %edi, %edi                      #  67    0x7e125  2      
  movl $0x54, (%r15,%rdi,1)            #  68    0x7e127  8      
  movl $0xffffffff, %eax               #  69    0x7e12f  5      
  jmpq .L_7e080                        #  70    0x7e134  5      
  nop                                  #  71    0x7e139  1      
  nop                                  #  72    0x7e13a  1      
.L_7e160:                              #        0x7e13b  0      
  movl %r8d, %r8d                      #  73    0x7e13b  3      
  movl %r8d, %r8d                      #  74    0x7e13e  3      
  movq 0x10024560(%r15,%r8,8), %r8     #  75    0x7e141  8      
  andl $0xffffffe0, %r8d               #  76    0x7e149  7      
  addq %r15, %r8                       #  77    0x7e150  3      
  jmpq %r8                             #  78    0x7e153  3      
  nop                                  #  79    0x7e156  1      
  movl %r9d, %r9d                      #  80    0x7e157  3      
  movb %r10b, 0x4(%r15,%r9,1)          #  81    0x7e15a  5      
  nop                                  #  82    0x7e15f  1      
  nop                                  #  83    0x7e160  1      
.L_7e1a0:                              #        0x7e161  0      
  addl $0x1, %r12d                     #  84    0x7e161  4      
  cmpl %ebx, %ecx                      #  85    0x7e165  2      
  leal 0x1(%rbx), %eax                 #  86    0x7e167  3      
  jbe .L_7e2c0                         #  87    0x7e16a  6      
  movl %eax, %ebx                      #  88    0x7e170  2      
  jmpq .L_7e0c0                        #  89    0x7e172  5      
  nop                                  #  90    0x7e177  1      
.L_7e1c0:                              #        0x7e178  0      
  cmpb $0x42, %r10b                    #  91    0x7e178  4      
  movl $0x4, %r8d                      #  92    0x7e17c  6      
  je .L_7e100                          #  93    0x7e182  6      
  cmpb $0x4a, %r10b                    #  94    0x7e188  4      
  movb $0x5, %r8b                      #  95    0x7e18c  3      
  je .L_7e100                          #  96    0x7e18f  6      
  nop                                  #  97    0x7e195  1      
  cmpb $0x40, %r10b                    #  98    0x7e196  4      
  movb $0x3, %r8b                      #  99    0x7e19a  3      
  je .L_7e100                          #  100   0x7e19d  6      
  nop                                  #  101   0x7e1a3  1      
  nop                                  #  102   0x7e1a4  1      
.L_7e200:                              #        0x7e1a5  0      
  movzbl %r10b, %r8d                   #  103   0x7e1a5  4      
  subl $0x21, %r8d                     #  104   0x7e1a9  4      
  cmpl $0x5e, %r8d                     #  105   0x7e1ad  4      
  sbbl %r8d, %r8d                      #  106   0x7e1b1  3      
  addl $0x8, %r8d                      #  107   0x7e1b4  4      
  jmpq .L_7e100                        #  108   0x7e1b8  5      
  nop                                  #  109   0x7e1bd  1      
  leal (%rbx,%r14,1), %edx             #  110   0x7e1be  4      
  jmpq .L_7e1a0                        #  111   0x7e1c2  5      
  nop                                  #  112   0x7e1c7  1      
  nop                                  #  113   0x7e1c8  1      
  movl %r9d, %r9d                      #  114   0x7e1c9  3      
  movzbl 0x4(%r15,%r9,1), %edx         #  115   0x7e1cc  6      
  movl %r9d, %r9d                      #  116   0x7e1d2  3      
  movl $0x1, (%r15,%r9,1)              #  117   0x7e1d5  8      
  addl $0x1, %eax                      #  118   0x7e1dd  3      
  movl %r13d, %r13d                    #  119   0x7e1e0  3      
  movzbl (%r15,%r13,1), %ecx           #  120   0x7e1e3  5      
  nop                                  #  121   0x7e1e8  1      
  shll $0x8, %edx                      #  122   0x7e1e9  3      
  leal (%rcx,%rdx,1), %edx             #  123   0x7e1ec  3      
  movl %esi, %esi                      #  124   0x7e1ef  2      
  movl %edx, (%r15,%rsi,1)             #  125   0x7e1f1  4      
  jmpq .L_7e080                        #  126   0x7e1f5  5      
  nop                                  #  127   0x7e1fa  1      
  movl %r9d, %r9d                      #  128   0x7e1fb  3      
  movl $0x0, (%r15,%r9,1)              #  129   0x7e1fe  8      
  movl %esi, %esi                      #  130   0x7e206  2      
  movl $0x0, (%r15,%rsi,1)             #  131   0x7e208  8      
  xorl %eax, %eax                      #  132   0x7e210  2      
  jmpq .L_7e080                        #  133   0x7e212  5      
  nop                                  #  134   0x7e217  1      
  movl %r9d, %r9d                      #  135   0x7e218  3      
  movl $0x0, (%r15,%r9,1)              #  136   0x7e21b  8      
  movl %edx, %edx                      #  137   0x7e223  2      
  movzbl (%r15,%rdx,1), %edx           #  138   0x7e225  5      
  addl $0x1, %eax                      #  139   0x7e22a  3      
  movl %esi, %esi                      #  140   0x7e22d  2      
  movl %edx, (%r15,%rsi,1)             #  141   0x7e22f  4      
  jmpq .L_7e080                        #  142   0x7e233  5      
.L_7e2c0:                              #        0x7e238  0      
  movl %r9d, %r9d                      #  143   0x7e238  3      
  movl %r11d, (%r15,%r9,1)             #  144   0x7e23b  4      
  movl $0xfffffffe, %eax               #  145   0x7e23f  5      
  jmpq .L_7e080                        #  146   0x7e244  5      
  nop                                  #  147   0x7e249  1      
                                                                
.size __jis_mbtowc, .-__jis_mbtowc

