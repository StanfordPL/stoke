  .text
  .globl __jis_mbtowc
  .type __jis_mbtowc, @function

#! file-offset 0x7e0c0
#! rip-offset  0x7e0c0
#! capacity    704 bytes

# Text                                 #  Line  RIP      Bytes  
.__jis_mbtowc:                         #        0x7e0c0  0      
  movl %esi, %esi                      #  1     0x7e0c0  2      
  leal -0x24(%rsp), %eax               #  2     0x7e0c2  4      
  movl %edx, %edx                      #  3     0x7e0c6  2      
  testq %rsi, %rsi                     #  4     0x7e0c8  3      
  movq %rbx, -0x20(%rsp)               #  5     0x7e0cb  5      
  movq %r12, -0x18(%rsp)               #  6     0x7e0d0  5      
  cmoveq %rax, %rsi                    #  7     0x7e0d5  4      
  testq %rdx, %rdx                     #  8     0x7e0d9  3      
  nop                                  #  9     0x7e0dc  1      
  movq %r13, -0x10(%rsp)               #  10    0x7e0dd  5      
  movq %r14, -0x8(%rsp)                #  11    0x7e0e2  5      
  movl %edi, %edi                      #  12    0x7e0e7  2      
  movl %r9d, %r9d                      #  13    0x7e0e9  3      
  jne .L_7e140                         #  14    0x7e0ec  6      
  movl %r9d, %r9d                      #  15    0x7e0f2  3      
  movl $0x0, (%r15,%r9,1)              #  16    0x7e0f5  8      
  nop                                  #  17    0x7e0fd  1      
  movl $0x1, %eax                      #  18    0x7e0fe  5      
  nop                                  #  19    0x7e103  1      
  nop                                  #  20    0x7e104  1      
.L_7e120:                              #        0x7e105  0      
  movq -0x20(%rsp), %rbx               #  21    0x7e105  5      
  movq -0x18(%rsp), %r12               #  22    0x7e10a  5      
  movq -0x10(%rsp), %r13               #  23    0x7e10f  5      
  movq -0x8(%rsp), %r14                #  24    0x7e114  5      
  popq %r11                            #  25    0x7e119  3      
  andl $0xffffffe0, %r11d              #  26    0x7e11c  7      
  addq %r15, %r11                      #  27    0x7e123  3      
  jmpq %r11                            #  28    0x7e126  3      
.L_7e140:                              #        0x7e129  0      
  testl %ecx, %ecx                     #  29    0x7e129  2      
  movl $0xfffffffe, %eax               #  30    0x7e12b  5      
  je .L_7e120                          #  31    0x7e130  6      
  movl %r9d, %r9d                      #  32    0x7e136  3      
  movl (%r15,%r9,1), %r11d             #  33    0x7e139  4      
  movl %edx, %r14d                     #  34    0x7e13d  3      
  movl %edx, %r12d                     #  35    0x7e140  3      
  movl $0x1, %ebx                      #  36    0x7e143  5      
  nop                                  #  37    0x7e148  1      
.L_7e160:                              #        0x7e149  0      
  movl %r12d, %r13d                    #  38    0x7e149  3      
  leal -0x1(%rbx), %eax                #  39    0x7e14c  3      
  movl $0x2, %r8d                      #  40    0x7e14f  6      
  movl %r13d, %r13d                    #  41    0x7e155  3      
  movzbl (%r15,%r13,1), %r10d          #  42    0x7e158  5      
  cmpb $0x28, %r10b                    #  43    0x7e15d  4      
  je .L_7e1a0                          #  44    0x7e161  6      
  ja .L_7e260                          #  45    0x7e167  6      
  xorb %r8b, %r8b                      #  46    0x7e16d  3      
  cmpb $0x1b, %r10b                    #  47    0x7e170  4      
  je .L_7e1a0                          #  48    0x7e174  6      
  cmpb $0x24, %r10b                    #  49    0x7e17a  4      
  movb $0x1, %r8b                      #  50    0x7e17e  3      
  je .L_7e1a0                          #  51    0x7e181  6      
  testb %r10b, %r10b                   #  52    0x7e187  3      
  movb $0x6, %r8b                      #  53    0x7e18a  3      
  jne .L_7e2a0                         #  54    0x7e18d  6      
  xchgw %ax, %ax                       #  55    0x7e193  3      
.L_7e1a0:                              #        0x7e196  0      
  leal (%r11,%r11,8), %r11d            #  56    0x7e196  4      
  addl %r8d, %r11d                     #  57    0x7e19a  3      
  shll $0x2, %r11d                     #  58    0x7e19d  4      
  movslq %r11d, %r11                   #  59    0x7e1a1  3      
  movl %r11d, %r11d                    #  60    0x7e1a4  3      
  movl 0x100245a0(%r15,%r11,1), %r8d   #  61    0x7e1a7  8      
  nop                                  #  62    0x7e1af  1      
  movl %r11d, %r11d                    #  63    0x7e1b0  3      
  movl 0x100246c0(%r15,%r11,1), %r11d  #  64    0x7e1b3  8      
  cmpl $0x5, %r8d                      #  65    0x7e1bb  4      
  jbe .L_7e200                         #  66    0x7e1bf  6      
  movl %edi, %edi                      #  67    0x7e1c5  2      
  movl $0x54, (%r15,%rdi,1)            #  68    0x7e1c7  8      
  movl $0xffffffff, %eax               #  69    0x7e1cf  5      
  jmpq .L_7e120                        #  70    0x7e1d4  5      
  nop                                  #  71    0x7e1d9  1      
  nop                                  #  72    0x7e1da  1      
