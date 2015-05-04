  .text
  .globl _ZN2pp15WheelInputEventC2ERKNS_10InputEventE
  .type _ZN2pp15WheelInputEventC2ERKNS_10InputEventE, @function

#! file-offset 0x37c00
#! rip-offset  0x37c00
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC2ERKNS_10InputEventE:      #        0x37c00  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x37c00  5      
  movl %edi, %ebx                                   #  2     0x37c05  2      
  movq %r12, -0x10(%rsp)                            #  3     0x37c07  5      
  movq %r13, -0x8(%rsp)                             #  4     0x37c0c  5      
  movl %ebx, %edi                                   #  5     0x37c11  2      
  subl $0x18, %esp                                  #  6     0x37c13  3      
  addq %r15, %rsp                                   #  7     0x37c16  3      
  movl %esi, %r12d                                  #  8     0x37c19  3      
  nop                                               #  9     0x37c1c  1      
  nop                                               #  10    0x37c1d  1      
  nop                                               #  11    0x37c1e  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x37c1f  5      
  movl %ebx, %ebx                                   #  13    0x37c24  2      
  movl $0x10020808, (%r15,%rbx,1)                   #  14    0x37c26  8      
  cmpb $0x0, 0xfff911b(%rip)                        #  15    0x37c2e  7      
  je .L_37ca0                                       #  16    0x37c35  6      
  nop                                               #  17    0x37c3b  1      
.L_37c60:                                           #        0x37c3c  0      
  movl 0xfff9116(%rip), %eax                        #  18    0x37c3c  6      
  testq %rax, %rax                                  #  19    0x37c42  3      
  jne .L_37d40                                      #  20    0x37c45  6      
  xchgw %ax, %ax                                    #  21    0x37c4b  3      
  nop                                               #  22    0x37c4e  1      
.L_37c80:                                           #        0x37c4f  0      
  movq (%rsp), %rbx                                 #  23    0x37c4f  4      
  movq 0x8(%rsp), %r12                              #  24    0x37c53  5      
  movq 0x10(%rsp), %r13                             #  25    0x37c58  5      
  addl $0x18, %esp                                  #  26    0x37c5d  3      
  addq %r15, %rsp                                   #  27    0x37c60  3      
  popq %r11                                         #  28    0x37c63  3      
  andl $0xffffffe0, %r11d                           #  29    0x37c66  7      
  addq %r15, %r11                                   #  30    0x37c6d  3      
  jmpq %r11                                         #  31    0x37c70  3      
.L_37ca0:                                           #        0x37c73  0      
  movl $0x10030d50, %edi                            #  32    0x37c73  5      
  nop                                               #  33    0x37c78  1      
  nop                                               #  34    0x37c79  1      
  callq .__cxa_guard_acquire                        #  35    0x37c7a  5      
  testl %eax, %eax                                  #  36    0x37c7f  2      
  je .L_37c60                                       #  37    0x37c81  6      
  nop                                               #  38    0x37c87  1      
  nop                                               #  39    0x37c88  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x37c89  5      
  movl %eax, %edi                                   #  41    0x37c8e  2      
  movl $0x100206c0, %esi                            #  42    0x37c90  5      
  nop                                               #  43    0x37c95  1      
  nop                                               #  44    0x37c96  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x37c97  5      
  movl $0x10030d50, %edi                            #  46    0x37c9c  5      
  movl %eax, 0xfff90b1(%rip)                        #  47    0x37ca1  6      
  nop                                               #  48    0x37ca7  1      
  nop                                               #  49    0x37ca8  1      
  callq .__cxa_guard_release                        #  50    0x37ca9  5      
  movl 0xfff90a4(%rip), %eax                        #  51    0x37cae  6      
  testq %rax, %rax                                  #  52    0x37cb4  3      
  je .L_37c80                                       #  53    0x37cb7  6      
  xchgw %ax, %ax                                    #  54    0x37cbd  3      
  nop                                               #  55    0x37cc0  1      
.L_37d40:                                           #        0x37cc1  0      
  cmpb $0x0, 0xfff9088(%rip)                        #  56    0x37cc1  7      
  je .L_37e00                                       #  57    0x37cc8  6      
  nop                                               #  58    0x37cce  1      
  nop                                               #  59    0x37ccf  1      
