  .text
  .globl _ZN2pp15TouchInputEventC2ERKNS_10InputEventE
  .type _ZN2pp15TouchInputEventC2ERKNS_10InputEventE, @function

#! file-offset 0x397c0
#! rip-offset  0x397c0
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC2ERKNS_10InputEventE:      #        0x397c0  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x397c0  5      
  movl %edi, %ebx                                   #  2     0x397c5  2      
  movq %r12, -0x10(%rsp)                            #  3     0x397c7  5      
  movq %r13, -0x8(%rsp)                             #  4     0x397cc  5      
  movl %ebx, %edi                                   #  5     0x397d1  2      
  subl $0x18, %esp                                  #  6     0x397d3  3      
  addq %r15, %rsp                                   #  7     0x397d6  3      
  movl %esi, %r12d                                  #  8     0x397d9  3      
  nop                                               #  9     0x397dc  1      
  nop                                               #  10    0x397dd  1      
  nop                                               #  11    0x397de  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x397df  5      
  movl %ebx, %ebx                                   #  13    0x397e4  2      
  movl $0x10020788, (%r15,%rbx,1)                   #  14    0x397e6  8      
  cmpb $0x0, 0xfff752b(%rip)                        #  15    0x397ee  7      
  je .L_39860                                       #  16    0x397f5  6      
  nop                                               #  17    0x397fb  1      
.L_39820:                                           #        0x397fc  0      
  movl 0xfff7526(%rip), %eax                        #  18    0x397fc  6      
  testq %rax, %rax                                  #  19    0x39802  3      
  jne .L_39900                                      #  20    0x39805  6      
  xchgw %ax, %ax                                    #  21    0x3980b  3      
  nop                                               #  22    0x3980e  1      
.L_39840:                                           #        0x3980f  0      
  movq (%rsp), %rbx                                 #  23    0x3980f  4      
  movq 0x8(%rsp), %r12                              #  24    0x39813  5      
  movq 0x10(%rsp), %r13                             #  25    0x39818  5      
  addl $0x18, %esp                                  #  26    0x3981d  3      
  addq %r15, %rsp                                   #  27    0x39820  3      
  popq %r11                                         #  28    0x39823  3      
  andl $0xffffffe0, %r11d                           #  29    0x39826  7      
  addq %r15, %r11                                   #  30    0x3982d  3      
  jmpq %r11                                         #  31    0x39830  3      
.L_39860:                                           #        0x39833  0      
  movl $0x10030d20, %edi                            #  32    0x39833  5      
  nop                                               #  33    0x39838  1      
  nop                                               #  34    0x39839  1      
  callq .__cxa_guard_acquire                        #  35    0x3983a  5      
  testl %eax, %eax                                  #  36    0x3983f  2      
  je .L_39820                                       #  37    0x39841  6      
  nop                                               #  38    0x39847  1      
  nop                                               #  39    0x39848  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x39849  5      
  movl %eax, %edi                                   #  41    0x3984e  2      
  movl $0x100206d8, %esi                            #  42    0x39850  5      
  nop                                               #  43    0x39855  1      
  nop                                               #  44    0x39856  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x39857  5      
  movl $0x10030d20, %edi                            #  46    0x3985c  5      
  movl %eax, 0xfff74c1(%rip)                        #  47    0x39861  6      
  nop                                               #  48    0x39867  1      
  nop                                               #  49    0x39868  1      
  callq .__cxa_guard_release                        #  50    0x39869  5      
  movl 0xfff74b4(%rip), %eax                        #  51    0x3986e  6      
  testq %rax, %rax                                  #  52    0x39874  3      
  je .L_39840                                       #  53    0x39877  6      
  xchgw %ax, %ax                                    #  54    0x3987d  3      
  nop                                               #  55    0x39880  1      
.L_39900:                                           #        0x39881  0      
  cmpb $0x0, 0xfff7498(%rip)                        #  56    0x39881  7      
  je .L_399c0                                       #  57    0x39888  6      
  nop                                               #  58    0x3988e  1      
  nop                                               #  59    0x3988f  1      
