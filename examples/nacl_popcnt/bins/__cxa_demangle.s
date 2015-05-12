  .text
  .globl __cxa_demangle
  .type __cxa_demangle, @function

#! file-offset 0x580a0
#! rip-offset  0x580a0
#! capacity    736 bytes

# Text                             #  Line  RIP      Bytes  
.__cxa_demangle:                   #        0x580a0  0      
  movl %edi, %edi                  #  1     0x580a0  2      
  movq %rbx, -0x20(%rsp)           #  2     0x580a2  5      
  movq %r12, -0x18(%rsp)           #  3     0x580a7  5      
  movq %r13, -0x10(%rsp)           #  4     0x580ac  5      
  movq %r14, -0x8(%rsp)            #  5     0x580b1  5      
  subl $0x48, %esp                 #  6     0x580b6  3      
  addq %r15, %rsp                  #  7     0x580b9  3      
  testq %rdi, %rdi                 #  8     0x580bc  3      
  nop                              #  9     0x580bf  1      
  movl %esi, %r12d                 #  10    0x580c0  3      
  movl %edx, %ebx                  #  11    0x580c3  2      
  movl %ecx, %r13d                 #  12    0x580c5  3      
  je .L_58280                      #  13    0x580c8  6      
  testq %rbx, %rbx                 #  14    0x580ce  3      
  je .L_58260                      #  15    0x580d1  6      
  nop                              #  16    0x580d7  1      
.L_580e0:                          #        0x580d8  0      
  leal 0x10(%rsp), %ecx            #  17    0x580d8  4      
  movl $0x54560, %edx              #  18    0x580dc  5      
  movl $0x11, %esi                 #  19    0x580e1  5      
  movl $0x0, 0x10(%rsp)            #  20    0x580e6  8      
  movl $0x0, 0x14(%rsp)            #  21    0x580ee  8      
  xchgw %ax, %ax                   #  22    0x580f6  3      
  movl $0x0, 0x18(%rsp)            #  23    0x580f9  8      
  movl $0x0, 0x1c(%rsp)            #  24    0x58101  8      
  nop                              #  25    0x58109  1      
  callq .d_demangle_callback       #  26    0x5810a  5      
  testl %eax, %eax                 #  27    0x5810f  2      
  je .L_582c0                      #  28    0x58111  6      
  xorl %eax, %eax                  #  29    0x58117  2      
  movl 0x10(%rsp), %r14d           #  30    0x58119  5      
  cmpl $0x0, 0x1c(%rsp)            #  31    0x5811e  5      
  setne %al                        #  32    0x58123  3      
  testq %r14, %r14                 #  33    0x58126  3      
  movl %eax, 0xc(%rsp)             #  34    0x58129  4      
  xchgw %ax, %ax                   #  35    0x5812d  3      
  je .L_58300                      #  36    0x58130  6      
  testq %r12, %r12                 #  37    0x58136  3      
  je .L_58340                      #  38    0x58139  6      
  movl %r14d, %edi                 #  39    0x5813f  3      
  nop                              #  40    0x58142  1      
  callq .strlen                    #  41    0x58143  5      
  movl %ebx, %ebx                  #  42    0x58148  2      
  cmpl (%r15,%rbx,1), %eax         #  43    0x5814a  4      
  jb .L_58200                      #  44    0x5814e  6      
  movl %r12d, %edi                 #  45    0x58154  3      
  nop                              #  46    0x58157  1      
  callq .free                      #  47    0x58158  5      
.L_58180:                          #        0x5815d  0      
  movl 0xc(%rsp), %eax             #  48    0x5815d  4      
  movl %ebx, %ebx                  #  49    0x58161  2      
  movl %eax, (%r15,%rbx,1)         #  50    0x58163  4      
  nop                              #  51    0x58167  1      
  nop                              #  52    0x58168  1      
.L_581a0:                          #        0x58169  0      
  testq %r13, %r13                 #  53    0x58169  3      
  je .L_581c0                      #  54    0x5816c  6      
  movl %r13d, %r13d                #  55    0x58172  3      
  movl $0x0, (%r15,%r13,1)         #  56    0x58175  8      
  nop                              #  57    0x5817d  1      
  nop                              #  58    0x5817e  1      
