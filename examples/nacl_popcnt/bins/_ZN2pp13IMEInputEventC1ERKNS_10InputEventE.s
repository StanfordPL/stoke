  .text
  .globl _ZN2pp13IMEInputEventC1ERKNS_10InputEventE
  .type _ZN2pp13IMEInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x3dbe0
#! rip-offset  0x3dbe0
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp13IMEInputEventC1ERKNS_10InputEventE:        #        0x3dbe0  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x3dbe0  5      
  movl %edi, %ebx                                   #  2     0x3dbe5  2      
  movq %r12, -0x10(%rsp)                            #  3     0x3dbe7  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3dbec  5      
  movl %ebx, %edi                                   #  5     0x3dbf1  2      
  subl $0x18, %esp                                  #  6     0x3dbf3  3      
  addq %r15, %rsp                                   #  7     0x3dbf6  3      
  movl %esi, %r12d                                  #  8     0x3dbf9  3      
  nop                                               #  9     0x3dbfc  1      
  nop                                               #  10    0x3dbfd  1      
  nop                                               #  11    0x3dbfe  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3dbff  5      
  movl %ebx, %ebx                                   #  13    0x3dc04  2      
  movl $0x10020748, (%r15,%rbx,1)                   #  14    0x3dc06  8      
  cmpb $0x0, 0xfff30fb(%rip)                        #  15    0x3dc0e  7      
  je .L_3dc80                                       #  16    0x3dc15  6      
  nop                                               #  17    0x3dc1b  1      
.L_3dc40:                                           #        0x3dc1c  0      
  movl 0xfff30f6(%rip), %eax                        #  18    0x3dc1c  6      
  testq %rax, %rax                                  #  19    0x3dc22  3      
  jne .L_3dd20                                      #  20    0x3dc25  6      
  xchgw %ax, %ax                                    #  21    0x3dc2b  3      
  nop                                               #  22    0x3dc2e  1      
.L_3dc60:                                           #        0x3dc2f  0      
  movq (%rsp), %rbx                                 #  23    0x3dc2f  4      
  movq 0x8(%rsp), %r12                              #  24    0x3dc33  5      
  movq 0x10(%rsp), %r13                             #  25    0x3dc38  5      
  addl $0x18, %esp                                  #  26    0x3dc3d  3      
  addq %r15, %rsp                                   #  27    0x3dc40  3      
  popq %r11                                         #  28    0x3dc43  3      
  andl $0xffffffe0, %r11d                           #  29    0x3dc46  7      
  addq %r15, %r11                                   #  30    0x3dc4d  3      
  jmpq %r11                                         #  31    0x3dc50  3      
.L_3dc80:                                           #        0x3dc53  0      
  movl $0x10030d10, %edi                            #  32    0x3dc53  5      
  nop                                               #  33    0x3dc58  1      
  nop                                               #  34    0x3dc59  1      
  callq .__cxa_guard_acquire                        #  35    0x3dc5a  5      
  testl %eax, %eax                                  #  36    0x3dc5f  2      
  je .L_3dc40                                       #  37    0x3dc61  6      
  nop                                               #  38    0x3dc67  1      
  nop                                               #  39    0x3dc68  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x3dc69  5      
  movl %eax, %edi                                   #  41    0x3dc6e  2      
  movl $0x10020674, %esi                            #  42    0x3dc70  5      
  nop                                               #  43    0x3dc75  1      
  nop                                               #  44    0x3dc76  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x3dc77  5      
  movl $0x10030d10, %edi                            #  46    0x3dc7c  5      
  movl %eax, 0xfff3091(%rip)                        #  47    0x3dc81  6      
  nop                                               #  48    0x3dc87  1      
  nop                                               #  49    0x3dc88  1      
  callq .__cxa_guard_release                        #  50    0x3dc89  5      
  movl 0xfff3084(%rip), %eax                        #  51    0x3dc8e  6      
  testq %rax, %rax                                  #  52    0x3dc94  3      
  je .L_3dc60                                       #  53    0x3dc97  6      
  xchgw %ax, %ax                                    #  54    0x3dc9d  3      
  nop                                               #  55    0x3dca0  1      
.L_3dd20:                                           #        0x3dca1  0      
  cmpb $0x0, 0xfff3068(%rip)                        #  56    0x3dca1  7      
  je .L_3dde0                                       #  57    0x3dca8  6      
  nop                                               #  58    0x3dcae  1      
  nop                                               #  59    0x3dcaf  1      
