  .text
  .globl _ZNK2pp13IMEInputEvent7GetTextEv
  .type _ZNK2pp13IMEInputEvent7GetTextEv, @function

#! file-offset 0x3cde0
#! rip-offset  0x3cde0
#! capacity    704 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp13IMEInputEvent7GetTextEv:               #        0x3cde0  0      
  pushq %r12                                     #  1     0x3cde0  3      
  movl %esi, %r12d                               #  2     0x3cde3  3      
  pushq %rbx                                     #  3     0x3cde6  2      
  movl %edi, %ebx                                #  4     0x3cde8  2      
  subl $0x28, %esp                               #  5     0x3cdea  3      
  addq %r15, %rsp                                #  6     0x3cded  3      
  cmpb $0x0, 0xfff3f19(%rip)                     #  7     0x3cdf0  7      
  je .L_3cec0                                    #  8     0x3cdf7  6      
  nop                                            #  9     0x3cdfd  1      
.L_3ce00:                                        #        0x3cdfe  0      
  movl 0xfff3f14(%rip), %eax                     #  10    0x3cdfe  6      
  testq %rax, %rax                               #  11    0x3ce04  3      
  jne .L_3ce40                                   #  12    0x3ce07  6      
  movl %ebx, %edi                                #  13    0x3ce0d  2      
  nop                                            #  14    0x3ce0f  1      
  callq ._ZN2pp3VarC1Ev                          #  15    0x3ce10  5      
  addl $0x28, %esp                               #  16    0x3ce15  3      
  addq %r15, %rsp                                #  17    0x3ce18  3      
  movl %ebx, %eax                                #  18    0x3ce1b  2      
  popq %rbx                                      #  19    0x3ce1d  2      
  popq %r12                                      #  20    0x3ce1f  3      
  popq %r11                                      #  21    0x3ce22  3      
  andl $0xffffffe0, %r11d                        #  22    0x3ce25  7      
  addq %r15, %r11                                #  23    0x3ce2c  3      
  jmpq %r11                                      #  24    0x3ce2f  3      
  nop                                            #  25    0x3ce32  1      
.L_3ce40:                                        #        0x3ce33  0      
  cmpb $0x0, 0xfff3ed6(%rip)                     #  26    0x3ce33  7      
  je .L_3cf60                                    #  27    0x3ce3a  6      
  nop                                            #  28    0x3ce40  1      
  nop                                            #  29    0x3ce41  1      
.L_3ce60:                                        #        0x3ce42  0      
  movl %eax, %eax                                #  30    0x3ce42  2      
  movl 0x8(%r15,%rax,1), %eax                    #  31    0x3ce44  5      
  movl %r12d, %r12d                              #  32    0x3ce49  3      
  movl 0x4(%r15,%r12,1), %edi                    #  33    0x3ce4c  5      
  nop                                            #  34    0x3ce51  1      
  andl $0xffffffe0, %eax                         #  35    0x3ce52  5      
  addq %r15, %rax                                #  36    0x3ce57  3      
  callq %rax                                     #  37    0x3ce5a  2      
  movl %ebx, %ebx                                #  38    0x3ce5c  2      
  movl $0x100205f8, (%r15,%rbx,1)                #  39    0x3ce5e  8      
  movl %ebx, %ebx                                #  40    0x3ce66  2      
  movq %rdx, 0x10(%r15,%rbx,1)                   #  41    0x3ce68  5      
  movl %ebx, %ebx                                #  42    0x3ce6d  2      
  movb $0x1, 0x18(%r15,%rbx,1)                   #  43    0x3ce6f  6      
  movl %ebx, %ebx                                #  44    0x3ce75  2      
  movq %rax, 0x8(%r15,%rbx,1)                    #  45    0x3ce77  5      
  addl $0x28, %esp                               #  46    0x3ce7c  3      
  addq %r15, %rsp                                #  47    0x3ce7f  3      
  movl %ebx, %eax                                #  48    0x3ce82  2      
  popq %rbx                                      #  49    0x3ce84  2      
  popq %r12                                      #  50    0x3ce86  3      
  popq %r11                                      #  51    0x3ce89  3      
  andl $0xffffffe0, %r11d                        #  52    0x3ce8c  7      
  addq %r15, %r11                                #  53    0x3ce93  3      
  jmpq %r11                                      #  54    0x3ce96  3      
  nop                                            #  55    0x3ce99  1      
