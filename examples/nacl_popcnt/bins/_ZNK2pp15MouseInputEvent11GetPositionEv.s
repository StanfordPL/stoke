  .text
  .globl _ZNK2pp15MouseInputEvent11GetPositionEv
  .type _ZNK2pp15MouseInputEvent11GetPositionEv, @function

#! file-offset 0x3b460
#! rip-offset  0x3b460
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15MouseInputEvent11GetPositionEv:        #        0x3b460  0      
  pushq %r12                                     #  1     0x3b460  3      
  movl %esi, %r12d                               #  2     0x3b463  3      
  pushq %rbx                                     #  3     0x3b466  2      
  movl %edi, %ebx                                #  4     0x3b468  2      
  subl $0x8, %esp                                #  5     0x3b46a  3      
  addq %r15, %rsp                                #  6     0x3b46d  3      
  cmpb $0x0, 0xfff58e9(%rip)                     #  7     0x3b470  7      
  je .L_3b4e0                                    #  8     0x3b477  6      
  nop                                            #  9     0x3b47d  1      
.L_3b480:                                        #        0x3b47e  0      
  movl 0xfff58e4(%rip), %eax                     #  10    0x3b47e  6      
  testq %rax, %rax                               #  11    0x3b484  3      
  jne .L_3b580                                   #  12    0x3b487  6      
  xchgw %ax, %ax                                 #  13    0x3b48d  3      
  nop                                            #  14    0x3b490  1      
.L_3b4a0:                                        #        0x3b491  0      
  movl %ebx, %ebx                                #  15    0x3b491  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x3b493  8      
  movl %ebx, %ebx                                #  17    0x3b49b  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x3b49d  9      
  movl %ebx, %eax                                #  19    0x3b4a6  2      
  addl $0x8, %esp                                #  20    0x3b4a8  3      
  addq %r15, %rsp                                #  21    0x3b4ab  3      
  popq %rbx                                      #  22    0x3b4ae  2      
  popq %r12                                      #  23    0x3b4b0  3      
  popq %r11                                      #  24    0x3b4b3  3      
  andl $0xffffffe0, %r11d                        #  25    0x3b4b6  7      
  addq %r15, %r11                                #  26    0x3b4bd  3      
  jmpq %r11                                      #  27    0x3b4c0  3      
  nop                                            #  28    0x3b4c3  1      
  nop                                            #  29    0x3b4c4  1      
.L_3b4e0:                                        #        0x3b4c5  0      
  movl $0x10030d60, %edi                         #  30    0x3b4c5  5      
  nop                                            #  31    0x3b4ca  1      
  nop                                            #  32    0x3b4cb  1      
  callq .__cxa_guard_acquire                     #  33    0x3b4cc  5      
  testl %eax, %eax                               #  34    0x3b4d1  2      
  je .L_3b480                                    #  35    0x3b4d3  6      
  nop                                            #  36    0x3b4d9  1      
  nop                                            #  37    0x3b4da  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x3b4db  5      
  movl %eax, %edi                                #  39    0x3b4e0  2      
  movl $0x100206f0, %esi                         #  40    0x3b4e2  5      
  nop                                            #  41    0x3b4e7  1      
  nop                                            #  42    0x3b4e8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x3b4e9  5      
  movl $0x10030d60, %edi                         #  44    0x3b4ee  5      
  movl %eax, 0xfff586f(%rip)                     #  45    0x3b4f3  6      
  nop                                            #  46    0x3b4f9  1      
  nop                                            #  47    0x3b4fa  1      
  callq .__cxa_guard_release                     #  48    0x3b4fb  5      
  movl 0xfff5862(%rip), %eax                     #  49    0x3b500  6      
  testq %rax, %rax                               #  50    0x3b506  3      
  je .L_3b4a0                                    #  51    0x3b509  6      
  xchgw %ax, %ax                                 #  52    0x3b50f  3      
  nop                                            #  53    0x3b512  1      
.L_3b580:                                        #        0x3b513  0      
  cmpb $0x0, 0xfff5846(%rip)                     #  54    0x3b513  7      
  je .L_3b600                                    #  55    0x3b51a  6      
  nop                                            #  56    0x3b520  1      
  nop                                            #  57    0x3b521  1      
