  .text
  .globl _ZN2pp13IMEInputEventC2ERKNS_10InputEventE
  .type _ZN2pp13IMEInputEventC2ERKNS_10InputEventE, @function

#! file-offset 0x3df40
#! rip-offset  0x3df40
#! capacity    640 bytes

# Text                                                                       #  Line  RIP      Bytes  
._ZN2pp13IMEInputEventC2ERKNS_10InputEventE:                                 #        0x3df40  0      
  movq %rbx, -0x18(%rsp)                                                     #  1     0x3df40  5      
  movl %edi, %ebx                                                            #  2     0x3df45  2      
  movq %r12, -0x10(%rsp)                                                     #  3     0x3df47  5      
  movq %r13, -0x8(%rsp)                                                      #  4     0x3df4c  5      
  movl %ebx, %edi                                                            #  5     0x3df51  2      
  subl $0x18, %esp                                                           #  6     0x3df53  3      
  addq %r15, %rsp                                                            #  7     0x3df56  3      
  movl %esi, %r12d                                                           #  8     0x3df59  3      
  nop                                                                        #  9     0x3df5c  1      
  nop                                                                        #  10    0x3df5d  1      
  nop                                                                        #  11    0x3df5e  1      
  callq ._ZN2pp10InputEventC2Ev                                              #  12    0x3df5f  5      
  movl %ebx, %ebx                                                            #  13    0x3df64  2      
  movl $0x10020748, (%r15,%rbx,1)                                            #  14    0x3df66  8      
  xchgw %ax, %ax                                                             #  15    0x3df6e  3      
  nop                                                                        #  16    0x3df71  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v  #  17    0x3df72  5      
  testl %eax, %eax                                                           #  18    0x3df77  2      
  jne .L_3dfe0                                                               #  19    0x3df79  6      
  nop                                                                        #  20    0x3df7f  1      
  nop                                                                        #  21    0x3df80  1      
.L_3dfc0:                                                                    #        0x3df81  0      
  movq (%rsp), %rbx                                                          #  22    0x3df81  4      
  movq 0x8(%rsp), %r12                                                       #  23    0x3df85  5      
  movq 0x10(%rsp), %r13                                                      #  24    0x3df8a  5      
  addl $0x18, %esp                                                           #  25    0x3df8f  3      
  addq %r15, %rsp                                                            #  26    0x3df92  3      
  popq %r11                                                                  #  27    0x3df95  3      
  andl $0xffffffe0, %r11d                                                    #  28    0x3df98  7      
  addq %r15, %r11                                                            #  29    0x3df9f  3      
  jmpq %r11                                                                  #  30    0x3dfa2  3      
.L_3dfe0:                                                                    #        0x3dfa5  0      
  cmpb $0x0, 0xfff2d64(%rip)                                                 #  31    0x3dfa5  7      
  je .L_3e0a0                                                                #  32    0x3dfac  6      
  nop                                                                        #  33    0x3dfb2  1      
  nop                                                                        #  34    0x3dfb3  1      
