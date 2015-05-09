  .text
  .globl _ZN2pp9URLLoaderC1ERKNS_14InstanceHandleE
  .type _ZN2pp9URLLoaderC1ERKNS_14InstanceHandleE, @function

#! file-offset 0x279e0
#! rip-offset  0x279e0
#! capacity    800 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp9URLLoaderC1ERKNS_14InstanceHandleE:         #        0x279e0  0      
  pushq %r12                                        #  1     0x279e0  3      
  movl %esi, %r12d                                  #  2     0x279e3  3      
  pushq %rbx                                        #  3     0x279e6  2      
  movl %edi, %ebx                                   #  4     0x279e8  2      
  movl %ebx, %edi                                   #  5     0x279ea  2      
  subl $0x8, %esp                                   #  6     0x279ec  3      
  addq %r15, %rsp                                   #  7     0x279ef  3      
  nop                                               #  8     0x279f2  1      
  callq ._ZN2pp8ResourceC2Ev                        #  9     0x279f3  5      
  movl %ebx, %ebx                                   #  10    0x279f8  2      
  movl $0x100203f8, (%r15,%rbx,1)                   #  11    0x279fa  8      
  cmpb $0x0, 0x10009257(%rip)                       #  12    0x27a02  7      
  je .L_27a60                                       #  13    0x27a09  6      
  nop                                               #  14    0x27a0f  1      
.L_27a20:                                           #        0x27a10  0      
  movl 0x10009252(%rip), %eax                       #  15    0x27a10  6      
  testq %rax, %rax                                  #  16    0x27a16  3      
  jne .L_27b00                                      #  17    0x27a19  6      
  xchgw %ax, %ax                                    #  18    0x27a1f  3      
  nop                                               #  19    0x27a22  1      
.L_27a40:                                           #        0x27a23  0      
  addl $0x8, %esp                                   #  20    0x27a23  3      
  addq %r15, %rsp                                   #  21    0x27a26  3      
  popq %rbx                                         #  22    0x27a29  2      
  popq %r12                                         #  23    0x27a2b  3      
  popq %r11                                         #  24    0x27a2e  3      
  andl $0xffffffe0, %r11d                           #  25    0x27a31  7      
  addq %r15, %r11                                   #  26    0x27a38  3      
  jmpq %r11                                         #  27    0x27a3b  3      
  nop                                               #  28    0x27a3e  1      
.L_27a60:                                           #        0x27a3f  0      
  movl $0x10030c60, %edi                            #  29    0x27a3f  5      
  nop                                               #  30    0x27a44  1      
  nop                                               #  31    0x27a45  1      
  callq .__cxa_guard_acquire                        #  32    0x27a46  5      
  testl %eax, %eax                                  #  33    0x27a4b  2      
  je .L_27a20                                       #  34    0x27a4d  6      
  nop                                               #  35    0x27a53  1      
  nop                                               #  36    0x27a54  1      
  callq ._ZN2pp6Module3GetEv                        #  37    0x27a55  5      
  movl %eax, %edi                                   #  38    0x27a5a  2      
  movl $0x10020478, %esi                            #  39    0x27a5c  5      
  nop                                               #  40    0x27a61  1      
  nop                                               #  41    0x27a62  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  42    0x27a63  5      
  movl $0x10030c60, %edi                            #  43    0x27a68  5      
  movl %eax, 0x100091f5(%rip)                       #  44    0x27a6d  6      
  nop                                               #  45    0x27a73  1      
  nop                                               #  46    0x27a74  1      
  callq .__cxa_guard_release                        #  47    0x27a75  5      
  movl 0x100091e8(%rip), %eax                       #  48    0x27a7a  6      
  testq %rax, %rax                                  #  49    0x27a80  3      
  je .L_27a40                                       #  50    0x27a83  6      
  xchgw %ax, %ax                                    #  51    0x27a89  3      
  nop                                               #  52    0x27a8c  1      
.L_27b00:                                           #        0x27a8d  0      
  cmpb $0x0, 0x100091cc(%rip)                       #  53    0x27a8d  7      
  je .L_27b80                                       #  54    0x27a94  6      
  nop                                               #  55    0x27a9a  1      
  nop                                               #  56    0x27a9b  1      
