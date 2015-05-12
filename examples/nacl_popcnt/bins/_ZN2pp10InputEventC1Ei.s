  .text
  .globl _ZN2pp10InputEventC1Ei
  .type _ZN2pp10InputEventC1Ei, @function

#! file-offset 0x36e80
#! rip-offset  0x36e80
#! capacity    864 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp10InputEventC1Ei:                            #        0x36e80  0      
  pushq %r12                                        #  1     0x36e80  3      
  movl %esi, %r12d                                  #  2     0x36e83  3      
  pushq %rbx                                        #  3     0x36e86  2      
  movl %edi, %ebx                                   #  4     0x36e88  2      
  movl %ebx, %edi                                   #  5     0x36e8a  2      
  subl $0x8, %esp                                   #  6     0x36e8c  3      
  addq %r15, %rsp                                   #  7     0x36e8f  3      
  nop                                               #  8     0x36e92  1      
  callq ._ZN2pp8ResourceC2Ev                        #  9     0x36e93  5      
  movl %ebx, %ebx                                   #  10    0x36e98  2      
  movl $0x10020718, (%r15,%rbx,1)                   #  11    0x36e9a  8      
  cmpb $0x0, 0xfff9ec7(%rip)                        #  12    0x36ea2  7      
  je .L_36f00                                       #  13    0x36ea9  6      
  nop                                               #  14    0x36eaf  1      
.L_36ec0:                                           #        0x36eb0  0      
  movl 0xfff9ec2(%rip), %eax                        #  15    0x36eb0  6      
  testq %rax, %rax                                  #  16    0x36eb6  3      
  jne .L_36fa0                                      #  17    0x36eb9  6      
  xchgw %ax, %ax                                    #  18    0x36ebf  3      
  nop                                               #  19    0x36ec2  1      
.L_36ee0:                                           #        0x36ec3  0      
  addl $0x8, %esp                                   #  20    0x36ec3  3      
  addq %r15, %rsp                                   #  21    0x36ec6  3      
  popq %rbx                                         #  22    0x36ec9  2      
  popq %r12                                         #  23    0x36ecb  3      
  popq %r11                                         #  24    0x36ece  3      
  andl $0xffffffe0, %r11d                           #  25    0x36ed1  7      
  addq %r15, %r11                                   #  26    0x36ed8  3      
  jmpq %r11                                         #  27    0x36edb  3      
  nop                                               #  28    0x36ede  1      
.L_36f00:                                           #        0x36edf  0      
  movl $0x10030d70, %edi                            #  29    0x36edf  5      
  nop                                               #  30    0x36ee4  1      
  nop                                               #  31    0x36ee5  1      
  callq .__cxa_guard_acquire                        #  32    0x36ee6  5      
  testl %eax, %eax                                  #  33    0x36eeb  2      
  je .L_36ec0                                       #  34    0x36eed  6      
  nop                                               #  35    0x36ef3  1      
  nop                                               #  36    0x36ef4  1      
  callq ._ZN2pp6Module3GetEv                        #  37    0x36ef5  5      
  movl %eax, %edi                                   #  38    0x36efa  2      
  movl $0x100202c8, %esi                            #  39    0x36efc  5      
  nop                                               #  40    0x36f01  1      
  nop                                               #  41    0x36f02  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  42    0x36f03  5      
  movl $0x10030d70, %edi                            #  43    0x36f08  5      
  movl %eax, 0xfff9e65(%rip)                        #  44    0x36f0d  6      
  nop                                               #  45    0x36f13  1      
  nop                                               #  46    0x36f14  1      
  callq .__cxa_guard_release                        #  47    0x36f15  5      
  movl 0xfff9e58(%rip), %eax                        #  48    0x36f1a  6      
  testq %rax, %rax                                  #  49    0x36f20  3      
  je .L_36ee0                                       #  50    0x36f23  6      
  xchgw %ax, %ax                                    #  51    0x36f29  3      
  nop                                               #  52    0x36f2c  1      
.L_36fa0:                                           #        0x36f2d  0      
  cmpb $0x0, 0xfff9e3c(%rip)                        #  53    0x36f2d  7      
  je .L_37060                                       #  54    0x36f34  6      
  nop                                               #  55    0x36f3a  1      
  nop                                               #  56    0x36f3b  1      