.L_7e200:                              #        0x7e1db  0      
  movl %r8d, %r8d                      #  73    0x7e1db  3      
  movl %r8d, %r8d                      #  74    0x7e1de  3      
  movq 0x10024560(%r15,%r8,8), %r8     #  75    0x7e1e1  8      
  andl $0xffffffe0, %r8d               #  76    0x7e1e9  7      
  addq %r15, %r8                       #  77    0x7e1f0  3      
  jmpq %r8                             #  78    0x7e1f3  3      
  nop                                  #  79    0x7e1f6  1      
  movl %r9d, %r9d                      #  80    0x7e1f7  3      
  movb %r10b, 0x4(%r15,%r9,1)          #  81    0x7e1fa  5      
  nop                                  #  82    0x7e1ff  1      
  nop                                  #  83    0x7e200  1      
.L_7e240:                              #        0x7e201  0      
  addl $0x1, %r12d                     #  84    0x7e201  4      
  cmpl %ebx, %ecx                      #  85    0x7e205  2      
  leal 0x1(%rbx), %eax                 #  86    0x7e207  3      
  jbe .L_7e360                         #  87    0x7e20a  6      
  movl %eax, %ebx                      #  88    0x7e210  2      
  jmpq .L_7e160                        #  89    0x7e212  5      
  nop                                  #  90    0x7e217  1      
.L_7e260:                              #        0x7e218  0      
  cmpb $0x42, %r10b                    #  91    0x7e218  4      
  movl $0x4, %r8d                      #  92    0x7e21c  6      
  je .L_7e1a0                          #  93    0x7e222  6      
  cmpb $0x4a, %r10b                    #  94    0x7e228  4      
  movb $0x5, %r8b                      #  95    0x7e22c  3      
  je .L_7e1a0                          #  96    0x7e22f  6      
  nop                                  #  97    0x7e235  1      
  cmpb $0x40, %r10b                    #  98    0x7e236  4      
  movb $0x3, %r8b                      #  99    0x7e23a  3      
  je .L_7e1a0                          #  100   0x7e23d  6      
  nop                                  #  101   0x7e243  1      
  nop                                  #  102   0x7e244  1      
.L_7e2a0:                              #        0x7e245  0      
  movzbl %r10b, %r8d                   #  103   0x7e245  4      
  subl $0x21, %r8d                     #  104   0x7e249  4      
  cmpl $0x5e, %r8d                     #  105   0x7e24d  4      
  sbbl %r8d, %r8d                      #  106   0x7e251  3      
  addl $0x8, %r8d                      #  107   0x7e254  4      
  jmpq .L_7e1a0                        #  108   0x7e258  5      
  nop                                  #  109   0x7e25d  1      
  leal (%rbx,%r14,1), %edx             #  110   0x7e25e  4      
  jmpq .L_7e240                        #  111   0x7e262  5      
  nop                                  #  112   0x7e267  1      
  nop                                  #  113   0x7e268  1      
  movl %r9d, %r9d                      #  114   0x7e269  3      
  movzbl 0x4(%r15,%r9,1), %edx         #  115   0x7e26c  6      
  movl %r9d, %r9d                      #  116   0x7e272  3      
  movl $0x1, (%r15,%r9,1)              #  117   0x7e275  8      
  addl $0x1, %eax                      #  118   0x7e27d  3      
  movl %r13d, %r13d                    #  119   0x7e280  3      
  movzbl (%r15,%r13,1), %ecx           #  120   0x7e283  5      
  nop                                  #  121   0x7e288  1      
  shll $0x8, %edx                      #  122   0x7e289  3      
  leal (%rcx,%rdx,1), %edx             #  123   0x7e28c  3      
  movl %esi, %esi                      #  124   0x7e28f  2      
  movl %edx, (%r15,%rsi,1)             #  125   0x7e291  4      
  jmpq .L_7e120                        #  126   0x7e295  5      
  nop                                  #  127   0x7e29a  1      
  movl %r9d, %r9d                      #  128   0x7e29b  3      
  movl $0x0, (%r15,%r9,1)              #  129   0x7e29e  8      
  movl %esi, %esi                      #  130   0x7e2a6  2      
  movl $0x0, (%r15,%rsi,1)             #  131   0x7e2a8  8      
  xorl %eax, %eax                      #  132   0x7e2b0  2      
  jmpq .L_7e120                        #  133   0x7e2b2  5      
  nop                                  #  134   0x7e2b7  1      
  movl %r9d, %r9d                      #  135   0x7e2b8  3      
  movl $0x0, (%r15,%r9,1)              #  136   0x7e2bb  8      
  movl %edx, %edx                      #  137   0x7e2c3  2      
  movzbl (%r15,%rdx,1), %edx           #  138   0x7e2c5  5      
  addl $0x1, %eax                      #  139   0x7e2ca  3      
  movl %esi, %esi                      #  140   0x7e2cd  2      
  movl %edx, (%r15,%rsi,1)             #  141   0x7e2cf  4      
  jmpq .L_7e120                        #  142   0x7e2d3  5      
.L_7e360:                              #        0x7e2d8  0      
  movl %r9d, %r9d                      #  143   0x7e2d8  3      
  movl %r11d, (%r15,%r9,1)             #  144   0x7e2db  4      
  movl $0xfffffffe, %eax               #  145   0x7e2df  5      
  jmpq .L_7e120                        #  146   0x7e2e4  5      
  nop                                  #  147   0x7e2e9  1      
                                                                
.size __jis_mbtowc, .-__jis_mbtowc