.L_27b20:                                           #        0x27a9c  0      
  movl %eax, %eax                                   #  57    0x27a9c  2      
  movl (%r15,%rax,1), %eax                          #  58    0x27a9e  4      
  movl %r12d, %r12d                                 #  59    0x27aa2  3      
  movl (%r15,%r12,1), %edi                          #  60    0x27aa5  4      
  nop                                               #  61    0x27aa9  1      
  andl $0xffffffe0, %eax                            #  62    0x27aaa  5      
  addq %r15, %rax                                   #  63    0x27aaf  3      
  callq %rax                                        #  64    0x27ab2  2      
  movl %eax, %esi                                   #  65    0x27ab4  2      
  movl %ebx, %edi                                   #  66    0x27ab6  2      
  nop                                               #  67    0x27ab8  1      
  nop                                               #  68    0x27ab9  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  69    0x27aba  5      
  addl $0x8, %esp                                   #  70    0x27abf  3      
  addq %r15, %rsp                                   #  71    0x27ac2  3      
  popq %rbx                                         #  72    0x27ac5  2      
  popq %r12                                         #  73    0x27ac7  3      
  popq %r11                                         #  74    0x27aca  3      
  andl $0xffffffe0, %r11d                           #  75    0x27acd  7      
  addq %r15, %r11                                   #  76    0x27ad4  3      
  jmpq %r11                                         #  77    0x27ad7  3      
  nop                                               #  78    0x27ada  1      
.L_27b80:                                           #        0x27adb  0      
  movl $0x10030c60, %edi                            #  79    0x27adb  5      
  nop                                               #  80    0x27ae0  1      
  nop                                               #  81    0x27ae1  1      
  callq .__cxa_guard_acquire                        #  82    0x27ae2  5      
  testl %eax, %eax                                  #  83    0x27ae7  2      
  jne .L_27be0                                      #  84    0x27ae9  6      
  nop                                               #  85    0x27aef  1      
  nop                                               #  86    0x27af0  1      
.L_27bc0:                                           #        0x27af1  0      
  movl 0x10009171(%rip), %eax                       #  87    0x27af1  6      
  jmpq .L_27b20                                     #  88    0x27af7  5      
  nop                                               #  89    0x27afc  1      
  nop                                               #  90    0x27afd  1      
.L_27be0:                                           #        0x27afe  0      
  nop                                               #  91    0x27afe  1      
  nop                                               #  92    0x27aff  1      
  callq ._ZN2pp6Module3GetEv                        #  93    0x27b00  5      
  movl %eax, %edi                                   #  94    0x27b05  2      
  movl $0x10020478, %esi                            #  95    0x27b07  5      
  nop                                               #  96    0x27b0c  1      
  nop                                               #  97    0x27b0d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  98    0x27b0e  5      
  movl $0x10030c60, %edi                            #  99    0x27b13  5      
  movl %eax, 0x1000914a(%rip)                       #  100   0x27b18  6      
  nop                                               #  101   0x27b1e  1      
  nop                                               #  102   0x27b1f  1      
  callq .__cxa_guard_release                        #  103   0x27b20  5      
  jmpq .L_27bc0                                     #  104   0x27b25  5      
  nop                                               #  105   0x27b2a  1      
  nop                                               #  106   0x27b2b  1      
.L_27c60:                                           #        0x27b2c  0      
  movl $0x10030c60, %edi                            #  107   0x27b2c  5      
  movl %eax, %r12d                                  #  108   0x27b31  3      
  nop                                               #  109   0x27b34  1      
  nop                                               #  110   0x27b35  1      
  callq .__cxa_guard_abort                          #  111   0x27b36  5      
.L_27c80:                                           #        0x27b3b  0      
  movl %ebx, %edi                                   #  112   0x27b3b  2      
  nop                                               #  113   0x27b3d  1      
  nop                                               #  114   0x27b3e  1      
  callq ._ZN2pp8ResourceD2Ev                        #  115   0x27b3f  5      
  movl %r12d, %edi                                  #  116   0x27b44  3      
  nop                                               #  117   0x27b47  1      
  nop                                               #  118   0x27b48  1      
  callq ._Unwind_Resume                             #  119   0x27b49  5      
  movl %eax, %r12d                                  #  120   0x27b4e  3      
  jmpq .L_27c80                                     #  121   0x27b51  5      
  nop                                               #  122   0x27b56  1      
  nop                                               #  123   0x27b57  1      
  jmpq .L_27c60                                     #  124   0x27b58  5      
  nop                                               #  125   0x27b5d  1      
  nop                                               #  126   0x27b5e  1      
  nop                                               #  127   0x27b5f  1      
                                                                             
.size _ZN2pp9URLLoaderC1ERKNS_14InstanceHandleE, .-_ZN2pp9URLLoaderC1ERKNS_14InstanceHandleE

