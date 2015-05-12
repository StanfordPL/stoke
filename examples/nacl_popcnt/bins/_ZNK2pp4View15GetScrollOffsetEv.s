  .text
  .globl _ZNK2pp4View15GetScrollOffsetEv
  .type _ZNK2pp4View15GetScrollOffsetEv, @function

#! file-offset 0x2d8c0
#! rip-offset  0x2d8c0
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp4View15GetScrollOffsetEv:                #        0x2d8c0  0      
  pushq %r12                                     #  1     0x2d8c0  3      
  movl %esi, %r12d                               #  2     0x2d8c3  3      
  pushq %rbx                                     #  3     0x2d8c6  2      
  movl %edi, %ebx                                #  4     0x2d8c8  2      
  subl $0x18, %esp                               #  5     0x2d8ca  3      
  addq %r15, %rsp                                #  6     0x2d8cd  3      
  cmpb $0x0, 0x100033d9(%rip)                    #  7     0x2d8d0  7      
  je .L_2d940                                    #  8     0x2d8d7  6      
  nop                                            #  9     0x2d8dd  1      
.L_2d8e0:                                        #        0x2d8de  0      
  movl 0x100033d4(%rip), %eax                    #  10    0x2d8de  6      
  testq %rax, %rax                               #  11    0x2d8e4  3      
  jne .L_2d9e0                                   #  12    0x2d8e7  6      
  xchgw %ax, %ax                                 #  13    0x2d8ed  3      
  nop                                            #  14    0x2d8f0  1      
.L_2d900:                                        #        0x2d8f1  0      
  movl %ebx, %ebx                                #  15    0x2d8f1  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x2d8f3  8      
  movl %ebx, %ebx                                #  17    0x2d8fb  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x2d8fd  9      
  movl %ebx, %eax                                #  19    0x2d906  2      
  addl $0x18, %esp                               #  20    0x2d908  3      
  addq %r15, %rsp                                #  21    0x2d90b  3      
  popq %rbx                                      #  22    0x2d90e  2      
  popq %r12                                      #  23    0x2d910  3      
  popq %r11                                      #  24    0x2d913  3      
  andl $0xffffffe0, %r11d                        #  25    0x2d916  7      
  addq %r15, %r11                                #  26    0x2d91d  3      
  jmpq %r11                                      #  27    0x2d920  3      
  nop                                            #  28    0x2d923  1      
  nop                                            #  29    0x2d924  1      
.L_2d940:                                        #        0x2d925  0      
  movl $0x10030cb0, %edi                         #  30    0x2d925  5      
  nop                                            #  31    0x2d92a  1      
  nop                                            #  32    0x2d92b  1      
  callq .__cxa_guard_acquire                     #  33    0x2d92c  5      
  testl %eax, %eax                               #  34    0x2d931  2      
  je .L_2d8e0                                    #  35    0x2d933  6      
  nop                                            #  36    0x2d939  1      
  nop                                            #  37    0x2d93a  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x2d93b  5      
  movl %eax, %edi                                #  39    0x2d940  2      
  movl $0x10020625, %esi                         #  40    0x2d942  5      
  nop                                            #  41    0x2d947  1      
  nop                                            #  42    0x2d948  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x2d949  5      
  movl $0x10030cb0, %edi                         #  44    0x2d94e  5      
  movl %eax, 0x1000335f(%rip)                    #  45    0x2d953  6      
  nop                                            #  46    0x2d959  1      
  nop                                            #  47    0x2d95a  1      
  callq .__cxa_guard_release                     #  48    0x2d95b  5      
  movl 0x10003352(%rip), %eax                    #  49    0x2d960  6      
  testq %rax, %rax                               #  50    0x2d966  3      
  je .L_2d900                                    #  51    0x2d969  6      
  xchgw %ax, %ax                                 #  52    0x2d96f  3      
  nop                                            #  53    0x2d972  1      
.L_2d9e0:                                        #        0x2d973  0      
  cmpb $0x0, 0x10003336(%rip)                    #  54    0x2d973  7      
  je .L_2da60                                    #  55    0x2d97a  6      
  nop                                            #  56    0x2d980  1      
  nop                                            #  57    0x2d981  1      
