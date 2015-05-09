  .text
  .globl _ZNK2pp4View15GetScrollOffsetEv
  .type _ZNK2pp4View15GetScrollOffsetEv, @function

#! file-offset 0x2d8a0
#! rip-offset  0x2d8a0
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp4View15GetScrollOffsetEv:                #        0x2d8a0  0      
  pushq %r12                                     #  1     0x2d8a0  3      
  movl %esi, %r12d                               #  2     0x2d8a3  3      
  pushq %rbx                                     #  3     0x2d8a6  2      
  movl %edi, %ebx                                #  4     0x2d8a8  2      
  subl $0x18, %esp                               #  5     0x2d8aa  3      
  addq %r15, %rsp                                #  6     0x2d8ad  3      
  cmpb $0x0, 0x100033f9(%rip)                    #  7     0x2d8b0  7      
  je .L_2d920                                    #  8     0x2d8b7  6      
  nop                                            #  9     0x2d8bd  1      
.L_2d8c0:                                        #        0x2d8be  0      
  movl 0x100033f4(%rip), %eax                    #  10    0x2d8be  6      
  testq %rax, %rax                               #  11    0x2d8c4  3      
  jne .L_2d9c0                                   #  12    0x2d8c7  6      
  xchgw %ax, %ax                                 #  13    0x2d8cd  3      
  nop                                            #  14    0x2d8d0  1      
.L_2d8e0:                                        #        0x2d8d1  0      
  movl %ebx, %ebx                                #  15    0x2d8d1  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x2d8d3  8      
  movl %ebx, %ebx                                #  17    0x2d8db  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x2d8dd  9      
  movl %ebx, %eax                                #  19    0x2d8e6  2      
  addl $0x18, %esp                               #  20    0x2d8e8  3      
  addq %r15, %rsp                                #  21    0x2d8eb  3      
  popq %rbx                                      #  22    0x2d8ee  2      
  popq %r12                                      #  23    0x2d8f0  3      
  popq %r11                                      #  24    0x2d8f3  3      
  andl $0xffffffe0, %r11d                        #  25    0x2d8f6  7      
  addq %r15, %r11                                #  26    0x2d8fd  3      
  jmpq %r11                                      #  27    0x2d900  3      
  nop                                            #  28    0x2d903  1      
  nop                                            #  29    0x2d904  1      
.L_2d920:                                        #        0x2d905  0      
  movl $0x10030cb0, %edi                         #  30    0x2d905  5      
  nop                                            #  31    0x2d90a  1      
  nop                                            #  32    0x2d90b  1      
  callq .__cxa_guard_acquire                     #  33    0x2d90c  5      
  testl %eax, %eax                               #  34    0x2d911  2      
  je .L_2d8c0                                    #  35    0x2d913  6      
  nop                                            #  36    0x2d919  1      
  nop                                            #  37    0x2d91a  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x2d91b  5      
  movl %eax, %edi                                #  39    0x2d920  2      
  movl $0x10020625, %esi                         #  40    0x2d922  5      
  nop                                            #  41    0x2d927  1      
  nop                                            #  42    0x2d928  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x2d929  5      
  movl $0x10030cb0, %edi                         #  44    0x2d92e  5      
  movl %eax, 0x1000337f(%rip)                    #  45    0x2d933  6      
  nop                                            #  46    0x2d939  1      
  nop                                            #  47    0x2d93a  1      
  callq .__cxa_guard_release                     #  48    0x2d93b  5      
  movl 0x10003372(%rip), %eax                    #  49    0x2d940  6      
  testq %rax, %rax                               #  50    0x2d946  3      
  je .L_2d8e0                                    #  51    0x2d949  6      
  xchgw %ax, %ax                                 #  52    0x2d94f  3      
  nop                                            #  53    0x2d952  1      
.L_2d9c0:                                        #        0x2d953  0      
  cmpb $0x0, 0x10003356(%rip)                    #  54    0x2d953  7      
  je .L_2da40                                    #  55    0x2d95a  6      
  nop                                            #  56    0x2d960  1      
  nop                                            #  57    0x2d961  1      
