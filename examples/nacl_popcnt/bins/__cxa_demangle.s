  .text
  .globl __cxa_demangle
  .type __cxa_demangle, @function

#! file-offset 0x58120
#! rip-offset  0x58120
#! capacity    736 bytes

# Text                             #  Line  RIP      Bytes  
.__cxa_demangle:                   #        0x58120  0      
  movl %edi, %edi                  #  1     0x58120  2      
  movq %rbx, -0x20(%rsp)           #  2     0x58122  5      
  movq %r12, -0x18(%rsp)           #  3     0x58127  5      
  movq %r13, -0x10(%rsp)           #  4     0x5812c  5      
  movq %r14, -0x8(%rsp)            #  5     0x58131  5      
  subl $0x48, %esp                 #  6     0x58136  3      
  addq %r15, %rsp                  #  7     0x58139  3      
  testq %rdi, %rdi                 #  8     0x5813c  3      
  nop                              #  9     0x5813f  1      
  movl %esi, %r12d                 #  10    0x58140  3      
  movl %edx, %ebx                  #  11    0x58143  2      
  movl %ecx, %r13d                 #  12    0x58145  3      
  je .L_58300                      #  13    0x58148  6      
  testq %rbx, %rbx                 #  14    0x5814e  3      
  je .L_582e0                      #  15    0x58151  6      
  nop                              #  16    0x58157  1      
.L_58160:                          #        0x58158  0      
  leal 0x10(%rsp), %ecx            #  17    0x58158  4      
  movl $0x545e0, %edx              #  18    0x5815c  5      
  movl $0x11, %esi                 #  19    0x58161  5      
  movl $0x0, 0x10(%rsp)            #  20    0x58166  8      
  movl $0x0, 0x14(%rsp)            #  21    0x5816e  8      
  xchgw %ax, %ax                   #  22    0x58176  3      
  movl $0x0, 0x18(%rsp)            #  23    0x58179  8      
  movl $0x0, 0x1c(%rsp)            #  24    0x58181  8      
  nop                              #  25    0x58189  1      
  callq .d_demangle_callback       #  26    0x5818a  5      
  testl %eax, %eax                 #  27    0x5818f  2      
  je .L_58340                      #  28    0x58191  6      
  xorl %eax, %eax                  #  29    0x58197  2      
  movl 0x10(%rsp), %r14d           #  30    0x58199  5      
  cmpl $0x0, 0x1c(%rsp)            #  31    0x5819e  5      
  setne %al                        #  32    0x581a3  3      
  testq %r14, %r14                 #  33    0x581a6  3      
  movl %eax, 0xc(%rsp)             #  34    0x581a9  4      
  xchgw %ax, %ax                   #  35    0x581ad  3      
  je .L_58380                      #  36    0x581b0  6      
  testq %r12, %r12                 #  37    0x581b6  3      
  je .L_583c0                      #  38    0x581b9  6      
  movl %r14d, %edi                 #  39    0x581bf  3      
  nop                              #  40    0x581c2  1      
  callq .strlen                    #  41    0x581c3  5      
  movl %ebx, %ebx                  #  42    0x581c8  2      
  cmpl (%r15,%rbx,1), %eax         #  43    0x581ca  4      
  jb .L_58280                      #  44    0x581ce  6      
  movl %r12d, %edi                 #  45    0x581d4  3      
  nop                              #  46    0x581d7  1      
  callq .free                      #  47    0x581d8  5      
.L_58200:                          #        0x581dd  0      
  movl 0xc(%rsp), %eax             #  48    0x581dd  4      
  movl %ebx, %ebx                  #  49    0x581e1  2      
  movl %eax, (%r15,%rbx,1)         #  50    0x581e3  4      
  nop                              #  51    0x581e7  1      
  nop                              #  52    0x581e8  1      
.L_58220:                          #        0x581e9  0      
  testq %r13, %r13                 #  53    0x581e9  3      
  je .L_58240                      #  54    0x581ec  6      
  movl %r13d, %r13d                #  55    0x581f2  3      
  movl $0x0, (%r15,%r13,1)         #  56    0x581f5  8      
  nop                              #  57    0x581fd  1      
  nop                              #  58    0x581fe  1      
