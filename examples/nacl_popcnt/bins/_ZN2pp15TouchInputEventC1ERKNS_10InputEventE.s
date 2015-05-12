  .text
  .globl _ZN2pp15TouchInputEventC1ERKNS_10InputEventE
  .type _ZN2pp15TouchInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x3a480
#! rip-offset  0x3a480
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC1ERKNS_10InputEventE:      #        0x3a480  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x3a480  5      
  movl %edi, %ebx                                   #  2     0x3a485  2      
  movq %r12, -0x10(%rsp)                            #  3     0x3a487  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3a48c  5      
  movl %ebx, %edi                                   #  5     0x3a491  2      
  subl $0x18, %esp                                  #  6     0x3a493  3      
  addq %r15, %rsp                                   #  7     0x3a496  3      
  movl %esi, %r12d                                  #  8     0x3a499  3      
  nop                                               #  9     0x3a49c  1      
  nop                                               #  10    0x3a49d  1      
  nop                                               #  11    0x3a49e  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3a49f  5      
  movl %ebx, %ebx                                   #  13    0x3a4a4  2      
  movl $0x10020788, (%r15,%rbx,1)                   #  14    0x3a4a6  8      
  cmpb $0x0, 0xfff686b(%rip)                        #  15    0x3a4ae  7      
  je .L_3a520                                       #  16    0x3a4b5  6      
  nop                                               #  17    0x3a4bb  1      
.L_3a4e0:                                           #        0x3a4bc  0      
  movl 0xfff6866(%rip), %eax                        #  18    0x3a4bc  6      
  testq %rax, %rax                                  #  19    0x3a4c2  3      
  jne .L_3a5c0                                      #  20    0x3a4c5  6      
  xchgw %ax, %ax                                    #  21    0x3a4cb  3      
  nop                                               #  22    0x3a4ce  1      
.L_3a500:                                           #        0x3a4cf  0      
  movq (%rsp), %rbx                                 #  23    0x3a4cf  4      
  movq 0x8(%rsp), %r12                              #  24    0x3a4d3  5      
  movq 0x10(%rsp), %r13                             #  25    0x3a4d8  5      
  addl $0x18, %esp                                  #  26    0x3a4dd  3      
  addq %r15, %rsp                                   #  27    0x3a4e0  3      
  popq %r11                                         #  28    0x3a4e3  3      
  andl $0xffffffe0, %r11d                           #  29    0x3a4e6  7      
  addq %r15, %r11                                   #  30    0x3a4ed  3      
  jmpq %r11                                         #  31    0x3a4f0  3      
.L_3a520:                                           #        0x3a4f3  0      
  movl $0x10030d20, %edi                            #  32    0x3a4f3  5      
  nop                                               #  33    0x3a4f8  1      
  nop                                               #  34    0x3a4f9  1      
  callq .__cxa_guard_acquire                        #  35    0x3a4fa  5      
  testl %eax, %eax                                  #  36    0x3a4ff  2      
  je .L_3a4e0                                       #  37    0x3a501  6      
  nop                                               #  38    0x3a507  1      
  nop                                               #  39    0x3a508  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x3a509  5      
  movl %eax, %edi                                   #  41    0x3a50e  2      
  movl $0x100206d8, %esi                            #  42    0x3a510  5      
  nop                                               #  43    0x3a515  1      
  nop                                               #  44    0x3a516  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x3a517  5      
  movl $0x10030d20, %edi                            #  46    0x3a51c  5      
  movl %eax, 0xfff6801(%rip)                        #  47    0x3a521  6      
  nop                                               #  48    0x3a527  1      
  nop                                               #  49    0x3a528  1      
  callq .__cxa_guard_release                        #  50    0x3a529  5      
  movl 0xfff67f4(%rip), %eax                        #  51    0x3a52e  6      
  testq %rax, %rax                                  #  52    0x3a534  3      
  je .L_3a500                                       #  53    0x3a537  6      
  xchgw %ax, %ax                                    #  54    0x3a53d  3      
  nop                                               #  55    0x3a540  1      
.L_3a5c0:                                           #        0x3a541  0      
  cmpb $0x0, 0xfff67d8(%rip)                        #  56    0x3a541  7      
  je .L_3a680                                       #  57    0x3a548  6      
  nop                                               #  58    0x3a54e  1      
  nop                                               #  59    0x3a54f  1      
