  .text
  .globl _ZN2pp10InputEventC2Ei
  .type _ZN2pp10InputEventC2Ei, @function

#! file-offset 0x36400
#! rip-offset  0x36400
#! capacity    864 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp10InputEventC2Ei:                            #        0x36400  0      
  pushq %r12                                        #  1     0x36400  3      
  movl %esi, %r12d                                  #  2     0x36403  3      
  pushq %rbx                                        #  3     0x36406  2      
  movl %edi, %ebx                                   #  4     0x36408  2      
  movl %ebx, %edi                                   #  5     0x3640a  2      
  subl $0x8, %esp                                   #  6     0x3640c  3      
  addq %r15, %rsp                                   #  7     0x3640f  3      
  nop                                               #  8     0x36412  1      
  callq ._ZN2pp8ResourceC2Ev                        #  9     0x36413  5      
  movl %ebx, %ebx                                   #  10    0x36418  2      
  movl $0x10020718, (%r15,%rbx,1)                   #  11    0x3641a  8      
  cmpb $0x0, 0xfffa947(%rip)                        #  12    0x36422  7      
  je .L_36480                                       #  13    0x36429  6      
  nop                                               #  14    0x3642f  1      
.L_36440:                                           #        0x36430  0      
  movl 0xfffa942(%rip), %eax                        #  15    0x36430  6      
  testq %rax, %rax                                  #  16    0x36436  3      
  jne .L_36520                                      #  17    0x36439  6      
  xchgw %ax, %ax                                    #  18    0x3643f  3      
  nop                                               #  19    0x36442  1      
.L_36460:                                           #        0x36443  0      
  addl $0x8, %esp                                   #  20    0x36443  3      
  addq %r15, %rsp                                   #  21    0x36446  3      
  popq %rbx                                         #  22    0x36449  2      
  popq %r12                                         #  23    0x3644b  3      
  popq %r11                                         #  24    0x3644e  3      
  andl $0xffffffe0, %r11d                           #  25    0x36451  7      
  addq %r15, %r11                                   #  26    0x36458  3      
  jmpq %r11                                         #  27    0x3645b  3      
  nop                                               #  28    0x3645e  1      
.L_36480:                                           #        0x3645f  0      
  movl $0x10030d70, %edi                            #  29    0x3645f  5      
  nop                                               #  30    0x36464  1      
  nop                                               #  31    0x36465  1      
  callq .__cxa_guard_acquire                        #  32    0x36466  5      
  testl %eax, %eax                                  #  33    0x3646b  2      
  je .L_36440                                       #  34    0x3646d  6      
  nop                                               #  35    0x36473  1      
  nop                                               #  36    0x36474  1      
  callq ._ZN2pp6Module3GetEv                        #  37    0x36475  5      
  movl %eax, %edi                                   #  38    0x3647a  2      
  movl $0x100202c8, %esi                            #  39    0x3647c  5      
  nop                                               #  40    0x36481  1      
  nop                                               #  41    0x36482  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  42    0x36483  5      
  movl $0x10030d70, %edi                            #  43    0x36488  5      
  movl %eax, 0xfffa8e5(%rip)                        #  44    0x3648d  6      
  nop                                               #  45    0x36493  1      
  nop                                               #  46    0x36494  1      
  callq .__cxa_guard_release                        #  47    0x36495  5      
  movl 0xfffa8d8(%rip), %eax                        #  48    0x3649a  6      
  testq %rax, %rax                                  #  49    0x364a0  3      
  je .L_36460                                       #  50    0x364a3  6      
  xchgw %ax, %ax                                    #  51    0x364a9  3      
  nop                                               #  52    0x364ac  1      
.L_36520:                                           #        0x364ad  0      
  cmpb $0x0, 0xfffa8bc(%rip)                        #  53    0x364ad  7      
  je .L_365e0                                       #  54    0x364b4  6      
  nop                                               #  55    0x364ba  1      
  nop                                               #  56    0x364bb  1      
