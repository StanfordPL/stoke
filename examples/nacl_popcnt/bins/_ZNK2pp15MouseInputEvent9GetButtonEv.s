  .text
  .globl _ZNK2pp15MouseInputEvent9GetButtonEv
  .type _ZNK2pp15MouseInputEvent9GetButtonEv, @function

#! file-offset 0x3ea60
#! rip-offset  0x3ea60
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15MouseInputEvent9GetButtonEv:           #        0x3ea60  0      
  cmpb $0x0, 0xfff22f9(%rip)                     #  1     0x3ea60  7      
  pushq %rbx                                     #  2     0x3ea67  2      
  movl %edi, %ebx                                #  3     0x3ea69  2      
  je .L_3eac0                                    #  4     0x3ea6b  6      
  nop                                            #  5     0x3ea71  1      
  nop                                            #  6     0x3ea72  1      
.L_3ea80:                                        #        0x3ea73  0      
  movl 0xfff22ef(%rip), %eax                     #  7     0x3ea73  6      
  testq %rax, %rax                               #  8     0x3ea79  3      
  jne .L_3eb60                                   #  9     0x3ea7c  6      
  xchgw %ax, %ax                                 #  10    0x3ea82  3      
  nop                                            #  11    0x3ea85  1      
.L_3eaa0:                                        #        0x3ea86  0      
  popq %rbx                                      #  12    0x3ea86  2      
  popq %r11                                      #  13    0x3ea88  3      
  movl $0xffffffff, %eax                         #  14    0x3ea8b  5      
  andl $0xffffffe0, %r11d                        #  15    0x3ea90  7      
  addq %r15, %r11                                #  16    0x3ea97  3      
  jmpq %r11                                      #  17    0x3ea9a  3      
  nop                                            #  18    0x3ea9d  1      
.L_3eac0:                                        #        0x3ea9e  0      
  movl $0x10030d60, %edi                         #  19    0x3ea9e  5      
  nop                                            #  20    0x3eaa3  1      
  nop                                            #  21    0x3eaa4  1      
  callq .__cxa_guard_acquire                     #  22    0x3eaa5  5      
  testl %eax, %eax                               #  23    0x3eaaa  2      
  je .L_3ea80                                    #  24    0x3eaac  6      
  nop                                            #  25    0x3eab2  1      
  nop                                            #  26    0x3eab3  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x3eab4  5      
  movl %eax, %edi                                #  28    0x3eab9  2      
  movl $0x100206f0, %esi                         #  29    0x3eabb  5      
  nop                                            #  30    0x3eac0  1      
  nop                                            #  31    0x3eac1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3eac2  5      
  movl $0x10030d60, %edi                         #  33    0x3eac7  5      
  movl %eax, 0xfff2296(%rip)                     #  34    0x3eacc  6      
  nop                                            #  35    0x3ead2  1      
  nop                                            #  36    0x3ead3  1      
  callq .__cxa_guard_release                     #  37    0x3ead4  5      
  movl 0xfff2289(%rip), %eax                     #  38    0x3ead9  6      
  testq %rax, %rax                               #  39    0x3eadf  3      
  je .L_3eaa0                                    #  40    0x3eae2  6      
  xchgw %ax, %ax                                 #  41    0x3eae8  3      
  nop                                            #  42    0x3eaeb  1      
.L_3eb60:                                        #        0x3eaec  0      
  cmpb $0x0, 0xfff226d(%rip)                     #  43    0x3eaec  7      
  je .L_3eb80                                    #  44    0x3eaf3  6      
  movl %ebx, %ebx                                #  45    0x3eaf9  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x3eafb  5      
  movl %eax, %eax                                #  47    0x3eb00  2      
  movl 0x8(%r15,%rax,1), %eax                    #  48    0x3eb02  5      
  popq %rbx                                      #  49    0x3eb07  2      
  andl $0xffffffe0, %eax                         #  50    0x3eb09  5      
  addq %r15, %rax                                #  51    0x3eb0e  3      
  jmpq %rax                                      #  52    0x3eb11  2      
.L_3eb80:                                        #        0x3eb13  0      
  movl $0x10030d60, %edi                         #  53    0x3eb13  5      
  nop                                            #  54    0x3eb18  1      
  nop                                            #  55    0x3eb19  1      
  callq .__cxa_guard_acquire                     #  56    0x3eb1a  5      
  testl %eax, %eax                               #  57    0x3eb1f  2      
  jne .L_3ebe0                                   #  58    0x3eb21  6      
  nop                                            #  59    0x3eb27  1      
  nop                                            #  60    0x3eb28  1      
.L_3ebc0:                                        #        0x3eb29  0      
  movl 0xfff2239(%rip), %eax                     #  61    0x3eb29  6      
  movl %ebx, %ebx                                #  62    0x3eb2f  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x3eb31  5      
  popq %rbx                                      #  64    0x3eb36  2      
  movl %eax, %eax                                #  65    0x3eb38  2      
  movl 0x8(%r15,%rax,1), %eax                    #  66    0x3eb3a  5      
  andl $0xffffffe0, %eax                         #  67    0x3eb3f  5      
  addq %r15, %rax                                #  68    0x3eb44  3      
  jmpq %rax                                      #  69    0x3eb47  2      
  nop                                            #  70    0x3eb49  1      
.L_3ebe0:                                        #        0x3eb4a  0      
  nop                                            #  71    0x3eb4a  1      
  nop                                            #  72    0x3eb4b  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x3eb4c  5      
  movl %eax, %edi                                #  74    0x3eb51  2      
  movl $0x100206f0, %esi                         #  75    0x3eb53  5      
  nop                                            #  76    0x3eb58  1      
  nop                                            #  77    0x3eb59  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x3eb5a  5      
  movl $0x10030d60, %edi                         #  79    0x3eb5f  5      
  movl %eax, 0xfff21fe(%rip)                     #  80    0x3eb64  6      
  nop                                            #  81    0x3eb6a  1      
  nop                                            #  82    0x3eb6b  1      
  callq .__cxa_guard_release                     #  83    0x3eb6c  5      
  jmpq .L_3ebc0                                  #  84    0x3eb71  5      
  nop                                            #  85    0x3eb76  1      
  nop                                            #  86    0x3eb77  1      
.L_3ec60:                                        #        0x3eb78  0      
  movl %eax, %ebx                                #  87    0x3eb78  2      
  movl $0x10030d60, %edi                         #  88    0x3eb7a  5      
  nop                                            #  89    0x3eb7f  1      
  nop                                            #  90    0x3eb80  1      
  callq .__cxa_guard_abort                       #  91    0x3eb81  5      
  movl %ebx, %edi                                #  92    0x3eb86  2      
  nop                                            #  93    0x3eb88  1      
  nop                                            #  94    0x3eb89  1      
  callq ._Unwind_Resume                          #  95    0x3eb8a  5      
  jmpq .L_3ec60                                  #  96    0x3eb8f  5      
  nop                                            #  97    0x3eb94  1      
  nop                                            #  98    0x3eb95  1      
                                                                          
.size _ZNK2pp15MouseInputEvent9GetButtonEv, .-_ZNK2pp15MouseInputEvent9GetButtonEv

