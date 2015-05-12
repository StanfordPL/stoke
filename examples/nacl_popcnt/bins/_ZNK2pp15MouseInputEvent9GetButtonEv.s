  .text
  .globl _ZNK2pp15MouseInputEvent9GetButtonEv
  .type _ZNK2pp15MouseInputEvent9GetButtonEv, @function

#! file-offset 0x3ea80
#! rip-offset  0x3ea80
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15MouseInputEvent9GetButtonEv:           #        0x3ea80  0      
  cmpb $0x0, 0xfff22d9(%rip)                     #  1     0x3ea80  7      
  pushq %rbx                                     #  2     0x3ea87  2      
  movl %edi, %ebx                                #  3     0x3ea89  2      
  je .L_3eae0                                    #  4     0x3ea8b  6      
  nop                                            #  5     0x3ea91  1      
  nop                                            #  6     0x3ea92  1      
.L_3eaa0:                                        #        0x3ea93  0      
  movl 0xfff22cf(%rip), %eax                     #  7     0x3ea93  6      
  testq %rax, %rax                               #  8     0x3ea99  3      
  jne .L_3eb80                                   #  9     0x3ea9c  6      
  xchgw %ax, %ax                                 #  10    0x3eaa2  3      
  nop                                            #  11    0x3eaa5  1      
.L_3eac0:                                        #        0x3eaa6  0      
  popq %rbx                                      #  12    0x3eaa6  2      
  popq %r11                                      #  13    0x3eaa8  3      
  movl $0xffffffff, %eax                         #  14    0x3eaab  5      
  andl $0xffffffe0, %r11d                        #  15    0x3eab0  7      
  addq %r15, %r11                                #  16    0x3eab7  3      
  jmpq %r11                                      #  17    0x3eaba  3      
  nop                                            #  18    0x3eabd  1      
.L_3eae0:                                        #        0x3eabe  0      
  movl $0x10030d60, %edi                         #  19    0x3eabe  5      
  nop                                            #  20    0x3eac3  1      
  nop                                            #  21    0x3eac4  1      
  callq .__cxa_guard_acquire                     #  22    0x3eac5  5      
  testl %eax, %eax                               #  23    0x3eaca  2      
  je .L_3eaa0                                    #  24    0x3eacc  6      
  nop                                            #  25    0x3ead2  1      
  nop                                            #  26    0x3ead3  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x3ead4  5      
  movl %eax, %edi                                #  28    0x3ead9  2      
  movl $0x100206f0, %esi                         #  29    0x3eadb  5      
  nop                                            #  30    0x3eae0  1      
  nop                                            #  31    0x3eae1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3eae2  5      
  movl $0x10030d60, %edi                         #  33    0x3eae7  5      
  movl %eax, 0xfff2276(%rip)                     #  34    0x3eaec  6      
  nop                                            #  35    0x3eaf2  1      
  nop                                            #  36    0x3eaf3  1      
  callq .__cxa_guard_release                     #  37    0x3eaf4  5      
  movl 0xfff2269(%rip), %eax                     #  38    0x3eaf9  6      
  testq %rax, %rax                               #  39    0x3eaff  3      
  je .L_3eac0                                    #  40    0x3eb02  6      
  xchgw %ax, %ax                                 #  41    0x3eb08  3      
  nop                                            #  42    0x3eb0b  1      
.L_3eb80:                                        #        0x3eb0c  0      
  cmpb $0x0, 0xfff224d(%rip)                     #  43    0x3eb0c  7      
  je .L_3eba0                                    #  44    0x3eb13  6      
  movl %ebx, %ebx                                #  45    0x3eb19  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x3eb1b  5      
  movl %eax, %eax                                #  47    0x3eb20  2      
  movl 0x8(%r15,%rax,1), %eax                    #  48    0x3eb22  5      
  popq %rbx                                      #  49    0x3eb27  2      
  andl $0xffffffe0, %eax                         #  50    0x3eb29  5      
  addq %r15, %rax                                #  51    0x3eb2e  3      
  jmpq %rax                                      #  52    0x3eb31  2      
.L_3eba0:                                        #        0x3eb33  0      
  movl $0x10030d60, %edi                         #  53    0x3eb33  5      
  nop                                            #  54    0x3eb38  1      
  nop                                            #  55    0x3eb39  1      
  callq .__cxa_guard_acquire                     #  56    0x3eb3a  5      
  testl %eax, %eax                               #  57    0x3eb3f  2      
  jne .L_3ec00                                   #  58    0x3eb41  6      
  nop                                            #  59    0x3eb47  1      
  nop                                            #  60    0x3eb48  1      
.L_3ebe0:                                        #        0x3eb49  0      
  movl 0xfff2219(%rip), %eax                     #  61    0x3eb49  6      
  movl %ebx, %ebx                                #  62    0x3eb4f  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x3eb51  5      
  popq %rbx                                      #  64    0x3eb56  2      
  movl %eax, %eax                                #  65    0x3eb58  2      
  movl 0x8(%r15,%rax,1), %eax                    #  66    0x3eb5a  5      
  andl $0xffffffe0, %eax                         #  67    0x3eb5f  5      
  addq %r15, %rax                                #  68    0x3eb64  3      
  jmpq %rax                                      #  69    0x3eb67  2      
  nop                                            #  70    0x3eb69  1      
.L_3ec00:                                        #        0x3eb6a  0      
  nop                                            #  71    0x3eb6a  1      
  nop                                            #  72    0x3eb6b  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x3eb6c  5      
  movl %eax, %edi                                #  74    0x3eb71  2      
  movl $0x100206f0, %esi                         #  75    0x3eb73  5      
  nop                                            #  76    0x3eb78  1      
  nop                                            #  77    0x3eb79  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x3eb7a  5      
  movl $0x10030d60, %edi                         #  79    0x3eb7f  5      
  movl %eax, 0xfff21de(%rip)                     #  80    0x3eb84  6      
  nop                                            #  81    0x3eb8a  1      
  nop                                            #  82    0x3eb8b  1      
  callq .__cxa_guard_release                     #  83    0x3eb8c  5      
  jmpq .L_3ebe0                                  #  84    0x3eb91  5      
  nop                                            #  85    0x3eb96  1      
  nop                                            #  86    0x3eb97  1      
.L_3ec80:                                        #        0x3eb98  0      
  movl %eax, %ebx                                #  87    0x3eb98  2      
  movl $0x10030d60, %edi                         #  88    0x3eb9a  5      
  nop                                            #  89    0x3eb9f  1      
  nop                                            #  90    0x3eba0  1      
  callq .__cxa_guard_abort                       #  91    0x3eba1  5      
  movl %ebx, %edi                                #  92    0x3eba6  2      
  nop                                            #  93    0x3eba8  1      
  nop                                            #  94    0x3eba9  1      
  callq ._Unwind_Resume                          #  95    0x3ebaa  5      
  jmpq .L_3ec80                                  #  96    0x3ebaf  5      
  nop                                            #  97    0x3ebb4  1      
  nop                                            #  98    0x3ebb5  1      
                                                                          
.size _ZNK2pp15MouseInputEvent9GetButtonEv, .-_ZNK2pp15MouseInputEvent9GetButtonEv

