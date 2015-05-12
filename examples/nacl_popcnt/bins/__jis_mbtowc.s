  .text
  .globl __jis_mbtowc
  .type __jis_mbtowc, @function

#! file-offset 0x7e040
#! rip-offset  0x7e040
#! capacity    704 bytes

# Text                                 #  Line  RIP      Bytes  
.__jis_mbtowc:                         #        0x7e040  0      
  movl %esi, %esi                      #  1     0x7e040  2      
  leal -0x24(%rsp), %eax               #  2     0x7e042  4      
  movl %edx, %edx                      #  3     0x7e046  2      
  testq %rsi, %rsi                     #  4     0x7e048  3      
  movq %rbx, -0x20(%rsp)               #  5     0x7e04b  5      
  movq %r12, -0x18(%rsp)               #  6     0x7e050  5      
  cmoveq %rax, %rsi                    #  7     0x7e055  4      
  testq %rdx, %rdx                     #  8     0x7e059  3      
  nop                                  #  9     0x7e05c  1      
  movq %r13, -0x10(%rsp)               #  10    0x7e05d  5      
  movq %r14, -0x8(%rsp)                #  11    0x7e062  5      
  movl %edi, %edi                      #  12    0x7e067  2      
  movl %r9d, %r9d                      #  13    0x7e069  3      
  jne .L_7e0c0                         #  14    0x7e06c  6      
  movl %r9d, %r9d                      #  15    0x7e072  3      
  movl $0x0, (%r15,%r9,1)              #  16    0x7e075  8      
  nop                                  #  17    0x7e07d  1      
  movl $0x1, %eax                      #  18    0x7e07e  5      
  nop                                  #  19    0x7e083  1      
  nop                                  #  20    0x7e084  1      
.L_7e0a0:                              #        0x7e085  0      
  movq -0x20(%rsp), %rbx               #  21    0x7e085  5      
  movq -0x18(%rsp), %r12               #  22    0x7e08a  5      
  movq -0x10(%rsp), %r13               #  23    0x7e08f  5      
  movq -0x8(%rsp), %r14                #  24    0x7e094  5      
  popq %r11                            #  25    0x7e099  3      
  andl $0xffffffe0, %r11d              #  26    0x7e09c  7      
  addq %r15, %r11                      #  27    0x7e0a3  3      
  jmpq %r11                            #  28    0x7e0a6  3      
.L_7e0c0:                              #        0x7e0a9  0      
  testl %ecx, %ecx                     #  29    0x7e0a9  2      
  movl $0xfffffffe, %eax               #  30    0x7e0ab  5      
  je .L_7e0a0                          #  31    0x7e0b0  6      
  movl %r9d, %r9d                      #  32    0x7e0b6  3      
  movl (%r15,%r9,1), %r11d             #  33    0x7e0b9  4      
  movl %edx, %r14d                     #  34    0x7e0bd  3      
  movl %edx, %r12d                     #  35    0x7e0c0  3      
  movl $0x1, %ebx                      #  36    0x7e0c3  5      
  nop                                  #  37    0x7e0c8  1      
.L_7e0e0:                              #        0x7e0c9  0      
  movl %r12d, %r13d                    #  38    0x7e0c9  3      
  leal -0x1(%rbx), %eax                #  39    0x7e0cc  3      
  movl $0x2, %r8d                      #  40    0x7e0cf  6      
  movl %r13d, %r13d                    #  41    0x7e0d5  3      
  movzbl (%r15,%r13,1), %r10d          #  42    0x7e0d8  5      
  cmpb $0x28, %r10b                    #  43    0x7e0dd  4      
  je .L_7e120                          #  44    0x7e0e1  6      
  ja .L_7e1e0                          #  45    0x7e0e7  6      
  xorb %r8b, %r8b                      #  46    0x7e0ed  3      
  cmpb $0x1b, %r10b                    #  47    0x7e0f0  4      
  je .L_7e120                          #  48    0x7e0f4  6      
  cmpb $0x24, %r10b                    #  49    0x7e0fa  4      
  movb $0x1, %r8b                      #  50    0x7e0fe  3      
  je .L_7e120                          #  51    0x7e101  6      
  testb %r10b, %r10b                   #  52    0x7e107  3      
  movb $0x6, %r8b                      #  53    0x7e10a  3      
  jne .L_7e220                         #  54    0x7e10d  6      
  xchgw %ax, %ax                       #  55    0x7e113  3      
.L_7e120:                              #        0x7e116  0      
  leal (%r11,%r11,8), %r11d            #  56    0x7e116  4      
  addl %r8d, %r11d                     #  57    0x7e11a  3      
  shll $0x2, %r11d                     #  58    0x7e11d  4      
  movslq %r11d, %r11                   #  59    0x7e121  3      
  movl %r11d, %r11d                    #  60    0x7e124  3      
  movl 0x100245a0(%r15,%r11,1), %r8d   #  61    0x7e127  8      
  nop                                  #  62    0x7e12f  1      
  movl %r11d, %r11d                    #  63    0x7e130  3      
  movl 0x100246c0(%r15,%r11,1), %r11d  #  64    0x7e133  8      
  cmpl $0x5, %r8d                      #  65    0x7e13b  4      
  jbe .L_7e180                         #  66    0x7e13f  6      
  movl %edi, %edi                      #  67    0x7e145  2      
  movl $0x54, (%r15,%rdi,1)            #  68    0x7e147  8      
  movl $0xffffffff, %eax               #  69    0x7e14f  5      
  jmpq .L_7e0a0                        #  70    0x7e154  5      
  nop                                  #  71    0x7e159  1      
  nop                                  #  72    0x7e15a  1      