.L_2da00:                                        #        0x2d982  0      
  movl %eax, %eax                                #  58    0x2d982  2      
  movl 0x20(%r15,%rax,1), %eax                   #  59    0x2d984  5      
  movl %esp, %esi                                #  60    0x2d989  2      
  movl %r12d, %r12d                              #  61    0x2d98b  3      
  movl 0x4(%r15,%r12,1), %edi                    #  62    0x2d98e  5      
  nop                                            #  63    0x2d993  1      
  andl $0xffffffe0, %eax                         #  64    0x2d994  5      
  addq %r15, %rax                                #  65    0x2d999  3      
  callq %rax                                     #  66    0x2d99c  2      
  testl %eax, %eax                               #  67    0x2d99e  2      
  je .L_2d900                                    #  68    0x2d9a0  6      
  movl (%rsp), %eax                              #  69    0x2d9a6  3      
  movl %ebx, %ebx                                #  70    0x2d9a9  2      
  movl %eax, (%r15,%rbx,1)                       #  71    0x2d9ab  4      
  movl 0x4(%rsp), %eax                           #  72    0x2d9af  4      
  movl %ebx, %ebx                                #  73    0x2d9b3  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  74    0x2d9b5  5      
  nop                                            #  75    0x2d9ba  1      
  addl $0x18, %esp                               #  76    0x2d9bb  3      
  addq %r15, %rsp                                #  77    0x2d9be  3      
  movl %ebx, %eax                                #  78    0x2d9c1  2      
  popq %rbx                                      #  79    0x2d9c3  2      
  popq %r12                                      #  80    0x2d9c5  3      
  popq %r11                                      #  81    0x2d9c8  3      
  andl $0xffffffe0, %r11d                        #  82    0x2d9cb  7      
  addq %r15, %r11                                #  83    0x2d9d2  3      
  jmpq %r11                                      #  84    0x2d9d5  3      
  nop                                            #  85    0x2d9d8  1      
.L_2da60:                                        #        0x2d9d9  0      
  movl $0x10030cb0, %edi                         #  86    0x2d9d9  5      
  nop                                            #  87    0x2d9de  1      
  nop                                            #  88    0x2d9df  1      
  callq .__cxa_guard_acquire                     #  89    0x2d9e0  5      
  testl %eax, %eax                               #  90    0x2d9e5  2      
  jne .L_2dac0                                   #  91    0x2d9e7  6      
  nop                                            #  92    0x2d9ed  1      
  nop                                            #  93    0x2d9ee  1      
.L_2daa0:                                        #        0x2d9ef  0      
  movl 0x100032c3(%rip), %eax                    #  94    0x2d9ef  6      
  jmpq .L_2da00                                  #  95    0x2d9f5  5      
  nop                                            #  96    0x2d9fa  1      
  nop                                            #  97    0x2d9fb  1      
.L_2dac0:                                        #        0x2d9fc  0      
  nop                                            #  98    0x2d9fc  1      
  nop                                            #  99    0x2d9fd  1      
  callq ._ZN2pp6Module3GetEv                     #  100   0x2d9fe  5      
  movl %eax, %edi                                #  101   0x2da03  2      
  movl $0x10020625, %esi                         #  102   0x2da05  5      
  nop                                            #  103   0x2da0a  1      
  nop                                            #  104   0x2da0b  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  105   0x2da0c  5      
  movl $0x10030cb0, %edi                         #  106   0x2da11  5      
  movl %eax, 0x1000329c(%rip)                    #  107   0x2da16  6      
  nop                                            #  108   0x2da1c  1      
  nop                                            #  109   0x2da1d  1      
  callq .__cxa_guard_release                     #  110   0x2da1e  5      
  jmpq .L_2daa0                                  #  111   0x2da23  5      
  nop                                            #  112   0x2da28  1      
  nop                                            #  113   0x2da29  1      
.L_2db40:                                        #        0x2da2a  0      
  movl %eax, %ebx                                #  114   0x2da2a  2      
  movl $0x10030cb0, %edi                         #  115   0x2da2c  5      
  nop                                            #  116   0x2da31  1      
  nop                                            #  117   0x2da32  1      
  callq .__cxa_guard_abort                       #  118   0x2da33  5      
  movl %ebx, %edi                                #  119   0x2da38  2      
  nop                                            #  120   0x2da3a  1      
  nop                                            #  121   0x2da3b  1      
  callq ._Unwind_Resume                          #  122   0x2da3c  5      
  jmpq .L_2db40                                  #  123   0x2da41  5      
  nop                                            #  124   0x2da46  1      
  nop                                            #  125   0x2da47  1      
                                                                          
.size _ZNK2pp4View15GetScrollOffsetEv, .-_ZNK2pp4View15GetScrollOffsetEv