.L_581c0:                          #        0x5817f  0      
  movl %r14d, %eax                 #  59    0x5817f  3      
  movq 0x28(%rsp), %rbx            #  60    0x58182  5      
  movq 0x30(%rsp), %r12            #  61    0x58187  5      
  movq 0x38(%rsp), %r13            #  62    0x5818c  5      
  movq 0x40(%rsp), %r14            #  63    0x58191  5      
  addl $0x48, %esp                 #  64    0x58196  3      
  addq %r15, %rsp                  #  65    0x58199  3      
  popq %r11                        #  66    0x5819c  3      
  nop                              #  67    0x5819f  1      
  andl $0xffffffe0, %r11d          #  68    0x581a0  7      
  addq %r15, %r11                  #  69    0x581a7  3      
  jmpq %r11                        #  70    0x581aa  3      
  nop                              #  71    0x581ad  1      
  nop                              #  72    0x581ae  1      
.L_58200:                          #        0x581af  0      
  movl %r14d, %esi                 #  73    0x581af  3      
  movl %r12d, %edi                 #  74    0x581b2  3      
  nop                              #  75    0x581b5  1      
  nop                              #  76    0x581b6  1      
  callq .strcpy                    #  77    0x581b7  5      
  movl %r14d, %edi                 #  78    0x581bc  3      
  movq %r12, %r14                  #  79    0x581bf  3      
  nop                              #  80    0x581c2  1      
  nop                              #  81    0x581c3  1      
  callq .free                      #  82    0x581c4  5      
  jmpq .L_581a0                    #  83    0x581c9  5      
  nop                              #  84    0x581ce  1      
  nop                              #  85    0x581cf  1      
.L_58260:                          #        0x581d0  0      
  testq %r12, %r12                 #  86    0x581d0  3      
  je .L_580e0                      #  87    0x581d3  6      
  nop                              #  88    0x581d9  1      
  nop                              #  89    0x581da  1      
.L_58280:                          #        0x581db  0      
  testq %r13, %r13                 #  90    0x581db  3      
  jne .L_58320                     #  91    0x581de  6      
  nop                              #  92    0x581e4  1      
  nop                              #  93    0x581e5  1      
.L_582a0:                          #        0x581e6  0      
  xorl %r14d, %r14d                #  94    0x581e6  3      
  jmpq .L_581c0                    #  95    0x581e9  5      
  nop                              #  96    0x581ee  1      
  nop                              #  97    0x581ef  1      
.L_582c0:                          #        0x581f0  0      
  movl 0x10(%rsp), %edi            #  98    0x581f0  4      
  nop                              #  99    0x581f4  1      
  nop                              #  100   0x581f5  1      
  callq .free                      #  101   0x581f6  5      
  movl $0x0, 0xc(%rsp)             #  102   0x581fb  8      
  nop                              #  103   0x58203  1      
  nop                              #  104   0x58204  1      
.L_58300:                          #        0x58205  0      
  testq %r13, %r13                 #  105   0x58205  3      
  je .L_582a0                      #  106   0x58208  6      
  cmpl $0x1, 0xc(%rsp)             #  107   0x5820e  5      
  je .L_58360                      #  108   0x58213  6      
  movl %r13d, %r13d                #  109   0x58219  3      
  movl $0xfffffffe, (%r15,%r13,1)  #  110   0x5821c  8      
  xorl %r14d, %r14d                #  111   0x58224  3      
  jmpq .L_581c0                    #  112   0x58227  5      
  nop                              #  113   0x5822c  1      
.L_58320:                          #        0x5822d  0      
  movl %r13d, %r13d                #  114   0x5822d  3      
  movl $0xfffffffd, (%r15,%r13,1)  #  115   0x58230  8      
  xorl %r14d, %r14d                #  116   0x58238  3      
  jmpq .L_581c0                    #  117   0x5823b  5      
  nop                              #  118   0x58240  1      
.L_58340:                          #        0x58241  0      
  testq %rbx, %rbx                 #  119   0x58241  3      
  jne .L_58180                     #  120   0x58244  6      
  jmpq .L_581a0                    #  121   0x5824a  5      
  nop                              #  122   0x5824f  1      
  nop                              #  123   0x58250  1      
.L_58360:                          #        0x58251  0      
  movl %r13d, %r13d                #  124   0x58251  3      
  movl $0xffffffff, (%r15,%r13,1)  #  125   0x58254  8      
  xorl %r14d, %r14d                #  126   0x5825c  3      
  jmpq .L_581c0                    #  127   0x5825f  5      
  nop                              #  128   0x58264  1      
                                                            
.size __cxa_demangle, .-__cxa_demangle

