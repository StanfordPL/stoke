  .text
  .globl _ZN2pp15TouchInputEventC2ERKNS_10InputEventE
  .type _ZN2pp15TouchInputEventC2ERKNS_10InputEventE, @function

#! file-offset 0x39860
#! rip-offset  0x39860
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC2ERKNS_10InputEventE:      #        0x39860  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x39860  5      
  movl %edi, %ebx                                   #  2     0x39865  2      
  movq %r12, -0x10(%rsp)                            #  3     0x39867  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3986c  5      
  movl %ebx, %edi                                   #  5     0x39871  2      
  subl $0x18, %esp                                  #  6     0x39873  3      
  addq %r15, %rsp                                   #  7     0x39876  3      
  movl %esi, %r12d                                  #  8     0x39879  3      
  nop                                               #  9     0x3987c  1      
  nop                                               #  10    0x3987d  1      
  nop                                               #  11    0x3987e  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3987f  5      
  movl %ebx, %ebx                                   #  13    0x39884  2      
  movl $0x10020788, (%r15,%rbx,1)                   #  14    0x39886  8      
  cmpb $0x0, 0xfff748b(%rip)                        #  15    0x3988e  7      
  je .L_39900                                       #  16    0x39895  6      
  nop                                               #  17    0x3989b  1      
.L_398c0:                                           #        0x3989c  0      
  movl 0xfff7486(%rip), %eax                        #  18    0x3989c  6      
  testq %rax, %rax                                  #  19    0x398a2  3      
  jne .L_399a0                                      #  20    0x398a5  6      
  xchgw %ax, %ax                                    #  21    0x398ab  3      
  nop                                               #  22    0x398ae  1      
.L_398e0:                                           #        0x398af  0      
  movq (%rsp), %rbx                                 #  23    0x398af  4      
  movq 0x8(%rsp), %r12                              #  24    0x398b3  5      
  movq 0x10(%rsp), %r13                             #  25    0x398b8  5      
  addl $0x18, %esp                                  #  26    0x398bd  3      
  addq %r15, %rsp                                   #  27    0x398c0  3      
  popq %r11                                         #  28    0x398c3  3      
  andl $0xffffffe0, %r11d                           #  29    0x398c6  7      
  addq %r15, %r11                                   #  30    0x398cd  3      
  jmpq %r11                                         #  31    0x398d0  3      
.L_39900:                                           #        0x398d3  0      
  movl $0x10030d20, %edi                            #  32    0x398d3  5      
  nop                                               #  33    0x398d8  1      
  nop                                               #  34    0x398d9  1      
  callq .__cxa_guard_acquire                        #  35    0x398da  5      
  testl %eax, %eax                                  #  36    0x398df  2      
  je .L_398c0                                       #  37    0x398e1  6      
  nop                                               #  38    0x398e7  1      
  nop                                               #  39    0x398e8  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x398e9  5      
  movl %eax, %edi                                   #  41    0x398ee  2      
  movl $0x100206d8, %esi                            #  42    0x398f0  5      
  nop                                               #  43    0x398f5  1      
  nop                                               #  44    0x398f6  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x398f7  5      
  movl $0x10030d20, %edi                            #  46    0x398fc  5      
  movl %eax, 0xfff7421(%rip)                        #  47    0x39901  6      
  nop                                               #  48    0x39907  1      
  nop                                               #  49    0x39908  1      
  callq .__cxa_guard_release                        #  50    0x39909  5      
  movl 0xfff7414(%rip), %eax                        #  51    0x3990e  6      
  testq %rax, %rax                                  #  52    0x39914  3      
  je .L_398e0                                       #  53    0x39917  6      
  xchgw %ax, %ax                                    #  54    0x3991d  3      
  nop                                               #  55    0x39920  1      
.L_399a0:                                           #        0x39921  0      
  cmpb $0x0, 0xfff73f8(%rip)                        #  56    0x39921  7      
  je .L_39a60                                       #  57    0x39928  6      
  nop                                               #  58    0x3992e  1      
  nop                                               #  59    0x3992f  1      
