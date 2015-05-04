  .text
  .globl _ZNK2pp13IMEInputEvent7GetTextEv
  .type _ZNK2pp13IMEInputEvent7GetTextEv, @function

#! file-offset 0x3ce60
#! rip-offset  0x3ce60
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp13IMEInputEvent7GetTextEv:               #        0x3ce60  0      
  pushq %r12                                     #  1     0x3ce60  3      
  movl %esi, %r12d                               #  2     0x3ce63  3      
  pushq %rbx                                     #  3     0x3ce66  2      
  movl %edi, %ebx                                #  4     0x3ce68  2      
  subl $0x28, %esp                               #  5     0x3ce6a  3      
  addq %r15, %rsp                                #  6     0x3ce6d  3      
  cmpb $0x0, 0xfff3e99(%rip)                     #  7     0x3ce70  7      
  je .L_3cf40                                    #  8     0x3ce77  6      
  nop                                            #  9     0x3ce7d  1      
.L_3ce80:                                        #        0x3ce7e  0      
  movl 0xfff3e94(%rip), %eax                     #  10    0x3ce7e  6      
  testq %rax, %rax                               #  11    0x3ce84  3      
  jne .L_3cec0                                   #  12    0x3ce87  6      
  movl %ebx, %edi                                #  13    0x3ce8d  2      
  nop                                            #  14    0x3ce8f  1      
  callq ._ZN2pp3VarC1Ev                          #  15    0x3ce90  5      
  addl $0x28, %esp                               #  16    0x3ce95  3      
  addq %r15, %rsp                                #  17    0x3ce98  3      
  movl %ebx, %eax                                #  18    0x3ce9b  2      
  popq %rbx                                      #  19    0x3ce9d  2      
  popq %r12                                      #  20    0x3ce9f  3      
  popq %r11                                      #  21    0x3cea2  3      
  andl $0xffffffe0, %r11d                        #  22    0x3cea5  7      
  addq %r15, %r11                                #  23    0x3ceac  3      
  jmpq %r11                                      #  24    0x3ceaf  3      
  nop                                            #  25    0x3ceb2  1      
.L_3cec0:                                        #        0x3ceb3  0      
  cmpb $0x0, 0xfff3e56(%rip)                     #  26    0x3ceb3  7      
  je .L_3cfe0                                    #  27    0x3ceba  6      
  nop                                            #  28    0x3cec0  1      
  nop                                            #  29    0x3cec1  1      
.L_3cee0:                                        #        0x3cec2  0      
  movl %eax, %eax                                #  30    0x3cec2  2      
  movl 0x8(%r15,%rax,1), %eax                    #  31    0x3cec4  5      
  movl %r12d, %r12d                              #  32    0x3cec9  3      
  movl 0x4(%r15,%r12,1), %edi                    #  33    0x3cecc  5      
  nop                                            #  34    0x3ced1  1      
  andl $0xffffffe0, %eax                         #  35    0x3ced2  5      
  addq %r15, %rax                                #  36    0x3ced7  3      
  callq %rax                                     #  37    0x3ceda  2      
  movl %ebx, %ebx                                #  38    0x3cedc  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  39    0x3cede  8      
  movl %ebx, %ebx                                #  40    0x3cee6  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  41    0x3cee8  5      
  movl %ebx, %ebx                                #  42    0x3ceed  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  43    0x3ceef  6      
  movl %ebx, %ebx                                #  44    0x3cef5  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  45    0x3cef7  5      
  addl $0x28, %esp                               #  46    0x3cefc  3      
  addq %r15, %rsp                                #  47    0x3ceff  3      
  movl %ebx, %eax                                #  48    0x3cf02  2      
  popq %rbx                                      #  49    0x3cf04  2      
  popq %r12                                      #  50    0x3cf06  3      
  popq %r11                                      #  51    0x3cf09  3      
  andl $0xffffffe0, %r11d                        #  52    0x3cf0c  7      
  addq %r15, %r11                                #  53    0x3cf13  3      
  jmpq %r11                                      #  54    0x3cf16  3      
  nop                                            #  55    0x3cf19  1      
