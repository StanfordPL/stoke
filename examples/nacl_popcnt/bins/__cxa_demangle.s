  .text
  .globl __cxa_demangle
  .type __cxa_demangle, @function

#! file-offset 0x58080
#! rip-offset  0x58080
#! capacity    736 bytes

# Text                             #  Line  RIP      Bytes  
.__cxa_demangle:                   #        0x58080  0      
  movl %edi, %edi                  #  1     0x58080  2      
  movq %rbx, -0x20(%rsp)           #  2     0x58082  5      
  movq %r12, -0x18(%rsp)           #  3     0x58087  5      
  movq %r13, -0x10(%rsp)           #  4     0x5808c  5      
  movq %r14, -0x8(%rsp)            #  5     0x58091  5      
  subl $0x48, %esp                 #  6     0x58096  3      
  addq %r15, %rsp                  #  7     0x58099  3      
  testq %rdi, %rdi                 #  8     0x5809c  3      
  nop                              #  9     0x5809f  1      
  movl %esi, %r12d                 #  10    0x580a0  3      
  movl %edx, %ebx                  #  11    0x580a3  2      
  movl %ecx, %r13d                 #  12    0x580a5  3      
  je .L_58260                      #  13    0x580a8  6      
  testq %rbx, %rbx                 #  14    0x580ae  3      
  je .L_58240                      #  15    0x580b1  6      
  nop                              #  16    0x580b7  1      
.L_580c0:                          #        0x580b8  0      
  leal 0x10(%rsp), %ecx            #  17    0x580b8  4      
  movl $0x54540, %edx              #  18    0x580bc  5      
  movl $0x11, %esi                 #  19    0x580c1  5      
  movl $0x0, 0x10(%rsp)            #  20    0x580c6  8      
  movl $0x0, 0x14(%rsp)            #  21    0x580ce  8      
  xchgw %ax, %ax                   #  22    0x580d6  3      
  movl $0x0, 0x18(%rsp)            #  23    0x580d9  8      
  movl $0x0, 0x1c(%rsp)            #  24    0x580e1  8      
  nop                              #  25    0x580e9  1      
  callq .d_demangle_callback       #  26    0x580ea  5      
  testl %eax, %eax                 #  27    0x580ef  2      
  je .L_582a0                      #  28    0x580f1  6      
  xorl %eax, %eax                  #  29    0x580f7  2      
  movl 0x10(%rsp), %r14d           #  30    0x580f9  5      
  cmpl $0x0, 0x1c(%rsp)            #  31    0x580fe  5      
  setne %al                        #  32    0x58103  3      
  testq %r14, %r14                 #  33    0x58106  3      
  movl %eax, 0xc(%rsp)             #  34    0x58109  4      
  xchgw %ax, %ax                   #  35    0x5810d  3      
  je .L_582e0                      #  36    0x58110  6      
  testq %r12, %r12                 #  37    0x58116  3      
  je .L_58320                      #  38    0x58119  6      
  movl %r14d, %edi                 #  39    0x5811f  3      
  nop                              #  40    0x58122  1      
  callq .strlen                    #  41    0x58123  5      
  movl %ebx, %ebx                  #  42    0x58128  2      
  cmpl (%r15,%rbx,1), %eax         #  43    0x5812a  4      
  jb .L_581e0                      #  44    0x5812e  6      
  movl %r12d, %edi                 #  45    0x58134  3      
  nop                              #  46    0x58137  1      
  callq .free                      #  47    0x58138  5      
.L_58160:                          #        0x5813d  0      
  movl 0xc(%rsp), %eax             #  48    0x5813d  4      
  movl %ebx, %ebx                  #  49    0x58141  2      
  movl %eax, (%r15,%rbx,1)         #  50    0x58143  4      
  nop                              #  51    0x58147  1      
  nop                              #  52    0x58148  1      
.L_58180:                          #        0x58149  0      
  testq %r13, %r13                 #  53    0x58149  3      
  je .L_581a0                      #  54    0x5814c  6      
  movl %r13d, %r13d                #  55    0x58152  3      
  movl $0x0, (%r15,%r13,1)         #  56    0x58155  8      
  nop                              #  57    0x5815d  1      
  nop                              #  58    0x5815e  1      
