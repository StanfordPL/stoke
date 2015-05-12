  .text
  .globl _ZNK2pp15MouseInputEvent11GetPositionEv
  .type _ZNK2pp15MouseInputEvent11GetPositionEv, @function

#! file-offset 0x3b3e0
#! rip-offset  0x3b3e0
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15MouseInputEvent11GetPositionEv:        #        0x3b3e0  0      
  pushq %r12                                     #  1     0x3b3e0  3      
  movl %esi, %r12d                               #  2     0x3b3e3  3      
  pushq %rbx                                     #  3     0x3b3e6  2      
  movl %edi, %ebx                                #  4     0x3b3e8  2      
  subl $0x8, %esp                                #  5     0x3b3ea  3      
  addq %r15, %rsp                                #  6     0x3b3ed  3      
  cmpb $0x0, 0xfff5969(%rip)                     #  7     0x3b3f0  7      
  je .L_3b460                                    #  8     0x3b3f7  6      
  nop                                            #  9     0x3b3fd  1      
.L_3b400:                                        #        0x3b3fe  0      
  movl 0xfff5964(%rip), %eax                     #  10    0x3b3fe  6      
  testq %rax, %rax                               #  11    0x3b404  3      
  jne .L_3b500                                   #  12    0x3b407  6      
  xchgw %ax, %ax                                 #  13    0x3b40d  3      
  nop                                            #  14    0x3b410  1      
.L_3b420:                                        #        0x3b411  0      
  movl %ebx, %ebx                                #  15    0x3b411  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x3b413  8      
  movl %ebx, %ebx                                #  17    0x3b41b  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x3b41d  9      
  movl %ebx, %eax                                #  19    0x3b426  2      
  addl $0x8, %esp                                #  20    0x3b428  3      
  addq %r15, %rsp                                #  21    0x3b42b  3      
  popq %rbx                                      #  22    0x3b42e  2      
  popq %r12                                      #  23    0x3b430  3      
  popq %r11                                      #  24    0x3b433  3      
  andl $0xffffffe0, %r11d                        #  25    0x3b436  7      
  addq %r15, %r11                                #  26    0x3b43d  3      
  jmpq %r11                                      #  27    0x3b440  3      
  nop                                            #  28    0x3b443  1      
  nop                                            #  29    0x3b444  1      
.L_3b460:                                        #        0x3b445  0      
  movl $0x10030d60, %edi                         #  30    0x3b445  5      
  nop                                            #  31    0x3b44a  1      
  nop                                            #  32    0x3b44b  1      
  callq .__cxa_guard_acquire                     #  33    0x3b44c  5      
  testl %eax, %eax                               #  34    0x3b451  2      
  je .L_3b400                                    #  35    0x3b453  6      
  nop                                            #  36    0x3b459  1      
  nop                                            #  37    0x3b45a  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x3b45b  5      
  movl %eax, %edi                                #  39    0x3b460  2      
  movl $0x100206f0, %esi                         #  40    0x3b462  5      
  nop                                            #  41    0x3b467  1      
  nop                                            #  42    0x3b468  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x3b469  5      
  movl $0x10030d60, %edi                         #  44    0x3b46e  5      
  movl %eax, 0xfff58ef(%rip)                     #  45    0x3b473  6      
  nop                                            #  46    0x3b479  1      
  nop                                            #  47    0x3b47a  1      
  callq .__cxa_guard_release                     #  48    0x3b47b  5      
  movl 0xfff58e2(%rip), %eax                     #  49    0x3b480  6      
  testq %rax, %rax                               #  50    0x3b486  3      
  je .L_3b420                                    #  51    0x3b489  6      
  xchgw %ax, %ax                                 #  52    0x3b48f  3      
  nop                                            #  53    0x3b492  1      
.L_3b500:                                        #        0x3b493  0      
  cmpb $0x0, 0xfff58c6(%rip)                     #  54    0x3b493  7      
  je .L_3b580                                    #  55    0x3b49a  6      
  nop                                            #  56    0x3b4a0  1      
  nop                                            #  57    0x3b4a1  1      