.L_7e180:                              #        0x7e15b  0      
  movl %r8d, %r8d                      #  73    0x7e15b  3      
  movl %r8d, %r8d                      #  74    0x7e15e  3      
  movq 0x10024560(%r15,%r8,8), %r8     #  75    0x7e161  8      
  andl $0xffffffe0, %r8d               #  76    0x7e169  7      
  addq %r15, %r8                       #  77    0x7e170  3      
  jmpq %r8                             #  78    0x7e173  3      
  nop                                  #  79    0x7e176  1      
  movl %r9d, %r9d                      #  80    0x7e177  3      
  movb %r10b, 0x4(%r15,%r9,1)          #  81    0x7e17a  5      
  nop                                  #  82    0x7e17f  1      
  nop                                  #  83    0x7e180  1      
.L_7e1c0:                              #        0x7e181  0      
  addl $0x1, %r12d                     #  84    0x7e181  4      
  cmpl %ebx, %ecx                      #  85    0x7e185  2      
  leal 0x1(%rbx), %eax                 #  86    0x7e187  3      
  jbe .L_7e2e0                         #  87    0x7e18a  6      
  movl %eax, %ebx                      #  88    0x7e190  2      
  jmpq .L_7e0e0                        #  89    0x7e192  5      
  nop                                  #  90    0x7e197  1      
.L_7e1e0:                              #        0x7e198  0      
  cmpb $0x42, %r10b                    #  91    0x7e198  4      
  movl $0x4, %r8d                      #  92    0x7e19c  6      
  je .L_7e120                          #  93    0x7e1a2  6      
  cmpb $0x4a, %r10b                    #  94    0x7e1a8  4      
  movb $0x5, %r8b                      #  95    0x7e1ac  3      
  je .L_7e120                          #  96    0x7e1af  6      
  nop                                  #  97    0x7e1b5  1      
  cmpb $0x40, %r10b                    #  98    0x7e1b6  4      
  movb $0x3, %r8b                      #  99    0x7e1ba  3      
  je .L_7e120                          #  100   0x7e1bd  6      
  nop                                  #  101   0x7e1c3  1      
  nop                                  #  102   0x7e1c4  1      
.L_7e220:                              #        0x7e1c5  0      
  movzbl %r10b, %r8d                   #  103   0x7e1c5  4      
  subl $0x21, %r8d                     #  104   0x7e1c9  4      
  cmpl $0x5e, %r8d                     #  105   0x7e1cd  4      
  sbbl %r8d, %r8d                      #  106   0x7e1d1  3      
  addl $0x8, %r8d                      #  107   0x7e1d4  4      
  jmpq .L_7e120                        #  108   0x7e1d8  5      
  nop                                  #  109   0x7e1dd  1      
  leal (%rbx,%r14,1), %edx             #  110   0x7e1de  4      
  jmpq .L_7e1c0                        #  111   0x7e1e2  5      
  nop                                  #  112   0x7e1e7  1      
  nop                                  #  113   0x7e1e8  1      
  movl %r9d, %r9d                      #  114   0x7e1e9  3      
  movzbl 0x4(%r15,%r9,1), %edx         #  115   0x7e1ec  6      
  movl %r9d, %r9d                      #  116   0x7e1f2  3      
  movl $0x1, (%r15,%r9,1)              #  117   0x7e1f5  8      
  addl $0x1, %eax                      #  118   0x7e1fd  3      
  movl %r13d, %r13d                    #  119   0x7e200  3      
  movzbl (%r15,%r13,1), %ecx           #  120   0x7e203  5      
  nop                                  #  121   0x7e208  1      
  shll $0x8, %edx                      #  122   0x7e209  3      
  leal (%rcx,%rdx,1), %edx             #  123   0x7e20c  3      
  movl %esi, %esi                      #  124   0x7e20f  2      
  movl %edx, (%r15,%rsi,1)             #  125   0x7e211  4      
  jmpq .L_7e0a0                        #  126   0x7e215  5      
  nop                                  #  127   0x7e21a  1      
  movl %r9d, %r9d                      #  128   0x7e21b  3      
  movl $0x0, (%r15,%r9,1)              #  129   0x7e21e  8      
  movl %esi, %esi                      #  130   0x7e226  2      
  movl $0x0, (%r15,%rsi,1)             #  131   0x7e228  8      
  xorl %eax, %eax                      #  132   0x7e230  2      
  jmpq .L_7e0a0                        #  133   0x7e232  5      
  nop                                  #  134   0x7e237  1      
  movl %r9d, %r9d                      #  135   0x7e238  3      
  movl $0x0, (%r15,%r9,1)              #  136   0x7e23b  8      
  movl %edx, %edx                      #  137   0x7e243  2      
  movzbl (%r15,%rdx,1), %edx           #  138   0x7e245  5      
  addl $0x1, %eax                      #  139   0x7e24a  3      
  movl %esi, %esi                      #  140   0x7e24d  2      
  movl %edx, (%r15,%rsi,1)             #  141   0x7e24f  4      
  jmpq .L_7e0a0                        #  142   0x7e253  5      
.L_7e2e0:                              #        0x7e258  0      
  movl %r9d, %r9d                      #  143   0x7e258  3      
  movl %r11d, (%r15,%r9,1)             #  144   0x7e25b  4      
  movl $0xfffffffe, %eax               #  145   0x7e25f  5      
  jmpq .L_7e0a0                        #  146   0x7e264  5      
  nop                                  #  147   0x7e269  1      
                                                                
.size __jis_mbtowc, .-__jis_mbtowc

