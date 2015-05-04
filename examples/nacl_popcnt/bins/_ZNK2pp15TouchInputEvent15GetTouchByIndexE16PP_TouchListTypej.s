  .text
  .globl _ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej
  .type _ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej, @function

#! file-offset 0x3a880
#! rip-offset  0x3a880
#! capacity    832 bytes

# Text                                                           #  Line  RIP      Bytes  
._ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej:  #        0x3a880  0      
  movq %rbx, -0x20(%rsp)                                         #  1     0x3a880  5      
  movq %r12, -0x18(%rsp)                                         #  2     0x3a885  5      
  movl %edi, %ebx                                                #  3     0x3a88a  2      
  movq %r13, -0x10(%rsp)                                         #  4     0x3a88c  5      
  movq %r14, -0x8(%rsp)                                          #  5     0x3a891  5      
  subl $0x48, %esp                                               #  6     0x3a896  3      
  addq %r15, %rsp                                                #  7     0x3a899  3      
  nop                                                            #  8     0x3a89c  1      
  cmpb $0x0, 0xfff647c(%rip)                                     #  9     0x3a89d  7      
  movl %edx, %r14d                                               #  10    0x3a8a4  3      
  movl %ecx, %r13d                                               #  11    0x3a8a7  3      
  movl %esi, %r12d                                               #  12    0x3a8aa  3      
  je .L_3a960                                                    #  13    0x3a8ad  6      
  nop                                                            #  14    0x3a8b3  1      
.L_3a8c0:                                                        #        0x3a8b4  0      
  movl 0xfff646e(%rip), %eax                                     #  15    0x3a8b4  6      
  testq %rax, %rax                                               #  16    0x3a8ba  3      
  jne .L_3aa00                                                   #  17    0x3a8bd  6      
  xchgw %ax, %ax                                                 #  18    0x3a8c3  3      
  nop                                                            #  19    0x3a8c6  1      
.L_3a8e0:                                                        #        0x3a8c7  0      
  movl %ebx, %ebx                                                #  20    0x3a8c7  2      
  movq $0x0, (%r15,%rbx,1)                                       #  21    0x3a8c9  8      
  movl %ebx, %ebx                                                #  22    0x3a8d1  2      
  movq $0x0, 0x8(%r15,%rbx,1)                                    #  23    0x3a8d3  9      
  movl %ebx, %ebx                                                #  24    0x3a8dc  2      
  movq $0x0, 0x10(%r15,%rbx,1)                                   #  25    0x3a8de  9      
  movl %ebx, %ebx                                                #  26    0x3a8e7  2      
  movl $0x0, 0x18(%r15,%rbx,1)                                   #  27    0x3a8e9  9      
  nop                                                            #  28    0x3a8f2  1      
  nop                                                            #  29    0x3a8f3  1      
.L_3a920:                                                        #        0x3a8f4  0      
  movl %ebx, %eax                                                #  30    0x3a8f4  2      
  movq 0x30(%rsp), %r12                                          #  31    0x3a8f6  5      
  movq 0x28(%rsp), %rbx                                          #  32    0x3a8fb  5      
  movq 0x38(%rsp), %r13                                          #  33    0x3a900  5      
  movq 0x40(%rsp), %r14                                          #  34    0x3a905  5      
  addl $0x48, %esp                                               #  35    0x3a90a  3      
  addq %r15, %rsp                                                #  36    0x3a90d  3      
  popq %r11                                                      #  37    0x3a910  3      
  xchgw %ax, %ax                                                 #  38    0x3a913  3      
  andl $0xffffffe0, %r11d                                        #  39    0x3a916  7      
  addq %r15, %r11                                                #  40    0x3a91d  3      
  jmpq %r11                                                      #  41    0x3a920  3      
  nop                                                            #  42    0x3a923  1      
  nop                                                            #  43    0x3a924  1      
.L_3a960:                                                        #        0x3a925  0      
  movl $0x10030d20, %edi                                         #  44    0x3a925  5      
  nop                                                            #  45    0x3a92a  1      
  nop                                                            #  46    0x3a92b  1      
  callq .__cxa_guard_acquire                                     #  47    0x3a92c  5      
  testl %eax, %eax                                               #  48    0x3a931  2      
  je .L_3a8c0                                                    #  49    0x3a933  6      
  nop                                                            #  50    0x3a939  1      
  nop                                                            #  51    0x3a93a  1      
  callq ._ZN2pp6Module3GetEv                                     #  52    0x3a93b  5      
  movl %eax, %edi                                                #  53    0x3a940  2      
  movl $0x100206d8, %esi                                         #  54    0x3a942  5      
  nop                                                            #  55    0x3a947  1      
  nop                                                            #  56    0x3a948  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                  #  57    0x3a949  5      
  movl $0x10030d20, %edi                                         #  58    0x3a94e  5      
  movl %eax, 0xfff63cf(%rip)                                     #  59    0x3a953  6      
  nop                                                            #  60    0x3a959  1      
  nop                                                            #  61    0x3a95a  1      
  callq .__cxa_guard_release                                     #  62    0x3a95b  5      
  movl 0xfff63c2(%rip), %eax                                     #  63    0x3a960  6      
  testq %rax, %rax                                               #  64    0x3a966  3      
  je .L_3a8e0                                                    #  65    0x3a969  6      
  xchgw %ax, %ax                                                 #  66    0x3a96f  3      
  nop                                                            #  67    0x3a972  1      