.L_36540:                                           #        0x364bc  0      
  movl %eax, %eax                                   #  57    0x364bc  2      
  movl 0xc(%r15,%rax,1), %eax                       #  58    0x364be  5      
  movl %r12d, %edi                                  #  59    0x364c3  3      
  nop                                               #  60    0x364c6  1      
  andl $0xffffffe0, %eax                            #  61    0x364c7  5      
  addq %r15, %rax                                   #  62    0x364cc  3      
  callq %rax                                        #  63    0x364cf  2      
  testl %eax, %eax                                  #  64    0x364d1  2      
  je .L_36460                                       #  65    0x364d3  6      
  nop                                               #  66    0x364d9  1      
  nop                                               #  67    0x364da  1      
  callq ._ZN2pp6Module3GetEv                        #  68    0x364db  5      
  movl %eax, %eax                                   #  69    0x364e0  2      
  movl %r12d, %edi                                  #  70    0x364e2  3      
  movl %eax, %eax                                   #  71    0x364e5  2      
  movl 0x24(%r15,%rax,1), %eax                      #  72    0x364e7  5      
  movl %eax, %eax                                   #  73    0x364ec  2      
  movl (%r15,%rax,1), %eax                          #  74    0x364ee  4      
  movl %eax, %eax                                   #  75    0x364f2  2      
  movl (%r15,%rax,1), %eax                          #  76    0x364f4  4      
  andl $0xffffffe0, %eax                            #  77    0x364f8  5      
  addq %r15, %rax                                   #  78    0x364fd  3      
  callq %rax                                        #  79    0x36500  2      
  movl %r12d, %esi                                  #  80    0x36502  3      
  movl %ebx, %edi                                   #  81    0x36505  2      
  nop                                               #  82    0x36507  1      
  nop                                               #  83    0x36508  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  84    0x36509  5      
  addl $0x8, %esp                                   #  85    0x3650e  3      
  addq %r15, %rsp                                   #  86    0x36511  3      
  popq %rbx                                         #  87    0x36514  2      
  popq %r12                                         #  88    0x36516  3      
  popq %r11                                         #  89    0x36519  3      
  andl $0xffffffe0, %r11d                           #  90    0x3651c  7      
  addq %r15, %r11                                   #  91    0x36523  3      
  jmpq %r11                                         #  92    0x36526  3      
  nop                                               #  93    0x36529  1      
.L_365e0:                                           #        0x3652a  0      
  movl $0x10030d70, %edi                            #  94    0x3652a  5      
  nop                                               #  95    0x3652f  1      
  nop                                               #  96    0x36530  1      
  callq .__cxa_guard_acquire                        #  97    0x36531  5      
  testl %eax, %eax                                  #  98    0x36536  2      
  jne .L_36640                                      #  99    0x36538  6      
  nop                                               #  100   0x3653e  1      
  nop                                               #  101   0x3653f  1      
.L_36620:                                           #        0x36540  0      
  movl 0xfffa832(%rip), %eax                        #  102   0x36540  6      
  jmpq .L_36540                                     #  103   0x36546  5      
  nop                                               #  104   0x3654b  1      
  nop                                               #  105   0x3654c  1      
.L_36640:                                           #        0x3654d  0      
  nop                                               #  106   0x3654d  1      
  nop                                               #  107   0x3654e  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3654f  5      
  movl %eax, %edi                                   #  109   0x36554  2      
  movl $0x100202c8, %esi                            #  110   0x36556  5      
  nop                                               #  111   0x3655b  1      
  nop                                               #  112   0x3655c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3655d  5      
  movl $0x10030d70, %edi                            #  114   0x36562  5      
  movl %eax, 0xfffa80b(%rip)                        #  115   0x36567  6      
  nop                                               #  116   0x3656d  1      
  nop                                               #  117   0x3656e  1      
  callq .__cxa_guard_release                        #  118   0x3656f  5      
  jmpq .L_36620                                     #  119   0x36574  5      
  nop                                               #  120   0x36579  1      
  nop                                               #  121   0x3657a  1      
.L_366c0:                                           #        0x3657b  0      
  movl $0x10030d70, %edi                            #  122   0x3657b  5      
  movl %eax, %r12d                                  #  123   0x36580  3      
  nop                                               #  124   0x36583  1      
  nop                                               #  125   0x36584  1      
  callq .__cxa_guard_abort                          #  126   0x36585  5      
.L_366e0:                                           #        0x3658a  0      
  movl %ebx, %edi                                   #  127   0x3658a  2      
  nop                                               #  128   0x3658c  1      
  nop                                               #  129   0x3658d  1      
  callq ._ZN2pp8ResourceD2Ev                        #  130   0x3658e  5      
  movl %r12d, %edi                                  #  131   0x36593  3      
  nop                                               #  132   0x36596  1      
  nop                                               #  133   0x36597  1      
  callq ._Unwind_Resume                             #  134   0x36598  5      
  movl %eax, %r12d                                  #  135   0x3659d  3      
  jmpq .L_366e0                                     #  136   0x365a0  5      
  nop                                               #  137   0x365a5  1      
  nop                                               #  138   0x365a6  1      
  jmpq .L_366c0                                     #  139   0x365a7  5      
  nop                                               #  140   0x365ac  1      
  nop                                               #  141   0x365ad  1      
  nop                                               #  142   0x365ae  1      
                                                                             
.size _ZN2pp10InputEventC2Ei, .-_ZN2pp10InputEventC2Ei