.L_3cec0:                                        #        0x3ce9a  0      
  movl $0x10030d10, %edi                         #  56    0x3ce9a  5      
  nop                                            #  57    0x3ce9f  1      
  nop                                            #  58    0x3cea0  1      
  callq .__cxa_guard_acquire                     #  59    0x3cea1  5      
  testl %eax, %eax                               #  60    0x3cea6  2      
  je .L_3ce00                                    #  61    0x3cea8  6      
  nop                                            #  62    0x3ceae  1      
  nop                                            #  63    0x3ceaf  1      
  callq ._ZN2pp6Module3GetEv                     #  64    0x3ceb0  5      
  movl %eax, %edi                                #  65    0x3ceb5  2      
  movl $0x10020674, %esi                         #  66    0x3ceb7  5      
  nop                                            #  67    0x3cebc  1      
  nop                                            #  68    0x3cebd  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  69    0x3cebe  5      
  movl $0x10030d10, %edi                         #  70    0x3cec3  5      
  movl %eax, 0xfff3e4a(%rip)                     #  71    0x3cec8  6      
  nop                                            #  72    0x3cece  1      
  nop                                            #  73    0x3cecf  1      
  callq .__cxa_guard_release                     #  74    0x3ced0  5      
  jmpq .L_3ce00                                  #  75    0x3ced5  5      
  nop                                            #  76    0x3ceda  1      
  nop                                            #  77    0x3cedb  1      
.L_3cf60:                                        #        0x3cedc  0      
  movl $0x10030d10, %edi                         #  78    0x3cedc  5      
  nop                                            #  79    0x3cee1  1      
  nop                                            #  80    0x3cee2  1      
  callq .__cxa_guard_acquire                     #  81    0x3cee3  5      
  testl %eax, %eax                               #  82    0x3cee8  2      
  jne .L_3cfc0                                   #  83    0x3ceea  6      
  nop                                            #  84    0x3cef0  1      
  nop                                            #  85    0x3cef1  1      
.L_3cfa0:                                        #        0x3cef2  0      
  movl 0xfff3e20(%rip), %eax                     #  86    0x3cef2  6      
  jmpq .L_3ce60                                  #  87    0x3cef8  5      
  nop                                            #  88    0x3cefd  1      
  nop                                            #  89    0x3cefe  1      
.L_3cfc0:                                        #        0x3ceff  0      
  nop                                            #  90    0x3ceff  1      
  nop                                            #  91    0x3cf00  1      
  callq ._ZN2pp6Module3GetEv                     #  92    0x3cf01  5      
  movl %eax, %edi                                #  93    0x3cf06  2      
  movl $0x10020674, %esi                         #  94    0x3cf08  5      
  nop                                            #  95    0x3cf0d  1      
  nop                                            #  96    0x3cf0e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  97    0x3cf0f  5      
  movl $0x10030d10, %edi                         #  98    0x3cf14  5      
  movl %eax, 0xfff3df9(%rip)                     #  99    0x3cf19  6      
  nop                                            #  100   0x3cf1f  1      
  nop                                            #  101   0x3cf20  1      
  callq .__cxa_guard_release                     #  102   0x3cf21  5      
  jmpq .L_3cfa0                                  #  103   0x3cf26  5      
  nop                                            #  104   0x3cf2b  1      
  nop                                            #  105   0x3cf2c  1      
.L_3d040:                                        #        0x3cf2d  0      
  movl %eax, %ebx                                #  106   0x3cf2d  2      
  movl $0x10030d10, %edi                         #  107   0x3cf2f  5      
  nop                                            #  108   0x3cf34  1      
  nop                                            #  109   0x3cf35  1      
  callq .__cxa_guard_abort                       #  110   0x3cf36  5      
  movl %ebx, %edi                                #  111   0x3cf3b  2      
  nop                                            #  112   0x3cf3d  1      
  nop                                            #  113   0x3cf3e  1      
  callq ._Unwind_Resume                          #  114   0x3cf3f  5      
  jmpq .L_3d040                                  #  115   0x3cf44  5      
  nop                                            #  116   0x3cf49  1      
  nop                                            #  117   0x3cf4a  1      
                                                                          
.size _ZNK2pp13IMEInputEvent7GetTextEv, .-_ZNK2pp13IMEInputEvent7GetTextEv

