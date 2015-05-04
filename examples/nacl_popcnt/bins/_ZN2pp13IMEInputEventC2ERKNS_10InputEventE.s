  .text
  .globl _ZN2pp13IMEInputEventC2ERKNS_10InputEventE
  .type _ZN2pp13IMEInputEventC2ERKNS_10InputEventE, @function

#! file-offset 0x3dfe0
#! rip-offset  0x3dfe0
#! capacity    640 bytes

# Text                                                                       #  Line  RIP      Bytes  
._ZN2pp13IMEInputEventC2ERKNS_10InputEventE:                                 #        0x3dfe0  0      
  movq %rbx, -0x18(%rsp)                                                     #  1     0x3dfe0  5      
  movl %edi, %ebx                                                            #  2     0x3dfe5  2      
  movq %r12, -0x10(%rsp)                                                     #  3     0x3dfe7  5      
  movq %r13, -0x8(%rsp)                                                      #  4     0x3dfec  5      
  movl %ebx, %edi                                                            #  5     0x3dff1  2      
  subl $0x18, %esp                                                           #  6     0x3dff3  3      
  addq %r15, %rsp                                                            #  7     0x3dff6  3      
  movl %esi, %r12d                                                           #  8     0x3dff9  3      
  nop                                                                        #  9     0x3dffc  1      
  nop                                                                        #  10    0x3dffd  1      
  nop                                                                        #  11    0x3dffe  1      
  callq ._ZN2pp10InputEventC2Ev                                              #  12    0x3dfff  5      
  movl %ebx, %ebx                                                            #  13    0x3e004  2      
  movl $0x10020748, (%r15,%rbx,1)                                            #  14    0x3e006  8      
  xchgw %ax, %ax                                                             #  15    0x3e00e  3      
  nop                                                                        #  16    0x3e011  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v  #  17    0x3e012  5      
  testl %eax, %eax                                                           #  18    0x3e017  2      
  jne .L_3e080                                                               #  19    0x3e019  6      
  nop                                                                        #  20    0x3e01f  1      
  nop                                                                        #  21    0x3e020  1      
.L_3e060:                                                                    #        0x3e021  0      
  movq (%rsp), %rbx                                                          #  22    0x3e021  4      
  movq 0x8(%rsp), %r12                                                       #  23    0x3e025  5      
  movq 0x10(%rsp), %r13                                                      #  24    0x3e02a  5      
  addl $0x18, %esp                                                           #  25    0x3e02f  3      
  addq %r15, %rsp                                                            #  26    0x3e032  3      
  popq %r11                                                                  #  27    0x3e035  3      
  andl $0xffffffe0, %r11d                                                    #  28    0x3e038  7      
  addq %r15, %r11                                                            #  29    0x3e03f  3      
  jmpq %r11                                                                  #  30    0x3e042  3      
.L_3e080:                                                                    #        0x3e045  0      
  cmpb $0x0, 0xfff2cc4(%rip)                                                 #  31    0x3e045  7      
  je .L_3e140                                                                #  32    0x3e04c  6      
  nop                                                                        #  33    0x3e052  1      
  nop                                                                        #  34    0x3e053  1      
