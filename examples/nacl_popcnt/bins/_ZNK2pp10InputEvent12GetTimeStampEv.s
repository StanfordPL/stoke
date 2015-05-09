  .text
  .globl _ZNK2pp10InputEvent12GetTimeStampEv
  .type _ZNK2pp10InputEvent12GetTimeStampEv, @function

#! file-offset 0x369a0
#! rip-offset  0x369a0
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp10InputEvent12GetTimeStampEv:            #        0x369a0  0      
  cmpb $0x0, 0xfffa3c9(%rip)                     #  1     0x369a0  7      
  pushq %rbx                                     #  2     0x369a7  2      
  movl %edi, %ebx                                #  3     0x369a9  2      
  je .L_36a00                                    #  4     0x369ab  6      
  nop                                            #  5     0x369b1  1      
  nop                                            #  6     0x369b2  1      
.L_369c0:                                        #        0x369b3  0      
  movl 0xfffa3bf(%rip), %eax                     #  7     0x369b3  6      
  testq %rax, %rax                               #  8     0x369b9  3      
  jne .L_36aa0                                   #  9     0x369bc  6      
  xchgw %ax, %ax                                 #  10    0x369c2  3      
  nop                                            #  11    0x369c5  1      
.L_369e0:                                        #        0x369c6  0      
  popq %rbx                                      #  12    0x369c6  2      
  popq %r11                                      #  13    0x369c8  3      
  xorpd %xmm0, %xmm0                             #  14    0x369cb  4      
  andl $0xffffffe0, %r11d                        #  15    0x369cf  7      
  addq %r15, %r11                                #  16    0x369d6  3      
  jmpq %r11                                      #  17    0x369d9  3      
  nop                                            #  18    0x369dc  1      
.L_36a00:                                        #        0x369dd  0      
  movl $0x10030d70, %edi                         #  19    0x369dd  5      
  nop                                            #  20    0x369e2  1      
  nop                                            #  21    0x369e3  1      
  callq .__cxa_guard_acquire                     #  22    0x369e4  5      
  testl %eax, %eax                               #  23    0x369e9  2      
  je .L_369c0                                    #  24    0x369eb  6      
  nop                                            #  25    0x369f1  1      
  nop                                            #  26    0x369f2  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x369f3  5      
  movl %eax, %edi                                #  28    0x369f8  2      
  movl $0x100202c8, %esi                         #  29    0x369fa  5      
  nop                                            #  30    0x369ff  1      
  nop                                            #  31    0x36a00  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x36a01  5      
  movl $0x10030d70, %edi                         #  33    0x36a06  5      
  movl %eax, 0xfffa367(%rip)                     #  34    0x36a0b  6      
  nop                                            #  35    0x36a11  1      
  nop                                            #  36    0x36a12  1      
  callq .__cxa_guard_release                     #  37    0x36a13  5      
  movl 0xfffa35a(%rip), %eax                     #  38    0x36a18  6      
  testq %rax, %rax                               #  39    0x36a1e  3      
  je .L_369e0                                    #  40    0x36a21  6      
  xchgw %ax, %ax                                 #  41    0x36a27  3      
  nop                                            #  42    0x36a2a  1      
.L_36aa0:                                        #        0x36a2b  0      
  cmpb $0x0, 0xfffa33e(%rip)                     #  43    0x36a2b  7      
  je .L_36ac0                                    #  44    0x36a32  6      
  movl %ebx, %ebx                                #  45    0x36a38  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x36a3a  5      
  movl %eax, %eax                                #  47    0x36a3f  2      
  movl 0x14(%r15,%rax,1), %eax                   #  48    0x36a41  5      
  popq %rbx                                      #  49    0x36a46  2      
  andl $0xffffffe0, %eax                         #  50    0x36a48  5      
  addq %r15, %rax                                #  51    0x36a4d  3      
  jmpq %rax                                      #  52    0x36a50  2      
.L_36ac0:                                        #        0x36a52  0      
  movl $0x10030d70, %edi                         #  53    0x36a52  5      
  nop                                            #  54    0x36a57  1      
  nop                                            #  55    0x36a58  1      
  callq .__cxa_guard_acquire                     #  56    0x36a59  5      
  testl %eax, %eax                               #  57    0x36a5e  2      
  jne .L_36b20                                   #  58    0x36a60  6      
  nop                                            #  59    0x36a66  1      
  nop                                            #  60    0x36a67  1      
.L_36b00:                                        #        0x36a68  0      
  movl 0xfffa30a(%rip), %eax                     #  61    0x36a68  6      
  movl %ebx, %ebx                                #  62    0x36a6e  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x36a70  5      
  popq %rbx                                      #  64    0x36a75  2      
  movl %eax, %eax                                #  65    0x36a77  2      
  movl 0x14(%r15,%rax,1), %eax                   #  66    0x36a79  5      
  andl $0xffffffe0, %eax                         #  67    0x36a7e  5      
  addq %r15, %rax                                #  68    0x36a83  3      
  jmpq %rax                                      #  69    0x36a86  2      
  nop                                            #  70    0x36a88  1      
.L_36b20:                                        #        0x36a89  0      
  nop                                            #  71    0x36a89  1      
  nop                                            #  72    0x36a8a  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x36a8b  5      
  movl %eax, %edi                                #  74    0x36a90  2      
  movl $0x100202c8, %esi                         #  75    0x36a92  5      
  nop                                            #  76    0x36a97  1      
  nop                                            #  77    0x36a98  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x36a99  5      
  movl $0x10030d70, %edi                         #  79    0x36a9e  5      
  movl %eax, 0xfffa2cf(%rip)                     #  80    0x36aa3  6      
  nop                                            #  81    0x36aa9  1      
  nop                                            #  82    0x36aaa  1      
  callq .__cxa_guard_release                     #  83    0x36aab  5      
  jmpq .L_36b00                                  #  84    0x36ab0  5      
  nop                                            #  85    0x36ab5  1      
  nop                                            #  86    0x36ab6  1      
.L_36ba0:                                        #        0x36ab7  0      
  movl %eax, %ebx                                #  87    0x36ab7  2      
  movl $0x10030d70, %edi                         #  88    0x36ab9  5      
  nop                                            #  89    0x36abe  1      
  nop                                            #  90    0x36abf  1      
  callq .__cxa_guard_abort                       #  91    0x36ac0  5      
  movl %ebx, %edi                                #  92    0x36ac5  2      
  nop                                            #  93    0x36ac7  1      
  nop                                            #  94    0x36ac8  1      
  callq ._Unwind_Resume                          #  95    0x36ac9  5      
  jmpq .L_36ba0                                  #  96    0x36ace  5      
  nop                                            #  97    0x36ad3  1      
  nop                                            #  98    0x36ad4  1      
                                                                          
.size _ZNK2pp10InputEvent12GetTimeStampEv, .-_ZNK2pp10InputEvent12GetTimeStampEv