.L_3b520:                                        #        0x3b4a2  0      
  movl %eax, %eax                                #  58    0x3b4a2  2      
  movl 0xc(%r15,%rax,1), %eax                    #  59    0x3b4a4  5      
  movl %r12d, %r12d                              #  60    0x3b4a9  3      
  movl 0x4(%r15,%r12,1), %edi                    #  61    0x3b4ac  5      
  nop                                            #  62    0x3b4b1  1      
  andl $0xffffffe0, %eax                         #  63    0x3b4b2  5      
  addq %r15, %rax                                #  64    0x3b4b7  3      
  callq %rax                                     #  65    0x3b4ba  2      
  movl %ebx, %ebx                                #  66    0x3b4bc  2      
  movl %eax, (%r15,%rbx,1)                       #  67    0x3b4be  4      
  sarq $0x20, %rax                               #  68    0x3b4c2  4      
  movl %ebx, %ebx                                #  69    0x3b4c6  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  70    0x3b4c8  5      
  addl $0x8, %esp                                #  71    0x3b4cd  3      
  addq %r15, %rsp                                #  72    0x3b4d0  3      
  movl %ebx, %eax                                #  73    0x3b4d3  2      
  popq %rbx                                      #  74    0x3b4d5  2      
  popq %r12                                      #  75    0x3b4d7  3      
  popq %r11                                      #  76    0x3b4da  3      
  xchgw %ax, %ax                                 #  77    0x3b4dd  3      
  andl $0xffffffe0, %r11d                        #  78    0x3b4e0  7      
  addq %r15, %r11                                #  79    0x3b4e7  3      
  jmpq %r11                                      #  80    0x3b4ea  3      
  nop                                            #  81    0x3b4ed  1      
  nop                                            #  82    0x3b4ee  1      
.L_3b580:                                        #        0x3b4ef  0      
  movl $0x10030d60, %edi                         #  83    0x3b4ef  5      
  nop                                            #  84    0x3b4f4  1      
  nop                                            #  85    0x3b4f5  1      
  callq .__cxa_guard_acquire                     #  86    0x3b4f6  5      
  testl %eax, %eax                               #  87    0x3b4fb  2      
  jne .L_3b5e0                                   #  88    0x3b4fd  6      
  nop                                            #  89    0x3b503  1      
  nop                                            #  90    0x3b504  1      
.L_3b5c0:                                        #        0x3b505  0      
  movl 0xfff585d(%rip), %eax                     #  91    0x3b505  6      
  jmpq .L_3b520                                  #  92    0x3b50b  5      
  nop                                            #  93    0x3b510  1      
  nop                                            #  94    0x3b511  1      
.L_3b5e0:                                        #        0x3b512  0      
  nop                                            #  95    0x3b512  1      
  nop                                            #  96    0x3b513  1      
  callq ._ZN2pp6Module3GetEv                     #  97    0x3b514  5      
  movl %eax, %edi                                #  98    0x3b519  2      
  movl $0x100206f0, %esi                         #  99    0x3b51b  5      
  nop                                            #  100   0x3b520  1      
  nop                                            #  101   0x3b521  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  102   0x3b522  5      
  movl $0x10030d60, %edi                         #  103   0x3b527  5      
  movl %eax, 0xfff5836(%rip)                     #  104   0x3b52c  6      
  nop                                            #  105   0x3b532  1      
  nop                                            #  106   0x3b533  1      
  callq .__cxa_guard_release                     #  107   0x3b534  5      
  jmpq .L_3b5c0                                  #  108   0x3b539  5      
  nop                                            #  109   0x3b53e  1      
  nop                                            #  110   0x3b53f  1      
.L_3b660:                                        #        0x3b540  0      
  movl %eax, %ebx                                #  111   0x3b540  2      
  movl $0x10030d60, %edi                         #  112   0x3b542  5      
  nop                                            #  113   0x3b547  1      
  nop                                            #  114   0x3b548  1      
  callq .__cxa_guard_abort                       #  115   0x3b549  5      
  movl %ebx, %edi                                #  116   0x3b54e  2      
  nop                                            #  117   0x3b550  1      
  nop                                            #  118   0x3b551  1      
  callq ._Unwind_Resume                          #  119   0x3b552  5      
  jmpq .L_3b660                                  #  120   0x3b557  5      
  nop                                            #  121   0x3b55c  1      
  nop                                            #  122   0x3b55d  1      
                                                                          
.size _ZNK2pp15MouseInputEvent11GetPositionEv, .-_ZNK2pp15MouseInputEvent11GetPositionEv