.L_36fc0:                                           #        0x36f3c  0      
  movl %eax, %eax                                   #  57    0x36f3c  2      
  movl 0xc(%r15,%rax,1), %eax                       #  58    0x36f3e  5      
  movl %r12d, %edi                                  #  59    0x36f43  3      
  nop                                               #  60    0x36f46  1      
  andl $0xffffffe0, %eax                            #  61    0x36f47  5      
  addq %r15, %rax                                   #  62    0x36f4c  3      
  callq %rax                                        #  63    0x36f4f  2      
  testl %eax, %eax                                  #  64    0x36f51  2      
  je .L_36ee0                                       #  65    0x36f53  6      
  nop                                               #  66    0x36f59  1      
  nop                                               #  67    0x36f5a  1      
  callq ._ZN2pp6Module3GetEv                        #  68    0x36f5b  5      
  movl %eax, %eax                                   #  69    0x36f60  2      
  movl %r12d, %edi                                  #  70    0x36f62  3      
  movl %eax, %eax                                   #  71    0x36f65  2      
  movl 0x24(%r15,%rax,1), %eax                      #  72    0x36f67  5      
  movl %eax, %eax                                   #  73    0x36f6c  2      
  movl (%r15,%rax,1), %eax                          #  74    0x36f6e  4      
  movl %eax, %eax                                   #  75    0x36f72  2      
  movl (%r15,%rax,1), %eax                          #  76    0x36f74  4      
  andl $0xffffffe0, %eax                            #  77    0x36f78  5      
  addq %r15, %rax                                   #  78    0x36f7d  3      
  callq %rax                                        #  79    0x36f80  2      
  movl %r12d, %esi                                  #  80    0x36f82  3      
  movl %ebx, %edi                                   #  81    0x36f85  2      
  nop                                               #  82    0x36f87  1      
  nop                                               #  83    0x36f88  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  84    0x36f89  5      
  addl $0x8, %esp                                   #  85    0x36f8e  3      
  addq %r15, %rsp                                   #  86    0x36f91  3      
  popq %rbx                                         #  87    0x36f94  2      
  popq %r12                                         #  88    0x36f96  3      
  popq %r11                                         #  89    0x36f99  3      
  andl $0xffffffe0, %r11d                           #  90    0x36f9c  7      
  addq %r15, %r11                                   #  91    0x36fa3  3      
  jmpq %r11                                         #  92    0x36fa6  3      
  nop                                               #  93    0x36fa9  1      
.L_37060:                                           #        0x36faa  0      
  movl $0x10030d70, %edi                            #  94    0x36faa  5      
  nop                                               #  95    0x36faf  1      
  nop                                               #  96    0x36fb0  1      
  callq .__cxa_guard_acquire                        #  97    0x36fb1  5      
  testl %eax, %eax                                  #  98    0x36fb6  2      
  jne .L_370c0                                      #  99    0x36fb8  6      
  nop                                               #  100   0x36fbe  1      
  nop                                               #  101   0x36fbf  1      
.L_370a0:                                           #        0x36fc0  0      
  movl 0xfff9db2(%rip), %eax                        #  102   0x36fc0  6      
  jmpq .L_36fc0                                     #  103   0x36fc6  5      
  nop                                               #  104   0x36fcb  1      
  nop                                               #  105   0x36fcc  1      
.L_370c0:                                           #        0x36fcd  0      
  nop                                               #  106   0x36fcd  1      
  nop                                               #  107   0x36fce  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x36fcf  5      
  movl %eax, %edi                                   #  109   0x36fd4  2      
  movl $0x100202c8, %esi                            #  110   0x36fd6  5      
  nop                                               #  111   0x36fdb  1      
  nop                                               #  112   0x36fdc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x36fdd  5      
  movl $0x10030d70, %edi                            #  114   0x36fe2  5      
  movl %eax, 0xfff9d8b(%rip)                        #  115   0x36fe7  6      
  nop                                               #  116   0x36fed  1      
  nop                                               #  117   0x36fee  1      
  callq .__cxa_guard_release                        #  118   0x36fef  5      
  jmpq .L_370a0                                     #  119   0x36ff4  5      
  nop                                               #  120   0x36ff9  1      
  nop                                               #  121   0x36ffa  1      
.L_37140:                                           #        0x36ffb  0      
  movl $0x10030d70, %edi                            #  122   0x36ffb  5      
  movl %eax, %r12d                                  #  123   0x37000  3      
  nop                                               #  124   0x37003  1      
  nop                                               #  125   0x37004  1      
  callq .__cxa_guard_abort                          #  126   0x37005  5      
.L_37160:                                           #        0x3700a  0      
  movl %ebx, %edi                                   #  127   0x3700a  2      
  nop                                               #  128   0x3700c  1      
  nop                                               #  129   0x3700d  1      
  callq ._ZN2pp8ResourceD2Ev                        #  130   0x3700e  5      
  movl %r12d, %edi                                  #  131   0x37013  3      
  nop                                               #  132   0x37016  1      
  nop                                               #  133   0x37017  1      
  callq ._Unwind_Resume                             #  134   0x37018  5      
  movl %eax, %r12d                                  #  135   0x3701d  3      
  jmpq .L_37160                                     #  136   0x37020  5      
  nop                                               #  137   0x37025  1      
  nop                                               #  138   0x37026  1      
  jmpq .L_37140                                     #  139   0x37027  5      
  nop                                               #  140   0x3702c  1      
  nop                                               #  141   0x3702d  1      
  nop                                               #  142   0x3702e  1      
                                                                             
.size _ZN2pp10InputEventC1Ei, .-_ZN2pp10InputEventC1Ei

