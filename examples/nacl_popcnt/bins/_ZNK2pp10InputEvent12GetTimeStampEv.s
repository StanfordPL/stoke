  .text
  .globl _ZNK2pp10InputEvent12GetTimeStampEv
  .type _ZNK2pp10InputEvent12GetTimeStampEv, @function

#! file-offset 0x36a40
#! rip-offset  0x36a40
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp10InputEvent12GetTimeStampEv:            #        0x36a40  0      
  cmpb $0x0, 0xfffa329(%rip)                     #  1     0x36a40  7      
  pushq %rbx                                     #  2     0x36a47  2      
  movl %edi, %ebx                                #  3     0x36a49  2      
  je .L_36aa0                                    #  4     0x36a4b  6      
  nop                                            #  5     0x36a51  1      
  nop                                            #  6     0x36a52  1      
.L_36a60:                                        #        0x36a53  0      
  movl 0xfffa31f(%rip), %eax                     #  7     0x36a53  6      
  testq %rax, %rax                               #  8     0x36a59  3      
  jne .L_36b40                                   #  9     0x36a5c  6      
  xchgw %ax, %ax                                 #  10    0x36a62  3      
  nop                                            #  11    0x36a65  1      
.L_36a80:                                        #        0x36a66  0      
  popq %rbx                                      #  12    0x36a66  2      
  popq %r11                                      #  13    0x36a68  3      
  xorpd %xmm0, %xmm0                             #  14    0x36a6b  4      
  andl $0xffffffe0, %r11d                        #  15    0x36a6f  7      
  addq %r15, %r11                                #  16    0x36a76  3      
  jmpq %r11                                      #  17    0x36a79  3      
  nop                                            #  18    0x36a7c  1      
.L_36aa0:                                        #        0x36a7d  0      
  movl $0x10030d70, %edi                         #  19    0x36a7d  5      
  nop                                            #  20    0x36a82  1      
  nop                                            #  21    0x36a83  1      
  callq .__cxa_guard_acquire                     #  22    0x36a84  5      
  testl %eax, %eax                               #  23    0x36a89  2      
  je .L_36a60                                    #  24    0x36a8b  6      
  nop                                            #  25    0x36a91  1      
  nop                                            #  26    0x36a92  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x36a93  5      
  movl %eax, %edi                                #  28    0x36a98  2      
  movl $0x100202c8, %esi                         #  29    0x36a9a  5      
  nop                                            #  30    0x36a9f  1      
  nop                                            #  31    0x36aa0  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x36aa1  5      
  movl $0x10030d70, %edi                         #  33    0x36aa6  5      
  movl %eax, 0xfffa2c7(%rip)                     #  34    0x36aab  6      
  nop                                            #  35    0x36ab1  1      
  nop                                            #  36    0x36ab2  1      
  callq .__cxa_guard_release                     #  37    0x36ab3  5      
  movl 0xfffa2ba(%rip), %eax                     #  38    0x36ab8  6      
  testq %rax, %rax                               #  39    0x36abe  3      
  je .L_36a80                                    #  40    0x36ac1  6      
  xchgw %ax, %ax                                 #  41    0x36ac7  3      
  nop                                            #  42    0x36aca  1      
.L_36b40:                                        #        0x36acb  0      
  cmpb $0x0, 0xfffa29e(%rip)                     #  43    0x36acb  7      
  je .L_36b60                                    #  44    0x36ad2  6      
  movl %ebx, %ebx                                #  45    0x36ad8  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x36ada  5      
  movl %eax, %eax                                #  47    0x36adf  2      
  movl 0x14(%r15,%rax,1), %eax                   #  48    0x36ae1  5      
  popq %rbx                                      #  49    0x36ae6  2      
  andl $0xffffffe0, %eax                         #  50    0x36ae8  5      
  addq %r15, %rax                                #  51    0x36aed  3      
  jmpq %rax                                      #  52    0x36af0  2      
.L_36b60:                                        #        0x36af2  0      
  movl $0x10030d70, %edi                         #  53    0x36af2  5      
  nop                                            #  54    0x36af7  1      
  nop                                            #  55    0x36af8  1      
  callq .__cxa_guard_acquire                     #  56    0x36af9  5      
  testl %eax, %eax                               #  57    0x36afe  2      
  jne .L_36bc0                                   #  58    0x36b00  6      
  nop                                            #  59    0x36b06  1      
  nop                                            #  60    0x36b07  1      
.L_36ba0:                                        #        0x36b08  0      
  movl 0xfffa26a(%rip), %eax                     #  61    0x36b08  6      
  movl %ebx, %ebx                                #  62    0x36b0e  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x36b10  5      
  popq %rbx                                      #  64    0x36b15  2      
  movl %eax, %eax                                #  65    0x36b17  2      
  movl 0x14(%r15,%rax,1), %eax                   #  66    0x36b19  5      
  andl $0xffffffe0, %eax                         #  67    0x36b1e  5      
  addq %r15, %rax                                #  68    0x36b23  3      
  jmpq %rax                                      #  69    0x36b26  2      
  nop                                            #  70    0x36b28  1      
.L_36bc0:                                        #        0x36b29  0      
  nop                                            #  71    0x36b29  1      
  nop                                            #  72    0x36b2a  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x36b2b  5      
  movl %eax, %edi                                #  74    0x36b30  2      
  movl $0x100202c8, %esi                         #  75    0x36b32  5      
  nop                                            #  76    0x36b37  1      
  nop                                            #  77    0x36b38  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x36b39  5      
  movl $0x10030d70, %edi                         #  79    0x36b3e  5      
  movl %eax, 0xfffa22f(%rip)                     #  80    0x36b43  6      
  nop                                            #  81    0x36b49  1      
  nop                                            #  82    0x36b4a  1      
  callq .__cxa_guard_release                     #  83    0x36b4b  5      
  jmpq .L_36ba0                                  #  84    0x36b50  5      
  nop                                            #  85    0x36b55  1      
  nop                                            #  86    0x36b56  1      
.L_36c40:                                        #        0x36b57  0      
  movl %eax, %ebx                                #  87    0x36b57  2      
  movl $0x10030d70, %edi                         #  88    0x36b59  5      
  nop                                            #  89    0x36b5e  1      
  nop                                            #  90    0x36b5f  1      
  callq .__cxa_guard_abort                       #  91    0x36b60  5      
  movl %ebx, %edi                                #  92    0x36b65  2      
  nop                                            #  93    0x36b67  1      
  nop                                            #  94    0x36b68  1      
  callq ._Unwind_Resume                          #  95    0x36b69  5      
  jmpq .L_36c40                                  #  96    0x36b6e  5      
  nop                                            #  97    0x36b73  1      
  nop                                            #  98    0x36b74  1      
                                                                          
.size _ZNK2pp10InputEvent12GetTimeStampEv, .-_ZNK2pp10InputEvent12GetTimeStampEv