.L_3a5e0:                                           #        0x3a550  0      
  movl %eax, %eax                                   #  60    0x3a550  2      
  movl 0x8(%r15,%rax,1), %eax                       #  61    0x3a552  5      
  movl %r12d, %r12d                                 #  62    0x3a557  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3a55a  5      
  nop                                               #  64    0x3a55f  1      
  andl $0xffffffe0, %eax                            #  65    0x3a560  5      
  addq %r15, %rax                                   #  66    0x3a565  3      
  callq %rax                                        #  67    0x3a568  2      
  testl %eax, %eax                                  #  68    0x3a56a  2      
  je .L_3a500                                       #  69    0x3a56c  6      
  movl %r12d, %r12d                                 #  70    0x3a572  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x3a575  5      
  nop                                               #  72    0x3a57a  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3a57b  5      
  movl %eax, %eax                                   #  74    0x3a580  2      
  movl %r13d, %edi                                  #  75    0x3a582  3      
  movl %eax, %eax                                   #  76    0x3a585  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x3a587  5      
  movl %eax, %eax                                   #  78    0x3a58c  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3a58e  4      
  movl %eax, %eax                                   #  80    0x3a592  2      
  movl (%r15,%rax,1), %eax                          #  81    0x3a594  4      
  andl $0xffffffe0, %eax                            #  82    0x3a598  5      
  addq %r15, %rax                                   #  83    0x3a59d  3      
  callq %rax                                        #  84    0x3a5a0  2      
  movl %r12d, %r12d                                 #  85    0x3a5a2  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x3a5a5  5      
  movl %ebx, %edi                                   #  87    0x3a5aa  2      
  xchgw %ax, %ax                                    #  88    0x3a5ac  3      
  nop                                               #  89    0x3a5af  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x3a5b0  5      
  jmpq .L_3a500                                     #  91    0x3a5b5  5      
  nop                                               #  92    0x3a5ba  1      
  nop                                               #  93    0x3a5bb  1      
.L_3a680:                                           #        0x3a5bc  0      
  movl $0x10030d20, %edi                            #  94    0x3a5bc  5      
  nop                                               #  95    0x3a5c1  1      
  nop                                               #  96    0x3a5c2  1      
  callq .__cxa_guard_acquire                        #  97    0x3a5c3  5      
  testl %eax, %eax                                  #  98    0x3a5c8  2      
  jne .L_3a6e0                                      #  99    0x3a5ca  6      
  nop                                               #  100   0x3a5d0  1      
  nop                                               #  101   0x3a5d1  1      
.L_3a6c0:                                           #        0x3a5d2  0      
  movl 0xfff6750(%rip), %eax                        #  102   0x3a5d2  6      
  jmpq .L_3a5e0                                     #  103   0x3a5d8  5      
  nop                                               #  104   0x3a5dd  1      
  nop                                               #  105   0x3a5de  1      
.L_3a6e0:                                           #        0x3a5df  0      
  nop                                               #  106   0x3a5df  1      
  nop                                               #  107   0x3a5e0  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3a5e1  5      
  movl %eax, %edi                                   #  109   0x3a5e6  2      
  movl $0x100206d8, %esi                            #  110   0x3a5e8  5      
  nop                                               #  111   0x3a5ed  1      
  nop                                               #  112   0x3a5ee  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3a5ef  5      
  movl $0x10030d20, %edi                            #  114   0x3a5f4  5      
  movl %eax, 0xfff6729(%rip)                        #  115   0x3a5f9  6      
  nop                                               #  116   0x3a5ff  1      
  nop                                               #  117   0x3a600  1      
  callq .__cxa_guard_release                        #  118   0x3a601  5      
  jmpq .L_3a6c0                                     #  119   0x3a606  5      
  nop                                               #  120   0x3a60b  1      
  nop                                               #  121   0x3a60c  1      
.L_3a760:                                           #        0x3a60d  0      
  movl $0x10030d20, %edi                            #  122   0x3a60d  5      
  movl %eax, %r12d                                  #  123   0x3a612  3      
  nop                                               #  124   0x3a615  1      
  nop                                               #  125   0x3a616  1      
  callq .__cxa_guard_abort                          #  126   0x3a617  5      
.L_3a780:                                           #        0x3a61c  0      
  movl %ebx, %edi                                   #  127   0x3a61c  2      
  nop                                               #  128   0x3a61e  1      
  nop                                               #  129   0x3a61f  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x3a620  5      
  movl %r12d, %edi                                  #  131   0x3a625  3      
  nop                                               #  132   0x3a628  1      
  nop                                               #  133   0x3a629  1      
  callq ._Unwind_Resume                             #  134   0x3a62a  5      
  movl %eax, %r12d                                  #  135   0x3a62f  3      
  jmpq .L_3a780                                     #  136   0x3a632  5      
  nop                                               #  137   0x3a637  1      
  nop                                               #  138   0x3a638  1      
  jmpq .L_3a760                                     #  139   0x3a639  5      
  nop                                               #  140   0x3a63e  1      
  nop                                               #  141   0x3a63f  1      
  nop                                               #  142   0x3a640  1      
                                                                             
.size _ZN2pp15TouchInputEventC1ERKNS_10InputEventE, .-_ZN2pp15TouchInputEventC1ERKNS_10InputEventE