.L_3dd40:                                           #        0x3dcb0  0      
  movl %eax, %eax                                   #  60    0x3dcb0  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x3dcb2  5      
  movl %r12d, %r12d                                 #  62    0x3dcb7  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3dcba  5      
  nop                                               #  64    0x3dcbf  1      
  andl $0xffffffe0, %eax                            #  65    0x3dcc0  5      
  addq %r15, %rax                                   #  66    0x3dcc5  3      
  callq %rax                                        #  67    0x3dcc8  2      
  testl %eax, %eax                                  #  68    0x3dcca  2      
  je .L_3dc60                                       #  69    0x3dccc  6      
  movl %r12d, %r12d                                 #  70    0x3dcd2  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x3dcd5  5      
  nop                                               #  72    0x3dcda  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3dcdb  5      
  movl %eax, %eax                                   #  74    0x3dce0  2      
  movl %r13d, %edi                                  #  75    0x3dce2  3      
  movl %eax, %eax                                   #  76    0x3dce5  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x3dce7  5      
  movl %eax, %eax                                   #  78    0x3dcec  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3dcee  4      
  movl %eax, %eax                                   #  80    0x3dcf2  2      
  movl (%r15,%rax,1), %eax                          #  81    0x3dcf4  4      
  andl $0xffffffe0, %eax                            #  82    0x3dcf8  5      
  addq %r15, %rax                                   #  83    0x3dcfd  3      
  callq %rax                                        #  84    0x3dd00  2      
  movl %r12d, %r12d                                 #  85    0x3dd02  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x3dd05  5      
  movl %ebx, %edi                                   #  87    0x3dd0a  2      
  xchgw %ax, %ax                                    #  88    0x3dd0c  3      
  nop                                               #  89    0x3dd0f  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x3dd10  5      
  jmpq .L_3dc60                                     #  91    0x3dd15  5      
  nop                                               #  92    0x3dd1a  1      
  nop                                               #  93    0x3dd1b  1      
.L_3dde0:                                           #        0x3dd1c  0      
  movl $0x10030d10, %edi                            #  94    0x3dd1c  5      
  nop                                               #  95    0x3dd21  1      
  nop                                               #  96    0x3dd22  1      
  callq .__cxa_guard_acquire                        #  97    0x3dd23  5      
  testl %eax, %eax                                  #  98    0x3dd28  2      
  jne .L_3de40                                      #  99    0x3dd2a  6      
  nop                                               #  100   0x3dd30  1      
  nop                                               #  101   0x3dd31  1      
.L_3de20:                                           #        0x3dd32  0      
  movl 0xfff2fe0(%rip), %eax                        #  102   0x3dd32  6      
  jmpq .L_3dd40                                     #  103   0x3dd38  5      
  nop                                               #  104   0x3dd3d  1      
  nop                                               #  105   0x3dd3e  1      
.L_3de40:                                           #        0x3dd3f  0      
  nop                                               #  106   0x3dd3f  1      
  nop                                               #  107   0x3dd40  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3dd41  5      
  movl %eax, %edi                                   #  109   0x3dd46  2      
  movl $0x10020674, %esi                            #  110   0x3dd48  5      
  nop                                               #  111   0x3dd4d  1      
  nop                                               #  112   0x3dd4e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3dd4f  5      
  movl $0x10030d10, %edi                            #  114   0x3dd54  5      
  movl %eax, 0xfff2fb9(%rip)                        #  115   0x3dd59  6      
  nop                                               #  116   0x3dd5f  1      
  nop                                               #  117   0x3dd60  1      
  callq .__cxa_guard_release                        #  118   0x3dd61  5      
  jmpq .L_3de20                                     #  119   0x3dd66  5      
  nop                                               #  120   0x3dd6b  1      
  nop                                               #  121   0x3dd6c  1      
.L_3dec0:                                           #        0x3dd6d  0      
  movl $0x10030d10, %edi                            #  122   0x3dd6d  5      
  movl %eax, %r12d                                  #  123   0x3dd72  3      
  nop                                               #  124   0x3dd75  1      
  nop                                               #  125   0x3dd76  1      
  callq .__cxa_guard_abort                          #  126   0x3dd77  5      
.L_3dee0:                                           #        0x3dd7c  0      
  movl %ebx, %edi                                   #  127   0x3dd7c  2      
  nop                                               #  128   0x3dd7e  1      
  nop                                               #  129   0x3dd7f  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x3dd80  5      
  movl %r12d, %edi                                  #  131   0x3dd85  3      
  nop                                               #  132   0x3dd88  1      
  nop                                               #  133   0x3dd89  1      
  callq ._Unwind_Resume                             #  134   0x3dd8a  5      
  movl %eax, %r12d                                  #  135   0x3dd8f  3      
  jmpq .L_3dee0                                     #  136   0x3dd92  5      
  nop                                               #  137   0x3dd97  1      
  nop                                               #  138   0x3dd98  1      
  jmpq .L_3dec0                                     #  139   0x3dd99  5      
  nop                                               #  140   0x3dd9e  1      
  nop                                               #  141   0x3dd9f  1      
  nop                                               #  142   0x3dda0  1      
                                                                             
.size _ZN2pp13IMEInputEventC1ERKNS_10InputEventE, .-_ZN2pp13IMEInputEventC1ERKNS_10InputEventE

