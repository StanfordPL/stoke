  .text
  .globl _ZNK2pp10InputEvent12GetTimeStampEv
  .type _ZNK2pp10InputEvent12GetTimeStampEv, @function

#! file-offset 0x369c0
#! rip-offset  0x369c0
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp10InputEvent12GetTimeStampEv:            #        0x369c0  0      
  cmpb $0x0, 0xfffa3a9(%rip)                     #  1     0x369c0  7      
  pushq %rbx                                     #  2     0x369c7  2      
  movl %edi, %ebx                                #  3     0x369c9  2      
  je .L_36a20                                    #  4     0x369cb  6      
  nop                                            #  5     0x369d1  1      
  nop                                            #  6     0x369d2  1      
.L_369e0:                                        #        0x369d3  0      
  movl 0xfffa39f(%rip), %eax                     #  7     0x369d3  6      
  testq %rax, %rax                               #  8     0x369d9  3      
  jne .L_36ac0                                   #  9     0x369dc  6      
  xchgw %ax, %ax                                 #  10    0x369e2  3      
  nop                                            #  11    0x369e5  1      
.L_36a00:                                        #        0x369e6  0      
  popq %rbx                                      #  12    0x369e6  2      
  popq %r11                                      #  13    0x369e8  3      
  xorpd %xmm0, %xmm0                             #  14    0x369eb  4      
  andl $0xffffffe0, %r11d                        #  15    0x369ef  7      
  addq %r15, %r11                                #  16    0x369f6  3      
  jmpq %r11                                      #  17    0x369f9  3      
  nop                                            #  18    0x369fc  1      
.L_36a20:                                        #        0x369fd  0      
  movl $0x10030d70, %edi                         #  19    0x369fd  5      
  nop                                            #  20    0x36a02  1      
  nop                                            #  21    0x36a03  1      
  callq .__cxa_guard_acquire                     #  22    0x36a04  5      
  testl %eax, %eax                               #  23    0x36a09  2      
  je .L_369e0                                    #  24    0x36a0b  6      
  nop                                            #  25    0x36a11  1      
  nop                                            #  26    0x36a12  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x36a13  5      
  movl %eax, %edi                                #  28    0x36a18  2      
  movl $0x100202c8, %esi                         #  29    0x36a1a  5      
  nop                                            #  30    0x36a1f  1      
  nop                                            #  31    0x36a20  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x36a21  5      
  movl $0x10030d70, %edi                         #  33    0x36a26  5      
  movl %eax, 0xfffa347(%rip)                     #  34    0x36a2b  6      
  nop                                            #  35    0x36a31  1      
  nop                                            #  36    0x36a32  1      
  callq .__cxa_guard_release                     #  37    0x36a33  5      
  movl 0xfffa33a(%rip), %eax                     #  38    0x36a38  6      
  testq %rax, %rax                               #  39    0x36a3e  3      
  je .L_36a00                                    #  40    0x36a41  6      
  xchgw %ax, %ax                                 #  41    0x36a47  3      
  nop                                            #  42    0x36a4a  1      
.L_36ac0:                                        #        0x36a4b  0      
  cmpb $0x0, 0xfffa31e(%rip)                     #  43    0x36a4b  7      
  je .L_36ae0                                    #  44    0x36a52  6      
  movl %ebx, %ebx                                #  45    0x36a58  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x36a5a  5      
  movl %eax, %eax                                #  47    0x36a5f  2      
  movl 0x14(%r15,%rax,1), %eax                   #  48    0x36a61  5      
  popq %rbx                                      #  49    0x36a66  2      
  andl $0xffffffe0, %eax                         #  50    0x36a68  5      
  addq %r15, %rax                                #  51    0x36a6d  3      
  jmpq %rax                                      #  52    0x36a70  2      
.L_36ae0:                                        #        0x36a72  0      
  movl $0x10030d70, %edi                         #  53    0x36a72  5      
  nop                                            #  54    0x36a77  1      
  nop                                            #  55    0x36a78  1      
  callq .__cxa_guard_acquire                     #  56    0x36a79  5      
  testl %eax, %eax                               #  57    0x36a7e  2      
  jne .L_36b40                                   #  58    0x36a80  6      
  nop                                            #  59    0x36a86  1      
  nop                                            #  60    0x36a87  1      
.L_36b20:                                        #        0x36a88  0      
  movl 0xfffa2ea(%rip), %eax                     #  61    0x36a88  6      
  movl %ebx, %ebx                                #  62    0x36a8e  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x36a90  5      
  popq %rbx                                      #  64    0x36a95  2      
  movl %eax, %eax                                #  65    0x36a97  2      
  movl 0x14(%r15,%rax,1), %eax                   #  66    0x36a99  5      
  andl $0xffffffe0, %eax                         #  67    0x36a9e  5      
  addq %r15, %rax                                #  68    0x36aa3  3      
  jmpq %rax                                      #  69    0x36aa6  2      
  nop                                            #  70    0x36aa8  1      
.L_36b40:                                        #        0x36aa9  0      
  nop                                            #  71    0x36aa9  1      
  nop                                            #  72    0x36aaa  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x36aab  5      
  movl %eax, %edi                                #  74    0x36ab0  2      
  movl $0x100202c8, %esi                         #  75    0x36ab2  5      
  nop                                            #  76    0x36ab7  1      
  nop                                            #  77    0x36ab8  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x36ab9  5      
  movl $0x10030d70, %edi                         #  79    0x36abe  5      
  movl %eax, 0xfffa2af(%rip)                     #  80    0x36ac3  6      
  nop                                            #  81    0x36ac9  1      
  nop                                            #  82    0x36aca  1      
  callq .__cxa_guard_release                     #  83    0x36acb  5      
  jmpq .L_36b20                                  #  84    0x36ad0  5      
  nop                                            #  85    0x36ad5  1      
  nop                                            #  86    0x36ad6  1      
.L_36bc0:                                        #        0x36ad7  0      
  movl %eax, %ebx                                #  87    0x36ad7  2      
  movl $0x10030d70, %edi                         #  88    0x36ad9  5      
  nop                                            #  89    0x36ade  1      
  nop                                            #  90    0x36adf  1      
  callq .__cxa_guard_abort                       #  91    0x36ae0  5      
  movl %ebx, %edi                                #  92    0x36ae5  2      
  nop                                            #  93    0x36ae7  1      
  nop                                            #  94    0x36ae8  1      
  callq ._Unwind_Resume                          #  95    0x36ae9  5      
  jmpq .L_36bc0                                  #  96    0x36aee  5      
  nop                                            #  97    0x36af3  1      
  nop                                            #  98    0x36af4  1      
                                                                          
.size _ZNK2pp10InputEvent12GetTimeStampEv, .-_ZNK2pp10InputEvent12GetTimeStampEv