.L_399c0:                                           #        0x39930  0      
  movl %eax, %eax                                   #  60    0x39930  2      
  movl 0x8(%r15,%rax,1), %eax                       #  61    0x39932  5      
  movl %r12d, %r12d                                 #  62    0x39937  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3993a  5      
  nop                                               #  64    0x3993f  1      
  andl $0xffffffe0, %eax                            #  65    0x39940  5      
  addq %r15, %rax                                   #  66    0x39945  3      
  callq %rax                                        #  67    0x39948  2      
  testl %eax, %eax                                  #  68    0x3994a  2      
  je .L_398e0                                       #  69    0x3994c  6      
  movl %r12d, %r12d                                 #  70    0x39952  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x39955  5      
  nop                                               #  72    0x3995a  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3995b  5      
  movl %eax, %eax                                   #  74    0x39960  2      
  movl %r13d, %edi                                  #  75    0x39962  3      
  movl %eax, %eax                                   #  76    0x39965  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x39967  5      
  movl %eax, %eax                                   #  78    0x3996c  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3996e  4      
  movl %eax, %eax                                   #  80    0x39972  2      
  movl (%r15,%rax,1), %eax                          #  81    0x39974  4      
  andl $0xffffffe0, %eax                            #  82    0x39978  5      
  addq %r15, %rax                                   #  83    0x3997d  3      
  callq %rax                                        #  84    0x39980  2      
  movl %r12d, %r12d                                 #  85    0x39982  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x39985  5      
  movl %ebx, %edi                                   #  87    0x3998a  2      
  xchgw %ax, %ax                                    #  88    0x3998c  3      
  nop                                               #  89    0x3998f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x39990  5      
  jmpq .L_398e0                                     #  91    0x39995  5      
  nop                                               #  92    0x3999a  1      
  nop                                               #  93    0x3999b  1      
.L_39a60:                                           #        0x3999c  0      
  movl $0x10030d20, %edi                            #  94    0x3999c  5      
  nop                                               #  95    0x399a1  1      
  nop                                               #  96    0x399a2  1      
  callq .__cxa_guard_acquire                        #  97    0x399a3  5      
  testl %eax, %eax                                  #  98    0x399a8  2      
  jne .L_39ac0                                      #  99    0x399aa  6      
  nop                                               #  100   0x399b0  1      
  nop                                               #  101   0x399b1  1      
.L_39aa0:                                           #        0x399b2  0      
  movl 0xfff7370(%rip), %eax                        #  102   0x399b2  6      
  jmpq .L_399c0                                     #  103   0x399b8  5      
  nop                                               #  104   0x399bd  1      
  nop                                               #  105   0x399be  1      
.L_39ac0:                                           #        0x399bf  0      
  nop                                               #  106   0x399bf  1      
  nop                                               #  107   0x399c0  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x399c1  5      
  movl %eax, %edi                                   #  109   0x399c6  2      
  movl $0x100206d8, %esi                            #  110   0x399c8  5      
  nop                                               #  111   0x399cd  1      
  nop                                               #  112   0x399ce  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x399cf  5      
  movl $0x10030d20, %edi                            #  114   0x399d4  5      
  movl %eax, 0xfff7349(%rip)                        #  115   0x399d9  6      
  nop                                               #  116   0x399df  1      
  nop                                               #  117   0x399e0  1      
  callq .__cxa_guard_release                        #  118   0x399e1  5      
  jmpq .L_39aa0                                     #  119   0x399e6  5      
  nop                                               #  120   0x399eb  1      
  nop                                               #  121   0x399ec  1      
.L_39b40:                                           #        0x399ed  0      
  movl $0x10030d20, %edi                            #  122   0x399ed  5      
  movl %eax, %r12d                                  #  123   0x399f2  3      
  nop                                               #  124   0x399f5  1      
  nop                                               #  125   0x399f6  1      
  callq .__cxa_guard_abort                          #  126   0x399f7  5      
.L_39b60:                                           #        0x399fc  0      
  movl %ebx, %edi                                   #  127   0x399fc  2      
  nop                                               #  128   0x399fe  1      
  nop                                               #  129   0x399ff  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x39a00  5      
  movl %r12d, %edi                                  #  131   0x39a05  3      
  nop                                               #  132   0x39a08  1      
  nop                                               #  133   0x39a09  1      
  callq ._Unwind_Resume                             #  134   0x39a0a  5      
  movl %eax, %r12d                                  #  135   0x39a0f  3      
  jmpq .L_39b60                                     #  136   0x39a12  5      
  nop                                               #  137   0x39a17  1      
  nop                                               #  138   0x39a18  1      
  jmpq .L_39b40                                     #  139   0x39a19  5      
  nop                                               #  140   0x39a1e  1      
  nop                                               #  141   0x39a1f  1      
  nop                                               #  142   0x39a20  1      
                                                                             
.size _ZN2pp15TouchInputEventC2ERKNS_10InputEventE, .-_ZN2pp15TouchInputEventC2ERKNS_10InputEventE