.L_3e0a0:                                                                    #        0x3e054  0      
  movl 0xfff2cbe(%rip), %eax                                                 #  35    0x3e054  6      
  movl %r12d, %r12d                                                          #  36    0x3e05a  3      
  movl 0x4(%r15,%r12,1), %edi                                                #  37    0x3e05d  5      
  movl %eax, %eax                                                            #  38    0x3e062  2      
  movl 0x4(%r15,%rax,1), %eax                                                #  39    0x3e064  5      
  nop                                                                        #  40    0x3e069  1      
  andl $0xffffffe0, %eax                                                     #  41    0x3e06a  5      
  addq %r15, %rax                                                            #  42    0x3e06f  3      
  callq %rax                                                                 #  43    0x3e072  2      
  testl %eax, %eax                                                           #  44    0x3e074  2      
  je .L_3e060                                                                #  45    0x3e076  6      
  movl %r12d, %r12d                                                          #  46    0x3e07c  3      
  movl 0x4(%r15,%r12,1), %r13d                                               #  47    0x3e07f  5      
  nop                                                                        #  48    0x3e084  1      
  callq ._ZN2pp6Module3GetEv                                                 #  49    0x3e085  5      
  movl %eax, %eax                                                            #  50    0x3e08a  2      
  movl %r13d, %edi                                                           #  51    0x3e08c  3      
  movl %eax, %eax                                                            #  52    0x3e08f  2      
  movl 0x24(%r15,%rax,1), %eax                                               #  53    0x3e091  5      
  movl %eax, %eax                                                            #  54    0x3e096  2      
  movl (%r15,%rax,1), %eax                                                   #  55    0x3e098  4      
  movl %eax, %eax                                                            #  56    0x3e09c  2      
  movl (%r15,%rax,1), %eax                                                   #  57    0x3e09e  4      
  andl $0xffffffe0, %eax                                                     #  58    0x3e0a2  5      
  addq %r15, %rax                                                            #  59    0x3e0a7  3      
  callq %rax                                                                 #  60    0x3e0aa  2      
  movl %r12d, %r12d                                                          #  61    0x3e0ac  3      
  movl 0x4(%r15,%r12,1), %esi                                                #  62    0x3e0af  5      
  movl %ebx, %edi                                                            #  63    0x3e0b4  2      
  xchgw %ax, %ax                                                             #  64    0x3e0b6  3      
  nop                                                                        #  65    0x3e0b9  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                           #  66    0x3e0ba  5      
  jmpq .L_3e060                                                              #  67    0x3e0bf  5      
  nop                                                                        #  68    0x3e0c4  1      
  nop                                                                        #  69    0x3e0c5  1      
.L_3e140:                                                                    #        0x3e0c6  0      
  movl $0x10030d10, %edi                                                     #  70    0x3e0c6  5      
  nop                                                                        #  71    0x3e0cb  1      
  nop                                                                        #  72    0x3e0cc  1      
  callq .__cxa_guard_acquire                                                 #  73    0x3e0cd  5      
  testl %eax, %eax                                                           #  74    0x3e0d2  2      
  je .L_3e0a0                                                                #  75    0x3e0d4  6      
  nop                                                                        #  76    0x3e0da  1      
  nop                                                                        #  77    0x3e0db  1      
  callq ._ZN2pp6Module3GetEv                                                 #  78    0x3e0dc  5      
  movl %eax, %edi                                                            #  79    0x3e0e1  2      
  movl $0x10020674, %esi                                                     #  80    0x3e0e3  5      
  nop                                                                        #  81    0x3e0e8  1      
  nop                                                                        #  82    0x3e0e9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                              #  83    0x3e0ea  5      
  movl $0x10030d10, %edi                                                     #  84    0x3e0ef  5      
  movl %eax, 0xfff2c1e(%rip)                                                 #  85    0x3e0f4  6      
  nop                                                                        #  86    0x3e0fa  1      
  nop                                                                        #  87    0x3e0fb  1      
  callq .__cxa_guard_release                                                 #  88    0x3e0fc  5      
  jmpq .L_3e0a0                                                              #  89    0x3e101  5      
  nop                                                                        #  90    0x3e106  1      
  nop                                                                        #  91    0x3e107  1      
  movl $0x10030d10, %edi                                                     #  92    0x3e108  5      
  movl %eax, %r12d                                                           #  93    0x3e10d  3      
  nop                                                                        #  94    0x3e110  1      
  nop                                                                        #  95    0x3e111  1      
  callq .__cxa_guard_abort                                                   #  96    0x3e112  5      
.L_3e200:                                                                    #        0x3e117  0      
  movl %ebx, %edi                                                            #  97    0x3e117  2      
  nop                                                                        #  98    0x3e119  1      
  nop                                                                        #  99    0x3e11a  1      
  callq ._ZN2pp10InputEventD2Ev                                              #  100   0x3e11b  5      
  movl %r12d, %edi                                                           #  101   0x3e120  3      
  nop                                                                        #  102   0x3e123  1      
  nop                                                                        #  103   0x3e124  1      
  callq ._Unwind_Resume                                                      #  104   0x3e125  5      
  movl %eax, %r12d                                                           #  105   0x3e12a  3      
  jmpq .L_3e200                                                              #  106   0x3e12d  5      
  nop                                                                        #  107   0x3e132  1      
  nop                                                                        #  108   0x3e133  1      
  nop                                                                        #  109   0x3e134  1      
                                                                                                      
.size _ZN2pp13IMEInputEventC2ERKNS_10InputEventE, .-_ZN2pp13IMEInputEventC2ERKNS_10InputEventE

