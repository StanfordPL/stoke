  .text
  .globl _ZNK2pp15MouseInputEvent11GetPositionEv
  .type _ZNK2pp15MouseInputEvent11GetPositionEv, @function

#! file-offset 0x3b3c0
#! rip-offset  0x3b3c0
#! capacity    736 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15MouseInputEvent11GetPositionEv:        #        0x3b3c0  0      
  pushq %r12                                     #  1     0x3b3c0  3      
  movl %esi, %r12d                               #  2     0x3b3c3  3      
  pushq %rbx                                     #  3     0x3b3c6  2      
  movl %edi, %ebx                                #  4     0x3b3c8  2      
  subl $0x8, %esp                                #  5     0x3b3ca  3      
  addq %r15, %rsp                                #  6     0x3b3cd  3      
  cmpb $0x0, 0xfff5989(%rip)                     #  7     0x3b3d0  7      
  je .L_3b440                                    #  8     0x3b3d7  6      
  nop                                            #  9     0x3b3dd  1      
.L_3b3e0:                                        #        0x3b3de  0      
  movl 0xfff5984(%rip), %eax                     #  10    0x3b3de  6      
  testq %rax, %rax                               #  11    0x3b3e4  3      
  jne .L_3b4e0                                   #  12    0x3b3e7  6      
  xchgw %ax, %ax                                 #  13    0x3b3ed  3      
  nop                                            #  14    0x3b3f0  1      
.L_3b400:                                        #        0x3b3f1  0      
  movl %ebx, %ebx                                #  15    0x3b3f1  2      
  movl $0x0, (%r15,%rbx,1)                       #  16    0x3b3f3  8      
  movl %ebx, %ebx                                #  17    0x3b3fb  2      
  movl $0x0, 0x4(%r15,%rbx,1)                    #  18    0x3b3fd  9      
  movl %ebx, %eax                                #  19    0x3b406  2      
  addl $0x8, %esp                                #  20    0x3b408  3      
  addq %r15, %rsp                                #  21    0x3b40b  3      
  popq %rbx                                      #  22    0x3b40e  2      
  popq %r12                                      #  23    0x3b410  3      
  popq %r11                                      #  24    0x3b413  3      
  andl $0xffffffe0, %r11d                        #  25    0x3b416  7      
  addq %r15, %r11                                #  26    0x3b41d  3      
  jmpq %r11                                      #  27    0x3b420  3      
  nop                                            #  28    0x3b423  1      
  nop                                            #  29    0x3b424  1      
.L_3b440:                                        #        0x3b425  0      
  movl $0x10030d60, %edi                         #  30    0x3b425  5      
  nop                                            #  31    0x3b42a  1      
  nop                                            #  32    0x3b42b  1      
  callq .__cxa_guard_acquire                     #  33    0x3b42c  5      
  testl %eax, %eax                               #  34    0x3b431  2      
  je .L_3b3e0                                    #  35    0x3b433  6      
  nop                                            #  36    0x3b439  1      
  nop                                            #  37    0x3b43a  1      
  callq ._ZN2pp6Module3GetEv                     #  38    0x3b43b  5      
  movl %eax, %edi                                #  39    0x3b440  2      
  movl $0x100206f0, %esi                         #  40    0x3b442  5      
  nop                                            #  41    0x3b447  1      
  nop                                            #  42    0x3b448  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  43    0x3b449  5      
  movl $0x10030d60, %edi                         #  44    0x3b44e  5      
  movl %eax, 0xfff590f(%rip)                     #  45    0x3b453  6      
  nop                                            #  46    0x3b459  1      
  nop                                            #  47    0x3b45a  1      
  callq .__cxa_guard_release                     #  48    0x3b45b  5      
  movl 0xfff5902(%rip), %eax                     #  49    0x3b460  6      
  testq %rax, %rax                               #  50    0x3b466  3      
  je .L_3b400                                    #  51    0x3b469  6      
  xchgw %ax, %ax                                 #  52    0x3b46f  3      
  nop                                            #  53    0x3b472  1      
.L_3b4e0:                                        #        0x3b473  0      
  cmpb $0x0, 0xfff58e6(%rip)                     #  54    0x3b473  7      
  je .L_3b560                                    #  55    0x3b47a  6      
  nop                                            #  56    0x3b480  1      
  nop                                            #  57    0x3b481  1      