.L_3e000:                                                                    #        0x3dfb4  0      
  movl 0xfff2d5e(%rip), %eax                                                 #  35    0x3dfb4  6      
  movl %r12d, %r12d                                                          #  36    0x3dfba  3      
  movl 0x4(%r15,%r12,1), %edi                                                #  37    0x3dfbd  5      
  movl %eax, %eax                                                            #  38    0x3dfc2  2      
  movl 0x4(%r15,%rax,1), %eax                                                #  39    0x3dfc4  5      
  nop                                                                        #  40    0x3dfc9  1      
  andl $0xffffffe0, %eax                                                     #  41    0x3dfca  5      
  addq %r15, %rax                                                            #  42    0x3dfcf  3      
  callq %rax                                                                 #  43    0x3dfd2  2      
  testl %eax, %eax                                                           #  44    0x3dfd4  2      
  je .L_3dfc0                                                                #  45    0x3dfd6  6      
  movl %r12d, %r12d                                                          #  46    0x3dfdc  3      
  movl 0x4(%r15,%r12,1), %r13d                                               #  47    0x3dfdf  5      
  nop                                                                        #  48    0x3dfe4  1      
  callq ._ZN2pp6Module3GetEv                                                 #  49    0x3dfe5  5      
  movl %eax, %eax                                                            #  50    0x3dfea  2      
  movl %r13d, %edi                                                           #  51    0x3dfec  3      
  movl %eax, %eax                                                            #  52    0x3dfef  2      
  movl 0x24(%r15,%rax,1), %eax                                               #  53    0x3dff1  5      
  movl %eax, %eax                                                            #  54    0x3dff6  2      
  movl (%r15,%rax,1), %eax                                                   #  55    0x3dff8  4      
  movl %eax, %eax                                                            #  56    0x3dffc  2      
  movl (%r15,%rax,1), %eax                                                   #  57    0x3dffe  4      
  andl $0xffffffe0, %eax                                                     #  58    0x3e002  5      
  addq %r15, %rax                                                            #  59    0x3e007  3      
  callq %rax                                                                 #  60    0x3e00a  2      
  movl %r12d, %r12d                                                          #  61    0x3e00c  3      
  movl 0x4(%r15,%r12,1), %esi                                                #  62    0x3e00f  5      
  movl %ebx, %edi                                                            #  63    0x3e014  2      
  xchgw %ax, %ax                                                             #  64    0x3e016  3      
  nop                                                                        #  65    0x3e019  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                           #  66    0x3e01a  5      
  jmpq .L_3dfc0                                                              #  67    0x3e01f  5      
  nop                                                                        #  68    0x3e024  1      
  nop                                                                        #  69    0x3e025  1      
.L_3e0a0:                                                                    #        0x3e026  0      
  movl $0x10030d10, %edi                                                     #  70    0x3e026  5      
  nop                                                                        #  71    0x3e02b  1      
  nop                                                                        #  72    0x3e02c  1      
  callq .__cxa_guard_acquire                                                 #  73    0x3e02d  5      
  testl %eax, %eax                                                           #  74    0x3e032  2      
  je .L_3e000                                                                #  75    0x3e034  6      
  nop                                                                        #  76    0x3e03a  1      
  nop                                                                        #  77    0x3e03b  1      
  callq ._ZN2pp6Module3GetEv                                                 #  78    0x3e03c  5      
  movl %eax, %edi                                                            #  79    0x3e041  2      
  movl $0x10020674, %esi                                                     #  80    0x3e043  5      
  nop                                                                        #  81    0x3e048  1      
  nop                                                                        #  82    0x3e049  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                              #  83    0x3e04a  5      
  movl $0x10030d10, %edi                                                     #  84    0x3e04f  5      
  movl %eax, 0xfff2cbe(%rip)                                                 #  85    0x3e054  6      
  nop                                                                        #  86    0x3e05a  1      
  nop                                                                        #  87    0x3e05b  1      
  callq .__cxa_guard_release                                                 #  88    0x3e05c  5      
  jmpq .L_3e000                                                              #  89    0x3e061  5      
  nop                                                                        #  90    0x3e066  1      
  nop                                                                        #  91    0x3e067  1      
  movl $0x10030d10, %edi                                                     #  92    0x3e068  5      
  movl %eax, %r12d                                                           #  93    0x3e06d  3      
  nop                                                                        #  94    0x3e070  1      
  nop                                                                        #  95    0x3e071  1      
  callq .__cxa_guard_abort                                                   #  96    0x3e072  5      
.L_3e160:                                                                    #        0x3e077  0      
  movl %ebx, %edi                                                            #  97    0x3e077  2      
  nop                                                                        #  98    0x3e079  1      
  nop                                                                        #  99    0x3e07a  1      
  callq ._ZN2pp10InputEventD2Ev                                              #  100   0x3e07b  5      
  movl %r12d, %edi                                                           #  101   0x3e080  3      
  nop                                                                        #  102   0x3e083  1      
  nop                                                                        #  103   0x3e084  1      
  callq ._Unwind_Resume                                                      #  104   0x3e085  5      
  movl %eax, %r12d                                                           #  105   0x3e08a  3      
  jmpq .L_3e160                                                              #  106   0x3e08d  5      
  nop                                                                        #  107   0x3e092  1      
  nop                                                                        #  108   0x3e093  1      
  nop                                                                        #  109   0x3e094  1      
                                                                                                      
.size _ZN2pp13IMEInputEventC2ERKNS_10InputEventE, .-_ZN2pp13IMEInputEventC2ERKNS_10InputEventE