.L_3aa00:                                                        #        0x3a973  0      
  cmpb $0x0, 0xfff63a6(%rip)                                     #  68    0x3a973  7      
  je .L_3aa80                                                    #  69    0x3a97a  6      
  nop                                                            #  70    0x3a980  1      
  nop                                                            #  71    0x3a981  1      
.L_3aa20:                                                        #        0x3a982  0      
  movl %eax, %eax                                                #  72    0x3a982  2      
  movl 0x10(%r15,%rax,1), %eax                                   #  73    0x3a984  5      
  movl %esp, %edi                                                #  74    0x3a989  2      
  movl %r12d, %r12d                                              #  75    0x3a98b  3      
  movl 0x4(%r15,%r12,1), %esi                                    #  76    0x3a98e  5      
  movl %r13d, %ecx                                               #  77    0x3a993  3      
  movl %r14d, %edx                                               #  78    0x3a996  3      
  nop                                                            #  79    0x3a999  1      
  andl $0xffffffe0, %eax                                         #  80    0x3a99a  5      
  addq %r15, %rax                                                #  81    0x3a99f  3      
  callq %rax                                                     #  82    0x3a9a2  2      
  movq (%rsp), %rax                                              #  83    0x3a9a4  4      
  movl %ebx, %ebx                                                #  84    0x3a9a8  2      
  movq %rax, (%r15,%rbx,1)                                       #  85    0x3a9aa  4      
  movq 0x8(%rsp), %rax                                           #  86    0x3a9ae  5      
  movl %ebx, %ebx                                                #  87    0x3a9b3  2      
  movq %rax, 0x8(%r15,%rbx,1)                                    #  88    0x3a9b5  5      
  movq 0x10(%rsp), %rax                                          #  89    0x3a9ba  5      
  nop                                                            #  90    0x3a9bf  1      
  movl %ebx, %ebx                                                #  91    0x3a9c0  2      
  movq %rax, 0x10(%r15,%rbx,1)                                   #  92    0x3a9c2  5      
  movl 0x18(%rsp), %eax                                          #  93    0x3a9c7  4      
  movl %ebx, %ebx                                                #  94    0x3a9cb  2      
  movl %eax, 0x18(%r15,%rbx,1)                                   #  95    0x3a9cd  5      
  jmpq .L_3a920                                                  #  96    0x3a9d2  5      
  nop                                                            #  97    0x3a9d7  1      
.L_3aa80:                                                        #        0x3a9d8  0      
  movl $0x10030d20, %edi                                         #  98    0x3a9d8  5      
  nop                                                            #  99    0x3a9dd  1      
  nop                                                            #  100   0x3a9de  1      
  callq .__cxa_guard_acquire                                     #  101   0x3a9df  5      
  testl %eax, %eax                                               #  102   0x3a9e4  2      
  jne .L_3aae0                                                   #  103   0x3a9e6  6      
  nop                                                            #  104   0x3a9ec  1      
  nop                                                            #  105   0x3a9ed  1      
.L_3aac0:                                                        #        0x3a9ee  0      
  movl 0xfff6334(%rip), %eax                                     #  106   0x3a9ee  6      
  jmpq .L_3aa20                                                  #  107   0x3a9f4  5      
  nop                                                            #  108   0x3a9f9  1      
  nop                                                            #  109   0x3a9fa  1      
.L_3aae0:                                                        #        0x3a9fb  0      
  nop                                                            #  110   0x3a9fb  1      
  nop                                                            #  111   0x3a9fc  1      
  callq ._ZN2pp6Module3GetEv                                     #  112   0x3a9fd  5      
  movl %eax, %edi                                                #  113   0x3aa02  2      
  movl $0x100206d8, %esi                                         #  114   0x3aa04  5      
  nop                                                            #  115   0x3aa09  1      
  nop                                                            #  116   0x3aa0a  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                  #  117   0x3aa0b  5      
  movl $0x10030d20, %edi                                         #  118   0x3aa10  5      
  movl %eax, 0xfff630d(%rip)                                     #  119   0x3aa15  6      
  nop                                                            #  120   0x3aa1b  1      
  nop                                                            #  121   0x3aa1c  1      
  callq .__cxa_guard_release                                     #  122   0x3aa1d  5      
  jmpq .L_3aac0                                                  #  123   0x3aa22  5      
  nop                                                            #  124   0x3aa27  1      
  nop                                                            #  125   0x3aa28  1      
.L_3ab60:                                                        #        0x3aa29  0      
  movl %eax, %ebx                                                #  126   0x3aa29  2      
  movl $0x10030d20, %edi                                         #  127   0x3aa2b  5      
  nop                                                            #  128   0x3aa30  1      
  nop                                                            #  129   0x3aa31  1      
  callq .__cxa_guard_abort                                       #  130   0x3aa32  5      
  movl %ebx, %edi                                                #  131   0x3aa37  2      
  nop                                                            #  132   0x3aa39  1      
  nop                                                            #  133   0x3aa3a  1      
  callq ._Unwind_Resume                                          #  134   0x3aa3b  5      
  jmpq .L_3ab60                                                  #  135   0x3aa40  5      
  nop                                                            #  136   0x3aa45  1      
  nop                                                            #  137   0x3aa46  1      
                                                                                          
.size _ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej, .-_ZNK2pp15TouchInputEvent15GetTouchByIndexE16PP_TouchListTypej

