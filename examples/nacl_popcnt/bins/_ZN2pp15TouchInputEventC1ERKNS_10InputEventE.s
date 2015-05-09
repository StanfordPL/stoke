  .text
  .globl _ZN2pp15TouchInputEventC1ERKNS_10InputEventE
  .type _ZN2pp15TouchInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x3a460
#! rip-offset  0x3a460
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC1ERKNS_10InputEventE:      #        0x3a460  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x3a460  5      
  movl %edi, %ebx                                   #  2     0x3a465  2      
  movq %r12, -0x10(%rsp)                            #  3     0x3a467  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3a46c  5      
  movl %ebx, %edi                                   #  5     0x3a471  2      
  subl $0x18, %esp                                  #  6     0x3a473  3      
  addq %r15, %rsp                                   #  7     0x3a476  3      
  movl %esi, %r12d                                  #  8     0x3a479  3      
  nop                                               #  9     0x3a47c  1      
  nop                                               #  10    0x3a47d  1      
  nop                                               #  11    0x3a47e  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3a47f  5      
  movl %ebx, %ebx                                   #  13    0x3a484  2      
  movl $0x10020788, (%r15,%rbx,1)                   #  14    0x3a486  8      
  cmpb $0x0, 0xfff688b(%rip)                        #  15    0x3a48e  7      
  je .L_3a500                                       #  16    0x3a495  6      
  nop                                               #  17    0x3a49b  1      
.L_3a4c0:                                           #        0x3a49c  0      
  movl 0xfff6886(%rip), %eax                        #  18    0x3a49c  6      
  testq %rax, %rax                                  #  19    0x3a4a2  3      
  jne .L_3a5a0                                      #  20    0x3a4a5  6      
  xchgw %ax, %ax                                    #  21    0x3a4ab  3      
  nop                                               #  22    0x3a4ae  1      
.L_3a4e0:                                           #        0x3a4af  0      
  movq (%rsp), %rbx                                 #  23    0x3a4af  4      
  movq 0x8(%rsp), %r12                              #  24    0x3a4b3  5      
  movq 0x10(%rsp), %r13                             #  25    0x3a4b8  5      
  addl $0x18, %esp                                  #  26    0x3a4bd  3      
  addq %r15, %rsp                                   #  27    0x3a4c0  3      
  popq %r11                                         #  28    0x3a4c3  3      
  andl $0xffffffe0, %r11d                           #  29    0x3a4c6  7      
  addq %r15, %r11                                   #  30    0x3a4cd  3      
  jmpq %r11                                         #  31    0x3a4d0  3      
.L_3a500:                                           #        0x3a4d3  0      
  movl $0x10030d20, %edi                            #  32    0x3a4d3  5      
  nop                                               #  33    0x3a4d8  1      
  nop                                               #  34    0x3a4d9  1      
  callq .__cxa_guard_acquire                        #  35    0x3a4da  5      
  testl %eax, %eax                                  #  36    0x3a4df  2      
  je .L_3a4c0                                       #  37    0x3a4e1  6      
  nop                                               #  38    0x3a4e7  1      
  nop                                               #  39    0x3a4e8  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x3a4e9  5      
  movl %eax, %edi                                   #  41    0x3a4ee  2      
  movl $0x100206d8, %esi                            #  42    0x3a4f0  5      
  nop                                               #  43    0x3a4f5  1      
  nop                                               #  44    0x3a4f6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x3a4f7  5      
  movl $0x10030d20, %edi                            #  46    0x3a4fc  5      
  movl %eax, 0xfff6821(%rip)                        #  47    0x3a501  6      
  nop                                               #  48    0x3a507  1      
  nop                                               #  49    0x3a508  1      
  callq .__cxa_guard_release                        #  50    0x3a509  5      
  movl 0xfff6814(%rip), %eax                        #  51    0x3a50e  6      
  testq %rax, %rax                                  #  52    0x3a514  3      
  je .L_3a4e0                                       #  53    0x3a517  6      
  xchgw %ax, %ax                                    #  54    0x3a51d  3      
  nop                                               #  55    0x3a520  1      
.L_3a5a0:                                           #        0x3a521  0      
  cmpb $0x0, 0xfff67f8(%rip)                        #  56    0x3a521  7      
  je .L_3a660                                       #  57    0x3a528  6      
  nop                                               #  58    0x3a52e  1      
  nop                                               #  59    0x3a52f  1      