.L_3b5a0:                                        #        0x3b522  0      
  movl %eax, %eax                                #  58    0x3b522  2      
  movl 0xc(%r15,%rax,1), %eax                    #  59    0x3b524  5      
  movl %r12d, %r12d                              #  60    0x3b529  3      
  movl 0x4(%r15,%r12,1), %edi                    #  61    0x3b52c  5      
  nop                                            #  62    0x3b531  1      
  andl $0xffffffe0, %eax                         #  63    0x3b532  5      
  addq %r15, %rax                                #  64    0x3b537  3      
  callq %rax                                     #  65    0x3b53a  2      
  movl %ebx, %ebx                                #  66    0x3b53c  2      
  movl %eax, (%r15,%rbx,1)                       #  67    0x3b53e  4      
  sarq $0x20, %rax                               #  68    0x3b542  4      
  movl %ebx, %ebx                                #  69    0x3b546  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  70    0x3b548  5      
  addl $0x8, %esp                                #  71    0x3b54d  3      
  addq %r15, %rsp                                #  72    0x3b550  3      
  movl %ebx, %eax                                #  73    0x3b553  2      
  popq %rbx                                      #  74    0x3b555  2      
  popq %r12                                      #  75    0x3b557  3      
  popq %r11                                      #  76    0x3b55a  3      
  xchgw %ax, %ax                                 #  77    0x3b55d  3      
  andl $0xffffffe0, %r11d                        #  78    0x3b560  7      
  addq %r15, %r11                                #  79    0x3b567  3      
  jmpq %r11                                      #  80    0x3b56a  3      
  nop                                            #  81    0x3b56d  1      
  nop                                            #  82    0x3b56e  1      
.L_3b600:                                        #        0x3b56f  0      
  movl $0x10030d60, %edi                         #  83    0x3b56f  5      
  nop                                            #  84    0x3b574  1      
  nop                                            #  85    0x3b575  1      
  callq .__cxa_guard_acquire                     #  86    0x3b576  5      
  testl %eax, %eax                               #  87    0x3b57b  2      
  jne .L_3b660                                   #  88    0x3b57d  6      
  nop                                            #  89    0x3b583  1      
  nop                                            #  90    0x3b584  1      
.L_3b640:                                        #        0x3b585  0      
  movl 0xfff57dd(%rip), %eax                     #  91    0x3b585  6      
  jmpq .L_3b5a0                                  #  92    0x3b58b  5      
  nop                                            #  93    0x3b590  1      
  nop                                            #  94    0x3b591  1      
.L_3b660:                                        #        0x3b592  0      
  nop                                            #  95    0x3b592  1      
  nop                                            #  96    0x3b593  1      
  callq ._ZN2pp6Module3GetEv                     #  97    0x3b594  5      
  movl %eax, %edi                                #  98    0x3b599  2      
  movl $0x100206f0, %esi                         #  99    0x3b59b  5      
  nop                                            #  100   0x3b5a0  1      
  nop                                            #  101   0x3b5a1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  102   0x3b5a2  5      
  movl $0x10030d60, %edi                         #  103   0x3b5a7  5      
  movl %eax, 0xfff57b6(%rip)                     #  104   0x3b5ac  6      
  nop                                            #  105   0x3b5b2  1      
  nop                                            #  106   0x3b5b3  1      
  callq .__cxa_guard_release                     #  107   0x3b5b4  5      
  jmpq .L_3b640                                  #  108   0x3b5b9  5      
  nop                                            #  109   0x3b5be  1      
  nop                                            #  110   0x3b5bf  1      
.L_3b6e0:                                        #        0x3b5c0  0      
  movl %eax, %ebx                                #  111   0x3b5c0  2      
  movl $0x10030d60, %edi                         #  112   0x3b5c2  5      
  nop                                            #  113   0x3b5c7  1      
  nop                                            #  114   0x3b5c8  1      
  callq .__cxa_guard_abort                       #  115   0x3b5c9  5      
  movl %ebx, %edi                                #  116   0x3b5ce  2      
  nop                                            #  117   0x3b5d0  1      
  nop                                            #  118   0x3b5d1  1      
  callq ._Unwind_Resume                          #  119   0x3b5d2  5      
  jmpq .L_3b6e0                                  #  120   0x3b5d7  5      
  nop                                            #  121   0x3b5dc  1      
  nop                                            #  122   0x3b5dd  1      
                                                                          
.size _ZNK2pp15MouseInputEvent11GetPositionEv, .-_ZNK2pp15MouseInputEvent11GetPositionEv

