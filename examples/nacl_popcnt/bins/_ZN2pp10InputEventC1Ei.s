  .text
  .globl _ZN2pp10InputEventC1Ei
  .type _ZN2pp10InputEventC1Ei, @function

#! file-offset 0x36e60
#! rip-offset  0x36e60
#! capacity    864 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp10InputEventC1Ei:                            #        0x36e60  0      
  pushq %r12                                        #  1     0x36e60  3      
  movl %esi, %r12d                                  #  2     0x36e63  3      
  pushq %rbx                                        #  3     0x36e66  2      
  movl %edi, %ebx                                   #  4     0x36e68  2      
  movl %ebx, %edi                                   #  5     0x36e6a  2      
  subl $0x8, %esp                                   #  6     0x36e6c  3      
  addq %r15, %rsp                                   #  7     0x36e6f  3      
  nop                                               #  8     0x36e72  1      
  callq ._ZN2pp8ResourceC2Ev                        #  9     0x36e73  5      
  movl %ebx, %ebx                                   #  10    0x36e78  2      
  movl $0x10020718, (%r15,%rbx,1)                   #  11    0x36e7a  8      
  cmpb $0x0, 0xfff9ee7(%rip)                        #  12    0x36e82  7      
  je .L_36ee0                                       #  13    0x36e89  6      
  nop                                               #  14    0x36e8f  1      
.L_36ea0:                                           #        0x36e90  0      
  movl 0xfff9ee2(%rip), %eax                        #  15    0x36e90  6      
  testq %rax, %rax                                  #  16    0x36e96  3      
  jne .L_36f80                                      #  17    0x36e99  6      
  xchgw %ax, %ax                                    #  18    0x36e9f  3      
  nop                                               #  19    0x36ea2  1      
.L_36ec0:                                           #        0x36ea3  0      
  addl $0x8, %esp                                   #  20    0x36ea3  3      
  addq %r15, %rsp                                   #  21    0x36ea6  3      
  popq %rbx                                         #  22    0x36ea9  2      
  popq %r12                                         #  23    0x36eab  3      
  popq %r11                                         #  24    0x36eae  3      
  andl $0xffffffe0, %r11d                           #  25    0x36eb1  7      
  addq %r15, %r11                                   #  26    0x36eb8  3      
  jmpq %r11                                         #  27    0x36ebb  3      
  nop                                               #  28    0x36ebe  1      
.L_36ee0:                                           #        0x36ebf  0      
  movl $0x10030d70, %edi                            #  29    0x36ebf  5      
  nop                                               #  30    0x36ec4  1      
  nop                                               #  31    0x36ec5  1      
  callq .__cxa_guard_acquire                        #  32    0x36ec6  5      
  testl %eax, %eax                                  #  33    0x36ecb  2      
  je .L_36ea0                                       #  34    0x36ecd  6      
  nop                                               #  35    0x36ed3  1      
  nop                                               #  36    0x36ed4  1      
  callq ._ZN2pp6Module3GetEv                        #  37    0x36ed5  5      
  movl %eax, %edi                                   #  38    0x36eda  2      
  movl $0x100202c8, %esi                            #  39    0x36edc  5      
  nop                                               #  40    0x36ee1  1      
  nop                                               #  41    0x36ee2  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  42    0x36ee3  5      
  movl $0x10030d70, %edi                            #  43    0x36ee8  5      
  movl %eax, 0xfff9e85(%rip)                        #  44    0x36eed  6      
  nop                                               #  45    0x36ef3  1      
  nop                                               #  46    0x36ef4  1      
  callq .__cxa_guard_release                        #  47    0x36ef5  5      
  movl 0xfff9e78(%rip), %eax                        #  48    0x36efa  6      
  testq %rax, %rax                                  #  49    0x36f00  3      
  je .L_36ec0                                       #  50    0x36f03  6      
  xchgw %ax, %ax                                    #  51    0x36f09  3      
  nop                                               #  52    0x36f0c  1      
.L_36f80:                                           #        0x36f0d  0      
  cmpb $0x0, 0xfff9e5c(%rip)                        #  53    0x36f0d  7      
  je .L_37040                                       #  54    0x36f14  6      
  nop                                               #  55    0x36f1a  1      
  nop                                               #  56    0x36f1b  1      