.L_58240:                          #        0x581ff  0      
  movl %r14d, %eax                 #  59    0x581ff  3      
  movq 0x28(%rsp), %rbx            #  60    0x58202  5      
  movq 0x30(%rsp), %r12            #  61    0x58207  5      
  movq 0x38(%rsp), %r13            #  62    0x5820c  5      
  movq 0x40(%rsp), %r14            #  63    0x58211  5      
  addl $0x48, %esp                 #  64    0x58216  3      
  addq %r15, %rsp                  #  65    0x58219  3      
  popq %r11                        #  66    0x5821c  3      
  nop                              #  67    0x5821f  1      
  andl $0xffffffe0, %r11d          #  68    0x58220  7      
  addq %r15, %r11                  #  69    0x58227  3      
  jmpq %r11                        #  70    0x5822a  3      
  nop                              #  71    0x5822d  1      
  nop                              #  72    0x5822e  1      
.L_58280:                          #        0x5822f  0      
  movl %r14d, %esi                 #  73    0x5822f  3      
  movl %r12d, %edi                 #  74    0x58232  3      
  nop                              #  75    0x58235  1      
  nop                              #  76    0x58236  1      
  callq .strcpy                    #  77    0x58237  5      
  movl %r14d, %edi                 #  78    0x5823c  3      
  movq %r12, %r14                  #  79    0x5823f  3      
  nop                              #  80    0x58242  1      
  nop                              #  81    0x58243  1      
  callq .free                      #  82    0x58244  5      
  jmpq .L_58220                    #  83    0x58249  5      
  nop                              #  84    0x5824e  1      
  nop                              #  85    0x5824f  1      
.L_582e0:                          #        0x58250  0      
  testq %r12, %r12                 #  86    0x58250  3      
  je .L_58160                      #  87    0x58253  6      
  nop                              #  88    0x58259  1      
  nop                              #  89    0x5825a  1      
.L_58300:                          #        0x5825b  0      
  testq %r13, %r13                 #  90    0x5825b  3      
  jne .L_583a0                     #  91    0x5825e  6      
  nop                              #  92    0x58264  1      
  nop                              #  93    0x58265  1      
.L_58320:                          #        0x58266  0      
  xorl %r14d, %r14d                #  94    0x58266  3      
  jmpq .L_58240                    #  95    0x58269  5      
  nop                              #  96    0x5826e  1      
  nop                              #  97    0x5826f  1      
.L_58340:                          #        0x58270  0      
  movl 0x10(%rsp), %edi            #  98    0x58270  4      
  nop                              #  99    0x58274  1      
  nop                              #  100   0x58275  1      
  callq .free                      #  101   0x58276  5      
  movl $0x0, 0xc(%rsp)             #  102   0x5827b  8      
  nop                              #  103   0x58283  1      
  nop                              #  104   0x58284  1      
.L_58380:                          #        0x58285  0      
  testq %r13, %r13                 #  105   0x58285  3      
  je .L_58320                      #  106   0x58288  6      
  cmpl $0x1, 0xc(%rsp)             #  107   0x5828e  5      
  je .L_583e0                      #  108   0x58293  6      
  movl %r13d, %r13d                #  109   0x58299  3      
  movl $0xfffffffe, (%r15,%r13,1)  #  110   0x5829c  8      
  xorl %r14d, %r14d                #  111   0x582a4  3      
  jmpq .L_58240                    #  112   0x582a7  5      
  nop                              #  113   0x582ac  1      
.L_583a0:                          #        0x582ad  0      
  movl %r13d, %r13d                #  114   0x582ad  3      
  movl $0xfffffffd, (%r15,%r13,1)  #  115   0x582b0  8      
  xorl %r14d, %r14d                #  116   0x582b8  3      
  jmpq .L_58240                    #  117   0x582bb  5      
  nop                              #  118   0x582c0  1      
.L_583c0:                          #        0x582c1  0      
  testq %rbx, %rbx                 #  119   0x582c1  3      
  jne .L_58200                     #  120   0x582c4  6      
  jmpq .L_58220                    #  121   0x582ca  5      
  nop                              #  122   0x582cf  1      
  nop                              #  123   0x582d0  1      
.L_583e0:                          #        0x582d1  0      
  movl %r13d, %r13d                #  124   0x582d1  3      
  movl $0xffffffff, (%r15,%r13,1)  #  125   0x582d4  8      
  xorl %r14d, %r14d                #  126   0x582dc  3      
  jmpq .L_58240                    #  127   0x582df  5      
  nop                              #  128   0x582e4  1      
                                                            
.size __cxa_demangle, .-__cxa_demangle