.L_3cf40:                                        #        0x3cf1a  0      
  movl $0x10030d10, %edi                         #  56    0x3cf1a  5      
  nop                                            #  57    0x3cf1f  1      
  nop                                            #  58    0x3cf20  1      
  callq .__cxa_guard_acquire                     #  59    0x3cf21  5      
  testl %eax, %eax                               #  60    0x3cf26  2      
  je .L_3ce80                                    #  61    0x3cf28  6      
  nop                                            #  62    0x3cf2e  1      
  nop                                            #  63    0x3cf2f  1      
  callq ._ZN2pp6Module3GetEv                     #  64    0x3cf30  5      
  movl %eax, %edi                                #  65    0x3cf35  2      
  movl $0x10020674, %esi                         #  66    0x3cf37  5      
  nop                                            #  67    0x3cf3c  1      
  nop                                            #  68    0x3cf3d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  69    0x3cf3e  5      
  movl $0x10030d10, %edi                         #  70    0x3cf43  5      
  movl %eax, 0xfff3dca(%rip)                     #  71    0x3cf48  6      
  nop                                            #  72    0x3cf4e  1      
  nop                                            #  73    0x3cf4f  1      
  callq .__cxa_guard_release                     #  74    0x3cf50  5      
  jmpq .L_3ce80                                  #  75    0x3cf55  5      
  nop                                            #  76    0x3cf5a  1      
  nop                                            #  77    0x3cf5b  1      
.L_3cfe0:                                        #        0x3cf5c  0      
  movl $0x10030d10, %edi                         #  78    0x3cf5c  5      
  nop                                            #  79    0x3cf61  1      
  nop                                            #  80    0x3cf62  1      
  callq .__cxa_guard_acquire                     #  81    0x3cf63  5      
  testl %eax, %eax                               #  82    0x3cf68  2      
  jne .L_3d040                                   #  83    0x3cf6a  6      
  nop                                            #  84    0x3cf70  1      
  nop                                            #  85    0x3cf71  1      
.L_3d020:                                        #        0x3cf72  0      
  movl 0xfff3da0(%rip), %eax                     #  86    0x3cf72  6      
  jmpq .L_3cee0                                  #  87    0x3cf78  5      
  nop                                            #  88    0x3cf7d  1      
  nop                                            #  89    0x3cf7e  1      
.L_3d040:                                        #        0x3cf7f  0      
  nop                                            #  90    0x3cf7f  1      
  nop                                            #  91    0x3cf80  1      
  callq ._ZN2pp6Module3GetEv                     #  92    0x3cf81  5      
  movl %eax, %edi                                #  93    0x3cf86  2      
  movl $0x10020674, %esi                         #  94    0x3cf88  5      
  nop                                            #  95    0x3cf8d  1      
  nop                                            #  96    0x3cf8e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  97    0x3cf8f  5      
  movl $0x10030d10, %edi                         #  98    0x3cf94  5      
  movl %eax, 0xfff3d79(%rip)                     #  99    0x3cf99  6      
  nop                                            #  100   0x3cf9f  1      
  nop                                            #  101   0x3cfa0  1      
  callq .__cxa_guard_release                     #  102   0x3cfa1  5      
  jmpq .L_3d020                                  #  103   0x3cfa6  5      
  nop                                            #  104   0x3cfab  1      
  nop                                            #  105   0x3cfac  1      
.L_3d0c0:                                        #        0x3cfad  0      
  movl %eax, %ebx                                #  106   0x3cfad  2      
  movl $0x10030d10, %edi                         #  107   0x3cfaf  5      
  nop                                            #  108   0x3cfb4  1      
  nop                                            #  109   0x3cfb5  1      
  callq .__cxa_guard_abort                       #  110   0x3cfb6  5      
  movl %ebx, %edi                                #  111   0x3cfbb  2      
  nop                                            #  112   0x3cfbd  1      
  nop                                            #  113   0x3cfbe  1      
  callq ._Unwind_Resume                          #  114   0x3cfbf  5      
  jmpq .L_3d0c0                                  #  115   0x3cfc4  5      
  nop                                            #  116   0x3cfc9  1      
  nop                                            #  117   0x3cfca  1      
                                                                          
.size _ZNK2pp13IMEInputEvent7GetTextEv, .-_ZNK2pp13IMEInputEvent7GetTextEv