.L_36fa0:                                           #        0x36f1c  0      
  movl %eax, %eax                                   #  57    0x36f1c  2      
  movl 0xc(%r15,%rax,1), %eax                       #  58    0x36f1e  5      
  movl %r12d, %edi                                  #  59    0x36f23  3      
  nop                                               #  60    0x36f26  1      
  andl $0xffffffe0, %eax                            #  61    0x36f27  5      
  addq %r15, %rax                                   #  62    0x36f2c  3      
  callq %rax                                        #  63    0x36f2f  2      
  testl %eax, %eax                                  #  64    0x36f31  2      
  je .L_36ec0                                       #  65    0x36f33  6      
  nop                                               #  66    0x36f39  1      
  nop                                               #  67    0x36f3a  1      
  callq ._ZN2pp6Module3GetEv                        #  68    0x36f3b  5      
  movl %eax, %eax                                   #  69    0x36f40  2      
  movl %r12d, %edi                                  #  70    0x36f42  3      
  movl %eax, %eax                                   #  71    0x36f45  2      
  movl 0x24(%r15,%rax,1), %eax                      #  72    0x36f47  5      
  movl %eax, %eax                                   #  73    0x36f4c  2      
  movl (%r15,%rax,1), %eax                          #  74    0x36f4e  4      
  movl %eax, %eax                                   #  75    0x36f52  2      
  movl (%r15,%rax,1), %eax                          #  76    0x36f54  4      
  andl $0xffffffe0, %eax                            #  77    0x36f58  5      
  addq %r15, %rax                                   #  78    0x36f5d  3      
  callq %rax                                        #  79    0x36f60  2      
  movl %r12d, %esi                                  #  80    0x36f62  3      
  movl %ebx, %edi                                   #  81    0x36f65  2      
  nop                                               #  82    0x36f67  1      
  nop                                               #  83    0x36f68  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  84    0x36f69  5      
  addl $0x8, %esp                                   #  85    0x36f6e  3      
  addq %r15, %rsp                                   #  86    0x36f71  3      
  popq %rbx                                         #  87    0x36f74  2      
  popq %r12                                         #  88    0x36f76  3      
  popq %r11                                         #  89    0x36f79  3      
  andl $0xffffffe0, %r11d                           #  90    0x36f7c  7      
  addq %r15, %r11                                   #  91    0x36f83  3      
  jmpq %r11                                         #  92    0x36f86  3      
  nop                                               #  93    0x36f89  1      
.L_37040:                                           #        0x36f8a  0      
  movl $0x10030d70, %edi                            #  94    0x36f8a  5      
  nop                                               #  95    0x36f8f  1      
  nop                                               #  96    0x36f90  1      
  callq .__cxa_guard_acquire                        #  97    0x36f91  5      
  testl %eax, %eax                                  #  98    0x36f96  2      
  jne .L_370a0                                      #  99    0x36f98  6      
  nop                                               #  100   0x36f9e  1      
  nop                                               #  101   0x36f9f  1      
.L_37080:                                           #        0x36fa0  0      
  movl 0xfff9dd2(%rip), %eax                        #  102   0x36fa0  6      
  jmpq .L_36fa0                                     #  103   0x36fa6  5      
  nop                                               #  104   0x36fab  1      
  nop                                               #  105   0x36fac  1      
.L_370a0:                                           #        0x36fad  0      
  nop                                               #  106   0x36fad  1      
  nop                                               #  107   0x36fae  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x36faf  5      
  movl %eax, %edi                                   #  109   0x36fb4  2      
  movl $0x100202c8, %esi                            #  110   0x36fb6  5      
  nop                                               #  111   0x36fbb  1      
  nop                                               #  112   0x36fbc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x36fbd  5      
  movl $0x10030d70, %edi                            #  114   0x36fc2  5      
  movl %eax, 0xfff9dab(%rip)                        #  115   0x36fc7  6      
  nop                                               #  116   0x36fcd  1      
  nop                                               #  117   0x36fce  1      
  callq .__cxa_guard_release                        #  118   0x36fcf  5      
  jmpq .L_37080                                     #  119   0x36fd4  5      
  nop                                               #  120   0x36fd9  1      
  nop                                               #  121   0x36fda  1      
.L_37120:                                           #        0x36fdb  0      
  movl $0x10030d70, %edi                            #  122   0x36fdb  5      
  movl %eax, %r12d                                  #  123   0x36fe0  3      
  nop                                               #  124   0x36fe3  1      
  nop                                               #  125   0x36fe4  1      
  callq .__cxa_guard_abort                          #  126   0x36fe5  5      
.L_37140:                                           #        0x36fea  0      
  movl %ebx, %edi                                   #  127   0x36fea  2      
  nop                                               #  128   0x36fec  1      
  nop                                               #  129   0x36fed  1      
  callq ._ZN2pp8ResourceD2Ev                        #  130   0x36fee  5      
  movl %r12d, %edi                                  #  131   0x36ff3  3      
  nop                                               #  132   0x36ff6  1      
  nop                                               #  133   0x36ff7  1      
  callq ._Unwind_Resume                             #  134   0x36ff8  5      
  movl %eax, %r12d                                  #  135   0x36ffd  3      
  jmpq .L_37140                                     #  136   0x37000  5      
  nop                                               #  137   0x37005  1      
  nop                                               #  138   0x37006  1      
  jmpq .L_37120                                     #  139   0x37007  5      
  nop                                               #  140   0x3700c  1      
  nop                                               #  141   0x3700d  1      
  nop                                               #  142   0x3700e  1      
                                                                             
.size _ZN2pp10InputEventC1Ei, .-_ZN2pp10InputEventC1Ei