.L_581a0:                          #        0x5815f  0      
  movl %r14d, %eax                 #  59    0x5815f  3      
  movq 0x28(%rsp), %rbx            #  60    0x58162  5      
  movq 0x30(%rsp), %r12            #  61    0x58167  5      
  movq 0x38(%rsp), %r13            #  62    0x5816c  5      
  movq 0x40(%rsp), %r14            #  63    0x58171  5      
  addl $0x48, %esp                 #  64    0x58176  3      
  addq %r15, %rsp                  #  65    0x58179  3      
  popq %r11                        #  66    0x5817c  3      
  nop                              #  67    0x5817f  1      
  andl $0xffffffe0, %r11d          #  68    0x58180  7      
  addq %r15, %r11                  #  69    0x58187  3      
  jmpq %r11                        #  70    0x5818a  3      
  nop                              #  71    0x5818d  1      
  nop                              #  72    0x5818e  1      
.L_581e0:                          #        0x5818f  0      
  movl %r14d, %esi                 #  73    0x5818f  3      
  movl %r12d, %edi                 #  74    0x58192  3      
  nop                              #  75    0x58195  1      
  nop                              #  76    0x58196  1      
  callq .strcpy                    #  77    0x58197  5      
  movl %r14d, %edi                 #  78    0x5819c  3      
  movq %r12, %r14                  #  79    0x5819f  3      
  nop                              #  80    0x581a2  1      
  nop                              #  81    0x581a3  1      
  callq .free                      #  82    0x581a4  5      
  jmpq .L_58180                    #  83    0x581a9  5      
  nop                              #  84    0x581ae  1      
  nop                              #  85    0x581af  1      
.L_58240:                          #        0x581b0  0      
  testq %r12, %r12                 #  86    0x581b0  3      
  je .L_580c0                      #  87    0x581b3  6      
  nop                              #  88    0x581b9  1      
  nop                              #  89    0x581ba  1      
.L_58260:                          #        0x581bb  0      
  testq %r13, %r13                 #  90    0x581bb  3      
  jne .L_58300                     #  91    0x581be  6      
  nop                              #  92    0x581c4  1      
  nop                              #  93    0x581c5  1      
.L_58280:                          #        0x581c6  0      
  xorl %r14d, %r14d                #  94    0x581c6  3      
  jmpq .L_581a0                    #  95    0x581c9  5      
  nop                              #  96    0x581ce  1      
  nop                              #  97    0x581cf  1      
.L_582a0:                          #        0x581d0  0      
  movl 0x10(%rsp), %edi            #  98    0x581d0  4      
  nop                              #  99    0x581d4  1      
  nop                              #  100   0x581d5  1      
  callq .free                      #  101   0x581d6  5      
  movl $0x0, 0xc(%rsp)             #  102   0x581db  8      
  nop                              #  103   0x581e3  1      
  nop                              #  104   0x581e4  1      
.L_582e0:                          #        0x581e5  0      
  testq %r13, %r13                 #  105   0x581e5  3      
  je .L_58280                      #  106   0x581e8  6      
  cmpl $0x1, 0xc(%rsp)             #  107   0x581ee  5      
  je .L_58340                      #  108   0x581f3  6      
  movl %r13d, %r13d                #  109   0x581f9  3      
  movl $0xfffffffe, (%r15,%r13,1)  #  110   0x581fc  8      
  xorl %r14d, %r14d                #  111   0x58204  3      
  jmpq .L_581a0                    #  112   0x58207  5      
  nop                              #  113   0x5820c  1      
.L_58300:                          #        0x5820d  0      
  movl %r13d, %r13d                #  114   0x5820d  3      
  movl $0xfffffffd, (%r15,%r13,1)  #  115   0x58210  8      
  xorl %r14d, %r14d                #  116   0x58218  3      
  jmpq .L_581a0                    #  117   0x5821b  5      
  nop                              #  118   0x58220  1      
.L_58320:                          #        0x58221  0      
  testq %rbx, %rbx                 #  119   0x58221  3      
  jne .L_58160                     #  120   0x58224  6      
  jmpq .L_58180                    #  121   0x5822a  5      
  nop                              #  122   0x5822f  1      
  nop                              #  123   0x58230  1      
.L_58340:                          #        0x58231  0      
  movl %r13d, %r13d                #  124   0x58231  3      
  movl $0xffffffff, (%r15,%r13,1)  #  125   0x58234  8      
  xorl %r14d, %r14d                #  126   0x5823c  3      
  jmpq .L_581a0                    #  127   0x5823f  5      
  nop                              #  128   0x58244  1      
                                                            
.size __cxa_demangle, .-__cxa_demangle