.L_37d60:                                           #        0x37cd0  0      
  movl %eax, %eax                                   #  60    0x37cd0  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x37cd2  5      
  movl %r12d, %r12d                                 #  62    0x37cd7  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x37cda  5      
  nop                                               #  64    0x37cdf  1      
  andl $0xffffffe0, %eax                            #  65    0x37ce0  5      
  addq %r15, %rax                                   #  66    0x37ce5  3      
  callq %rax                                        #  67    0x37ce8  2      
  testl %eax, %eax                                  #  68    0x37cea  2      
  je .L_37c80                                       #  69    0x37cec  6      
  movl %r12d, %r12d                                 #  70    0x37cf2  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x37cf5  5      
  nop                                               #  72    0x37cfa  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x37cfb  5      
  movl %eax, %eax                                   #  74    0x37d00  2      
  movl %r13d, %edi                                  #  75    0x37d02  3      
  movl %eax, %eax                                   #  76    0x37d05  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x37d07  5      
  movl %eax, %eax                                   #  78    0x37d0c  2      
  movl (%r15,%rax,1), %eax                          #  79    0x37d0e  4      
  movl %eax, %eax                                   #  80    0x37d12  2      
  movl (%r15,%rax,1), %eax                          #  81    0x37d14  4      
  andl $0xffffffe0, %eax                            #  82    0x37d18  5      
  addq %r15, %rax                                   #  83    0x37d1d  3      
  callq %rax                                        #  84    0x37d20  2      
  movl %r12d, %r12d                                 #  85    0x37d22  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x37d25  5      
  movl %ebx, %edi                                   #  87    0x37d2a  2      
  xchgw %ax, %ax                                    #  88    0x37d2c  3      
  nop                                               #  89    0x37d2f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x37d30  5      
  jmpq .L_37c80                                     #  91    0x37d35  5      
  nop                                               #  92    0x37d3a  1      
  nop                                               #  93    0x37d3b  1      
.L_37e00:                                           #        0x37d3c  0      
  movl $0x10030d50, %edi                            #  94    0x37d3c  5      
  nop                                               #  95    0x37d41  1      
  nop                                               #  96    0x37d42  1      
  callq .__cxa_guard_acquire                        #  97    0x37d43  5      
  testl %eax, %eax                                  #  98    0x37d48  2      
  jne .L_37e60                                      #  99    0x37d4a  6      
  nop                                               #  100   0x37d50  1      
  nop                                               #  101   0x37d51  1      
.L_37e40:                                           #        0x37d52  0      
  movl 0xfff9000(%rip), %eax                        #  102   0x37d52  6      
  jmpq .L_37d60                                     #  103   0x37d58  5      
  nop                                               #  104   0x37d5d  1      
  nop                                               #  105   0x37d5e  1      
.L_37e60:                                           #        0x37d5f  0      
  nop                                               #  106   0x37d5f  1      
  nop                                               #  107   0x37d60  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x37d61  5      
  movl %eax, %edi                                   #  109   0x37d66  2      
  movl $0x100206c0, %esi                            #  110   0x37d68  5      
  nop                                               #  111   0x37d6d  1      
  nop                                               #  112   0x37d6e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x37d6f  5      
  movl $0x10030d50, %edi                            #  114   0x37d74  5      
  movl %eax, 0xfff8fd9(%rip)                        #  115   0x37d79  6      
  nop                                               #  116   0x37d7f  1      
  nop                                               #  117   0x37d80  1      
  callq .__cxa_guard_release                        #  118   0x37d81  5      
  jmpq .L_37e40                                     #  119   0x37d86  5      
  nop                                               #  120   0x37d8b  1      
  nop                                               #  121   0x37d8c  1      
.L_37ee0:                                           #        0x37d8d  0      
  movl $0x10030d50, %edi                            #  122   0x37d8d  5      
  movl %eax, %r12d                                  #  123   0x37d92  3      
  nop                                               #  124   0x37d95  1      
  nop                                               #  125   0x37d96  1      
  callq .__cxa_guard_abort                          #  126   0x37d97  5      
.L_37f00:                                           #        0x37d9c  0      
  movl %ebx, %edi                                   #  127   0x37d9c  2      
  nop                                               #  128   0x37d9e  1      
  nop                                               #  129   0x37d9f  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x37da0  5      
  movl %r12d, %edi                                  #  131   0x37da5  3      
  nop                                               #  132   0x37da8  1      
  nop                                               #  133   0x37da9  1      
  callq ._Unwind_Resume                             #  134   0x37daa  5      
  movl %eax, %r12d                                  #  135   0x37daf  3      
  jmpq .L_37f00                                     #  136   0x37db2  5      
  nop                                               #  137   0x37db7  1      
  nop                                               #  138   0x37db8  1      
  jmpq .L_37ee0                                     #  139   0x37db9  5      
  nop                                               #  140   0x37dbe  1      
  nop                                               #  141   0x37dbf  1      
  nop                                               #  142   0x37dc0  1      
                                                                             
.size _ZN2pp15WheelInputEventC2ERKNS_10InputEventE, .-_ZN2pp15WheelInputEventC2ERKNS_10InputEventE