.L_3b500:                                        #        0x3b482  0      
  movl %eax, %eax                                #  58    0x3b482  2      
  movl 0xc(%r15,%rax,1), %eax                    #  59    0x3b484  5      
  movl %r12d, %r12d                              #  60    0x3b489  3      
  movl 0x4(%r15,%r12,1), %edi                    #  61    0x3b48c  5      
  nop                                            #  62    0x3b491  1      
  andl $0xffffffe0, %eax                         #  63    0x3b492  5      
  addq %r15, %rax                                #  64    0x3b497  3      
  callq %rax                                     #  65    0x3b49a  2      
  movl %ebx, %ebx                                #  66    0x3b49c  2      
  movl %eax, (%r15,%rbx,1)                       #  67    0x3b49e  4      
  sarq $0x20, %rax                               #  68    0x3b4a2  4      
  movl %ebx, %ebx                                #  69    0x3b4a6  2      
  movl %eax, 0x4(%r15,%rbx,1)                    #  70    0x3b4a8  5      
  addl $0x8, %esp                                #  71    0x3b4ad  3      
  addq %r15, %rsp                                #  72    0x3b4b0  3      
  movl %ebx, %eax                                #  73    0x3b4b3  2      
  popq %rbx                                      #  74    0x3b4b5  2      
  popq %r12                                      #  75    0x3b4b7  3      
  popq %r11                                      #  76    0x3b4ba  3      
  xchgw %ax, %ax                                 #  77    0x3b4bd  3      
  andl $0xffffffe0, %r11d                        #  78    0x3b4c0  7      
  addq %r15, %r11                                #  79    0x3b4c7  3      
  jmpq %r11                                      #  80    0x3b4ca  3      
  nop                                            #  81    0x3b4cd  1      
  nop                                            #  82    0x3b4ce  1      
.L_3b560:                                        #        0x3b4cf  0      
  movl $0x10030d60, %edi                         #  83    0x3b4cf  5      
  nop                                            #  84    0x3b4d4  1      
  nop                                            #  85    0x3b4d5  1      
  callq .__cxa_guard_acquire                     #  86    0x3b4d6  5      
  testl %eax, %eax                               #  87    0x3b4db  2      
  jne .L_3b5c0                                   #  88    0x3b4dd  6      
  nop                                            #  89    0x3b4e3  1      
  nop                                            #  90    0x3b4e4  1      
.L_3b5a0:                                        #        0x3b4e5  0      
  movl 0xfff587d(%rip), %eax                     #  91    0x3b4e5  6      
  jmpq .L_3b500                                  #  92    0x3b4eb  5      
  nop                                            #  93    0x3b4f0  1      
  nop                                            #  94    0x3b4f1  1      
.L_3b5c0:                                        #        0x3b4f2  0      
  nop                                            #  95    0x3b4f2  1      
  nop                                            #  96    0x3b4f3  1      
  callq ._ZN2pp6Module3GetEv                     #  97    0x3b4f4  5      
  movl %eax, %edi                                #  98    0x3b4f9  2      
  movl $0x100206f0, %esi                         #  99    0x3b4fb  5      
  nop                                            #  100   0x3b500  1      
  nop                                            #  101   0x3b501  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  102   0x3b502  5      
  movl $0x10030d60, %edi                         #  103   0x3b507  5      
  movl %eax, 0xfff5856(%rip)                     #  104   0x3b50c  6      
  nop                                            #  105   0x3b512  1      
  nop                                            #  106   0x3b513  1      
  callq .__cxa_guard_release                     #  107   0x3b514  5      
  jmpq .L_3b5a0                                  #  108   0x3b519  5      
  nop                                            #  109   0x3b51e  1      
  nop                                            #  110   0x3b51f  1      
.L_3b640:                                        #        0x3b520  0      
  movl %eax, %ebx                                #  111   0x3b520  2      
  movl $0x10030d60, %edi                         #  112   0x3b522  5      
  nop                                            #  113   0x3b527  1      
  nop                                            #  114   0x3b528  1      
  callq .__cxa_guard_abort                       #  115   0x3b529  5      
  movl %ebx, %edi                                #  116   0x3b52e  2      
  nop                                            #  117   0x3b530  1      
  nop                                            #  118   0x3b531  1      
  callq ._Unwind_Resume                          #  119   0x3b532  5      
  jmpq .L_3b640                                  #  120   0x3b537  5      
  nop                                            #  121   0x3b53c  1      
  nop                                            #  122   0x3b53d  1      
                                                                          
.size _ZNK2pp15MouseInputEvent11GetPositionEv, .-_ZNK2pp15MouseInputEvent11GetPositionEv