.L_39920:                                           #        0x39890  0      
  movl %eax, %eax                                   #  60    0x39890  2      
  movl 0x8(%r15,%rax,1), %eax                       #  61    0x39892  5      
  movl %r12d, %r12d                                 #  62    0x39897  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3989a  5      
  nop                                               #  64    0x3989f  1      
  andl $0xffffffe0, %eax                            #  65    0x398a0  5      
  addq %r15, %rax                                   #  66    0x398a5  3      
  callq %rax                                        #  67    0x398a8  2      
  testl %eax, %eax                                  #  68    0x398aa  2      
  je .L_39840                                       #  69    0x398ac  6      
  movl %r12d, %r12d                                 #  70    0x398b2  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x398b5  5      
  nop                                               #  72    0x398ba  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x398bb  5      
  movl %eax, %eax                                   #  74    0x398c0  2      
  movl %r13d, %edi                                  #  75    0x398c2  3      
  movl %eax, %eax                                   #  76    0x398c5  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x398c7  5      
  movl %eax, %eax                                   #  78    0x398cc  2      
  movl (%r15,%rax,1), %eax                          #  79    0x398ce  4      
  movl %eax, %eax                                   #  80    0x398d2  2      
  movl (%r15,%rax,1), %eax                          #  81    0x398d4  4      
  andl $0xffffffe0, %eax                            #  82    0x398d8  5      
  addq %r15, %rax                                   #  83    0x398dd  3      
  callq %rax                                        #  84    0x398e0  2      
  movl %r12d, %r12d                                 #  85    0x398e2  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x398e5  5      
  movl %ebx, %edi                                   #  87    0x398ea  2      
  xchgw %ax, %ax                                    #  88    0x398ec  3      
  nop                                               #  89    0x398ef  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x398f0  5      
  jmpq .L_39840                                     #  91    0x398f5  5      
  nop                                               #  92    0x398fa  1      
  nop                                               #  93    0x398fb  1      
.L_399c0:                                           #        0x398fc  0      
  movl $0x10030d20, %edi                            #  94    0x398fc  5      
  nop                                               #  95    0x39901  1      
  nop                                               #  96    0x39902  1      
  callq .__cxa_guard_acquire                        #  97    0x39903  5      
  testl %eax, %eax                                  #  98    0x39908  2      
  jne .L_39a20                                      #  99    0x3990a  6      
  nop                                               #  100   0x39910  1      
  nop                                               #  101   0x39911  1      
.L_39a00:                                           #        0x39912  0      
  movl 0xfff7410(%rip), %eax                        #  102   0x39912  6      
  jmpq .L_39920                                     #  103   0x39918  5      
  nop                                               #  104   0x3991d  1      
  nop                                               #  105   0x3991e  1      
.L_39a20:                                           #        0x3991f  0      
  nop                                               #  106   0x3991f  1      
  nop                                               #  107   0x39920  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x39921  5      
  movl %eax, %edi                                   #  109   0x39926  2      
  movl $0x100206d8, %esi                            #  110   0x39928  5      
  nop                                               #  111   0x3992d  1      
  nop                                               #  112   0x3992e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3992f  5      
  movl $0x10030d20, %edi                            #  114   0x39934  5      
  movl %eax, 0xfff73e9(%rip)                        #  115   0x39939  6      
  nop                                               #  116   0x3993f  1      
  nop                                               #  117   0x39940  1      
  callq .__cxa_guard_release                        #  118   0x39941  5      
  jmpq .L_39a00                                     #  119   0x39946  5      
  nop                                               #  120   0x3994b  1      
  nop                                               #  121   0x3994c  1      
.L_39aa0:                                           #        0x3994d  0      
  movl $0x10030d20, %edi                            #  122   0x3994d  5      
  movl %eax, %r12d                                  #  123   0x39952  3      
  nop                                               #  124   0x39955  1      
  nop                                               #  125   0x39956  1      
  callq .__cxa_guard_abort                          #  126   0x39957  5      
.L_39ac0:                                           #        0x3995c  0      
  movl %ebx, %edi                                   #  127   0x3995c  2      
  nop                                               #  128   0x3995e  1      
  nop                                               #  129   0x3995f  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x39960  5      
  movl %r12d, %edi                                  #  131   0x39965  3      
  nop                                               #  132   0x39968  1      
  nop                                               #  133   0x39969  1      
  callq ._Unwind_Resume                             #  134   0x3996a  5      
  movl %eax, %r12d                                  #  135   0x3996f  3      
  jmpq .L_39ac0                                     #  136   0x39972  5      
  nop                                               #  137   0x39977  1      
  nop                                               #  138   0x39978  1      
  jmpq .L_39aa0                                     #  139   0x39979  5      
  nop                                               #  140   0x3997e  1      
  nop                                               #  141   0x3997f  1      
  nop                                               #  142   0x39980  1      
                                                                             
.size _ZN2pp15TouchInputEventC2ERKNS_10InputEventE, .-_ZN2pp15TouchInputEventC2ERKNS_10InputEventE