.L_2d9e0:                                        #        0x2d962  0      
  movl %eax, %eax                                #  58    0x2d962  2      
  movl 0x20(%r15,%rax,1), %eax                   #  59    0x2d964  5      
  movl %esp, %esi                                #  60    0x2d969  2      
  movl %r12d, %r12d                              #  61    0x2d96b  3      
  movl 0x4(%r15,%r12,1), %edi                    #  62    0x2d96e  5      
  nop                                            #  63    0x2d973  1      
  andl $0xffffffe0, %eax                         #  64    0x2d974  5      
  addq %r15, %rax                                #  65    0x2d979  3      
  callq %rax                                     #  66    0x2d97c  2      
  testl %eax, %eax                               #  67    0x2d97e  2      
  je .L_2d8e0                                    #  68    0x2d980  6      
  movl (%rsp), %eax                              #  69    0x2d986  3      
  movl %ebx, %ebx                                #  70    0x2d989  2      
  movl %eax, (%r15,%rbx,1)                       #  71    0x2d98b  4      
  movl 0x4(%rsp), %eax                           #  72    0x2d98f  4      
  movl %ebx, %ebx                                #  73    0x2d993  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  74    0x2d995  5      
  nop                                            #  75    0x2d99a  1      
  addl $0x18, %esp                               #  76    0x2d99b  3      
  addq %r15, %rsp                                #  77    0x2d99e  3      
  movl %ebx, %eax                                #  78    0x2d9a1  2      
  popq %rbx                                      #  79    0x2d9a3  2      
  popq %r12                                      #  80    0x2d9a5  3      
  popq %r11                                      #  81    0x2d9a8  3      
  andl $0xffffffe0, %r11d                        #  82    0x2d9ab  7      
  addq %r15, %r11                                #  83    0x2d9b2  3      
  jmpq %r11                                      #  84    0x2d9b5  3      
  nop                                            #  85    0x2d9b8  1      
.L_2da40:                                        #        0x2d9b9  0      
  movl $0x10030cb0, %edi                         #  86    0x2d9b9  5      
  nop                                            #  87    0x2d9be  1      
  nop                                            #  88    0x2d9bf  1      
  callq .__cxa_guard_acquire                     #  89    0x2d9c0  5      
  testl %eax, %eax                               #  90    0x2d9c5  2      
  jne .L_2daa0                                   #  91    0x2d9c7  6      
  nop                                            #  92    0x2d9cd  1      
  nop                                            #  93    0x2d9ce  1      
.L_2da80:                                        #        0x2d9cf  0      
  movl 0x100032e3(%rip), %eax                    #  94    0x2d9cf  6      
  jmpq .L_2d9e0                                  #  95    0x2d9d5  5      
  nop                                            #  96    0x2d9da  1      
  nop                                            #  97    0x2d9db  1      
.L_2daa0:                                        #        0x2d9dc  0      
  nop                                            #  98    0x2d9dc  1      
  nop                                            #  99    0x2d9dd  1      
  callq ._ZN2pp6Module3GetEv                     #  100   0x2d9de  5      
  movl %eax, %edi                                #  101   0x2d9e3  2      
  movl $0x10020625, %esi                         #  102   0x2d9e5  5      
  nop                                            #  103   0x2d9ea  1      
  nop                                            #  104   0x2d9eb  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  105   0x2d9ec  5      
  movl $0x10030cb0, %edi                         #  106   0x2d9f1  5      
  movl %eax, 0x100032bc(%rip)                    #  107   0x2d9f6  6      
  nop                                            #  108   0x2d9fc  1      
  nop                                            #  109   0x2d9fd  1      
  callq .__cxa_guard_release                     #  110   0x2d9fe  5      
  jmpq .L_2da80                                  #  111   0x2da03  5      
  nop                                            #  112   0x2da08  1      
  nop                                            #  113   0x2da09  1      
.L_2db20:                                        #        0x2da0a  0      
  movl %eax, %ebx                                #  114   0x2da0a  2      
  movl $0x10030cb0, %edi                         #  115   0x2da0c  5      
  nop                                            #  116   0x2da11  1      
  nop                                            #  117   0x2da12  1      
  callq .__cxa_guard_abort                       #  118   0x2da13  5      
  movl %ebx, %edi                                #  119   0x2da18  2      
  nop                                            #  120   0x2da1a  1      
  nop                                            #  121   0x2da1b  1      
  callq ._Unwind_Resume                          #  122   0x2da1c  5      
  jmpq .L_2db20                                  #  123   0x2da21  5      
  nop                                            #  124   0x2da26  1      
  nop                                            #  125   0x2da27  1      
                                                                          
.size _ZNK2pp4View15GetScrollOffsetEv, .-_ZNK2pp4View15GetScrollOffsetEv

