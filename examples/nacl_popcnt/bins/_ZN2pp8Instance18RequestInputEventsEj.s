  .text
  .globl _ZN2pp8Instance18RequestInputEventsEj
  .type _ZN2pp8Instance18RequestInputEventsEj, @function

#! file-offset 0x21bc0
#! rip-offset  0x21bc0
#! capacity    640 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance18RequestInputEventsEj:          #        0x21bc0  0      
  pushq %r12                                     #  1     0x21bc0  3      
  movl %esi, %r12d                               #  2     0x21bc3  3      
  pushq %rbx                                     #  3     0x21bc6  2      
  movl %edi, %ebx                                #  4     0x21bc8  2      
  subl $0x8, %esp                                #  5     0x21bca  3      
  addq %r15, %rsp                                #  6     0x21bcd  3      
  cmpb $0x0, 0x1000f061(%rip)                    #  7     0x21bd0  7      
  je .L_21ca0                                    #  8     0x21bd7  6      
  nop                                            #  9     0x21bdd  1      
.L_21be0:                                        #        0x21bde  0      
  movl 0x1000f05c(%rip), %eax                    #  10    0x21bde  6      
  testq %rax, %rax                               #  11    0x21be4  3      
  je .L_21d40                                    #  12    0x21be7  6      
  xchgw %ax, %ax                                 #  13    0x21bed  3      
  nop                                            #  14    0x21bf0  1      
.L_21c00:                                        #        0x21bf1  0      
  cmpb $0x0, 0x1000f040(%rip)                    #  15    0x21bf1  7      
  je .L_21c60                                    #  16    0x21bf8  6      
  nop                                            #  17    0x21bfe  1      
  nop                                            #  18    0x21bff  1      
.L_21c20:                                        #        0x21c00  0      
  movl %ebx, %ebx                                #  19    0x21c00  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  20    0x21c02  5      
  movl %eax, %eax                                #  21    0x21c07  2      
  movl (%r15,%rax,1), %eax                       #  22    0x21c09  4      
  addl $0x8, %esp                                #  23    0x21c0d  3      
  addq %r15, %rsp                                #  24    0x21c10  3      
  popq %rbx                                      #  25    0x21c13  2      
  movl %r12d, %esi                               #  26    0x21c15  3      
  popq %r12                                      #  27    0x21c18  3      
  nop                                            #  28    0x21c1b  1      
  andl $0xffffffe0, %eax                         #  29    0x21c1c  5      
  addq %r15, %rax                                #  30    0x21c21  3      
  jmpq %rax                                      #  31    0x21c24  2      
  nop                                            #  32    0x21c26  1      
  nop                                            #  33    0x21c27  1      
.L_21c60:                                        #        0x21c28  0      
  movl $0x10030c38, %edi                         #  34    0x21c28  5      
  nop                                            #  35    0x21c2d  1      
  nop                                            #  36    0x21c2e  1      
  callq .__cxa_guard_acquire                     #  37    0x21c2f  5      
  testl %eax, %eax                               #  38    0x21c34  2      
  jne .L_21d60                                   #  39    0x21c36  6      
  movl 0x1000effe(%rip), %eax                    #  40    0x21c3c  6      
  jmpq .L_21c20                                  #  41    0x21c42  5      
  nop                                            #  42    0x21c47  1      
  nop                                            #  43    0x21c48  1      
.L_21ca0:                                        #        0x21c49  0      
  movl $0x10030c38, %edi                         #  44    0x21c49  5      
  nop                                            #  45    0x21c4e  1      
  nop                                            #  46    0x21c4f  1      
  callq .__cxa_guard_acquire                     #  47    0x21c50  5      
  testl %eax, %eax                               #  48    0x21c55  2      
  je .L_21be0                                    #  49    0x21c57  6      
  nop                                            #  50    0x21c5d  1      
  nop                                            #  51    0x21c5e  1      
  callq ._ZN2pp6Module3GetEv                     #  52    0x21c5f  5      
  movl %eax, %edi                                #  53    0x21c64  2      
  movl $0x100202c8, %esi                         #  54    0x21c66  5      
  nop                                            #  55    0x21c6b  1      
  nop                                            #  56    0x21c6c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  57    0x21c6d  5      
  movl $0x10030c38, %edi                         #  58    0x21c72  5      
  movl %eax, 0x1000efc3(%rip)                    #  59    0x21c77  6      
  nop                                            #  60    0x21c7d  1      
  nop                                            #  61    0x21c7e  1      
  callq .__cxa_guard_release                     #  62    0x21c7f  5      
  movl 0x1000efb6(%rip), %eax                    #  63    0x21c84  6      
  testq %rax, %rax                               #  64    0x21c8a  3      
  jne .L_21c00                                   #  65    0x21c8d  6      
  xchgw %ax, %ax                                 #  66    0x21c93  3      
  nop                                            #  67    0x21c96  1      
.L_21d40:                                        #        0x21c97  0      
  addl $0x8, %esp                                #  68    0x21c97  3      
  addq %r15, %rsp                                #  69    0x21c9a  3      
  movl $0xfffffffa, %eax                         #  70    0x21c9d  5      
  popq %rbx                                      #  71    0x21ca2  2      
  popq %r12                                      #  72    0x21ca4  3      
  popq %r11                                      #  73    0x21ca7  3      
  andl $0xffffffe0, %r11d                        #  74    0x21caa  7      
  addq %r15, %r11                                #  75    0x21cb1  3      
  jmpq %r11                                      #  76    0x21cb4  3      
  nop                                            #  77    0x21cb7  1      
.L_21d60:                                        #        0x21cb8  0      
  nop                                            #  78    0x21cb8  1      
  nop                                            #  79    0x21cb9  1      
  callq ._ZN2pp6Module3GetEv                     #  80    0x21cba  5      
  movl %eax, %edi                                #  81    0x21cbf  2      
  movl $0x100202c8, %esi                         #  82    0x21cc1  5      
  nop                                            #  83    0x21cc6  1      
  nop                                            #  84    0x21cc7  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  85    0x21cc8  5      
  movl $0x10030c38, %edi                         #  86    0x21ccd  5      
  movl %eax, 0x1000ef68(%rip)                    #  87    0x21cd2  6      
  nop                                            #  88    0x21cd8  1      
  nop                                            #  89    0x21cd9  1      
  callq .__cxa_guard_release                     #  90    0x21cda  5      
  movl 0x1000ef5b(%rip), %eax                    #  91    0x21cdf  6      
  jmpq .L_21c20                                  #  92    0x21ce5  5      
  nop                                            #  93    0x21cea  1      
  nop                                            #  94    0x21ceb  1      
.L_21de0:                                        #        0x21cec  0      
  movl %eax, %ebx                                #  95    0x21cec  2      
  movl $0x10030c38, %edi                         #  96    0x21cee  5      
  nop                                            #  97    0x21cf3  1      
  nop                                            #  98    0x21cf4  1      
  callq .__cxa_guard_abort                       #  99    0x21cf5  5      
  movl %ebx, %edi                                #  100   0x21cfa  2      
  nop                                            #  101   0x21cfc  1      
  nop                                            #  102   0x21cfd  1      
  callq ._Unwind_Resume                          #  103   0x21cfe  5      
  jmpq .L_21de0                                  #  104   0x21d03  5      
  nop                                            #  105   0x21d08  1      
  nop                                            #  106   0x21d09  1      
                                                                          
.size _ZN2pp8Instance18RequestInputEventsEj, .-_ZN2pp8Instance18RequestInputEventsEj