.L_3a5c0:                                           #        0x3a530  0      
  movl %eax, %eax                                   #  60    0x3a530  2      
  movl 0x8(%r15,%rax,1), %eax                       #  61    0x3a532  5      
  movl %r12d, %r12d                                 #  62    0x3a537  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3a53a  5      
  nop                                               #  64    0x3a53f  1      
  andl $0xffffffe0, %eax                            #  65    0x3a540  5      
  addq %r15, %rax                                   #  66    0x3a545  3      
  callq %rax                                        #  67    0x3a548  2      
  testl %eax, %eax                                  #  68    0x3a54a  2      
  je .L_3a4e0                                       #  69    0x3a54c  6      
  movl %r12d, %r12d                                 #  70    0x3a552  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x3a555  5      
  nop                                               #  72    0x3a55a  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3a55b  5      
  movl %eax, %eax                                   #  74    0x3a560  2      
  movl %r13d, %edi                                  #  75    0x3a562  3      
  movl %eax, %eax                                   #  76    0x3a565  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x3a567  5      
  movl %eax, %eax                                   #  78    0x3a56c  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3a56e  4      
  movl %eax, %eax                                   #  80    0x3a572  2      
  movl (%r15,%rax,1), %eax                          #  81    0x3a574  4      
  andl $0xffffffe0, %eax                            #  82    0x3a578  5      
  addq %r15, %rax                                   #  83    0x3a57d  3      
  callq %rax                                        #  84    0x3a580  2      
  movl %r12d, %r12d                                 #  85    0x3a582  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x3a585  5      
  movl %ebx, %edi                                   #  87    0x3a58a  2      
  xchgw %ax, %ax                                    #  88    0x3a58c  3      
  nop                                               #  89    0x3a58f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x3a590  5      
  jmpq .L_3a4e0                                     #  91    0x3a595  5      
  nop                                               #  92    0x3a59a  1      
  nop                                               #  93    0x3a59b  1      
.L_3a660:                                           #        0x3a59c  0      
  movl $0x10030d20, %edi                            #  94    0x3a59c  5      
  nop                                               #  95    0x3a5a1  1      
  nop                                               #  96    0x3a5a2  1      
  callq .__cxa_guard_acquire                        #  97    0x3a5a3  5      
  testl %eax, %eax                                  #  98    0x3a5a8  2      
  jne .L_3a6c0                                      #  99    0x3a5aa  6      
  nop                                               #  100   0x3a5b0  1      
  nop                                               #  101   0x3a5b1  1      
.L_3a6a0:                                           #        0x3a5b2  0      
  movl 0xfff6770(%rip), %eax                        #  102   0x3a5b2  6      
  jmpq .L_3a5c0                                     #  103   0x3a5b8  5      
  nop                                               #  104   0x3a5bd  1      
  nop                                               #  105   0x3a5be  1      
.L_3a6c0:                                           #        0x3a5bf  0      
  nop                                               #  106   0x3a5bf  1      
  nop                                               #  107   0x3a5c0  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3a5c1  5      
  movl %eax, %edi                                   #  109   0x3a5c6  2      
  movl $0x100206d8, %esi                            #  110   0x3a5c8  5      
  nop                                               #  111   0x3a5cd  1      
  nop                                               #  112   0x3a5ce  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3a5cf  5      
  movl $0x10030d20, %edi                            #  114   0x3a5d4  5      
  movl %eax, 0xfff6749(%rip)                        #  115   0x3a5d9  6      
  nop                                               #  116   0x3a5df  1      
  nop                                               #  117   0x3a5e0  1      
  callq .__cxa_guard_release                        #  118   0x3a5e1  5      
  jmpq .L_3a6a0                                     #  119   0x3a5e6  5      
  nop                                               #  120   0x3a5eb  1      
  nop                                               #  121   0x3a5ec  1      
.L_3a740:                                           #        0x3a5ed  0      
  movl $0x10030d20, %edi                            #  122   0x3a5ed  5      
  movl %eax, %r12d                                  #  123   0x3a5f2  3      
  nop                                               #  124   0x3a5f5  1      
  nop                                               #  125   0x3a5f6  1      
  callq .__cxa_guard_abort                          #  126   0x3a5f7  5      
.L_3a760:                                           #        0x3a5fc  0      
  movl %ebx, %edi                                   #  127   0x3a5fc  2      
  nop                                               #  128   0x3a5fe  1      
  nop                                               #  129   0x3a5ff  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x3a600  5      
  movl %r12d, %edi                                  #  131   0x3a605  3      
  nop                                               #  132   0x3a608  1      
  nop                                               #  133   0x3a609  1      
  callq ._Unwind_Resume                             #  134   0x3a60a  5      
  movl %eax, %r12d                                  #  135   0x3a60f  3      
  jmpq .L_3a760                                     #  136   0x3a612  5      
  nop                                               #  137   0x3a617  1      
  nop                                               #  138   0x3a618  1      
  jmpq .L_3a740                                     #  139   0x3a619  5      
  nop                                               #  140   0x3a61e  1      
  nop                                               #  141   0x3a61f  1      
  nop                                               #  142   0x3a620  1      
                                                                             
.size _ZN2pp15TouchInputEventC1ERKNS_10InputEventE, .-_ZN2pp15TouchInputEventC1ERKNS_10InputEventE

