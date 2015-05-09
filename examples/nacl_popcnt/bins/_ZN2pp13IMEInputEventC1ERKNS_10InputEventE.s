  .text
  .globl _ZN2pp13IMEInputEventC1ERKNS_10InputEventE
  .type _ZN2pp13IMEInputEventC1ERKNS_10InputEventE, @function

#! file-offset 0x3dbc0
#! rip-offset  0x3dbc0
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp13IMEInputEventC1ERKNS_10InputEventE:        #        0x3dbc0  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x3dbc0  5      
  movl %edi, %ebx                                   #  2     0x3dbc5  2      
  movq %r12, -0x10(%rsp)                            #  3     0x3dbc7  5      
  movq %r13, -0x8(%rsp)                             #  4     0x3dbcc  5      
  movl %ebx, %edi                                   #  5     0x3dbd1  2      
  subl $0x18, %esp                                  #  6     0x3dbd3  3      
  addq %r15, %rsp                                   #  7     0x3dbd6  3      
  movl %esi, %r12d                                  #  8     0x3dbd9  3      
  nop                                               #  9     0x3dbdc  1      
  nop                                               #  10    0x3dbdd  1      
  nop                                               #  11    0x3dbde  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x3dbdf  5      
  movl %ebx, %ebx                                   #  13    0x3dbe4  2      
  movl $0x10020748, (%r15,%rbx,1)                   #  14    0x3dbe6  8      
  cmpb $0x0, 0xfff311b(%rip)                        #  15    0x3dbee  7      
  je .L_3dc60                                       #  16    0x3dbf5  6      
  nop                                               #  17    0x3dbfb  1      
.L_3dc20:                                           #        0x3dbfc  0      
  movl 0xfff3116(%rip), %eax                        #  18    0x3dbfc  6      
  testq %rax, %rax                                  #  19    0x3dc02  3      
  jne .L_3dd00                                      #  20    0x3dc05  6      
  xchgw %ax, %ax                                    #  21    0x3dc0b  3      
  nop                                               #  22    0x3dc0e  1      
.L_3dc40:                                           #        0x3dc0f  0      
  movq (%rsp), %rbx                                 #  23    0x3dc0f  4      
  movq 0x8(%rsp), %r12                              #  24    0x3dc13  5      
  movq 0x10(%rsp), %r13                             #  25    0x3dc18  5      
  addl $0x18, %esp                                  #  26    0x3dc1d  3      
  addq %r15, %rsp                                   #  27    0x3dc20  3      
  popq %r11                                         #  28    0x3dc23  3      
  andl $0xffffffe0, %r11d                           #  29    0x3dc26  7      
  addq %r15, %r11                                   #  30    0x3dc2d  3      
  jmpq %r11                                         #  31    0x3dc30  3      
.L_3dc60:                                           #        0x3dc33  0      
  movl $0x10030d10, %edi                            #  32    0x3dc33  5      
  nop                                               #  33    0x3dc38  1      
  nop                                               #  34    0x3dc39  1      
  callq .__cxa_guard_acquire                        #  35    0x3dc3a  5      
  testl %eax, %eax                                  #  36    0x3dc3f  2      
  je .L_3dc20                                       #  37    0x3dc41  6      
  nop                                               #  38    0x3dc47  1      
  nop                                               #  39    0x3dc48  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x3dc49  5      
  movl %eax, %edi                                   #  41    0x3dc4e  2      
  movl $0x10020674, %esi                            #  42    0x3dc50  5      
  nop                                               #  43    0x3dc55  1      
  nop                                               #  44    0x3dc56  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x3dc57  5      
  movl $0x10030d10, %edi                            #  46    0x3dc5c  5      
  movl %eax, 0xfff30b1(%rip)                        #  47    0x3dc61  6      
  nop                                               #  48    0x3dc67  1      
  nop                                               #  49    0x3dc68  1      
  callq .__cxa_guard_release                        #  50    0x3dc69  5      
  movl 0xfff30a4(%rip), %eax                        #  51    0x3dc6e  6      
  testq %rax, %rax                                  #  52    0x3dc74  3      
  je .L_3dc40                                       #  53    0x3dc77  6      
  xchgw %ax, %ax                                    #  54    0x3dc7d  3      
  nop                                               #  55    0x3dc80  1      
.L_3dd00:                                           #        0x3dc81  0      
  cmpb $0x0, 0xfff3088(%rip)                        #  56    0x3dc81  7      
  je .L_3ddc0                                       #  57    0x3dc88  6      
  nop                                               #  58    0x3dc8e  1      
  nop                                               #  59    0x3dc8f  1      
.L_3dd20:                                           #        0x3dc90  0      
  movl %eax, %eax                                   #  60    0x3dc90  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x3dc92  5      
  movl %r12d, %r12d                                 #  62    0x3dc97  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x3dc9a  5      
  nop                                               #  64    0x3dc9f  1      
  andl $0xffffffe0, %eax                            #  65    0x3dca0  5      
  addq %r15, %rax                                   #  66    0x3dca5  3      
  callq %rax                                        #  67    0x3dca8  2      
  testl %eax, %eax                                  #  68    0x3dcaa  2      
  je .L_3dc40                                       #  69    0x3dcac  6      
  movl %r12d, %r12d                                 #  70    0x3dcb2  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x3dcb5  5      
  nop                                               #  72    0x3dcba  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x3dcbb  5      
  movl %eax, %eax                                   #  74    0x3dcc0  2      
  movl %r13d, %edi                                  #  75    0x3dcc2  3      
  movl %eax, %eax                                   #  76    0x3dcc5  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x3dcc7  5      
  movl %eax, %eax                                   #  78    0x3dccc  2      
  movl (%r15,%rax,1), %eax                          #  79    0x3dcce  4      
  movl %eax, %eax                                   #  80    0x3dcd2  2      
  movl (%r15,%rax,1), %eax                          #  81    0x3dcd4  4      
  andl $0xffffffe0, %eax                            #  82    0x3dcd8  5      
  addq %r15, %rax                                   #  83    0x3dcdd  3      
  callq %rax                                        #  84    0x3dce0  2      
  movl %r12d, %r12d                                 #  85    0x3dce2  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x3dce5  5      
  movl %ebx, %edi                                   #  87    0x3dcea  2      
  xchgw %ax, %ax                                    #  88    0x3dcec  3      
  nop                                               #  89    0x3dcef  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x3dcf0  5      
  jmpq .L_3dc40                                     #  91    0x3dcf5  5      
  nop                                               #  92    0x3dcfa  1      
  nop                                               #  93    0x3dcfb  1      
.L_3ddc0:                                           #        0x3dcfc  0      
  movl $0x10030d10, %edi                            #  94    0x3dcfc  5      
  nop                                               #  95    0x3dd01  1      
  nop                                               #  96    0x3dd02  1      
  callq .__cxa_guard_acquire                        #  97    0x3dd03  5      
  testl %eax, %eax                                  #  98    0x3dd08  2      
  jne .L_3de20                                      #  99    0x3dd0a  6      
  nop                                               #  100   0x3dd10  1      
  nop                                               #  101   0x3dd11  1      
.L_3de00:                                           #        0x3dd12  0      
  movl 0xfff3000(%rip), %eax                        #  102   0x3dd12  6      
  jmpq .L_3dd20                                     #  103   0x3dd18  5      
  nop                                               #  104   0x3dd1d  1      
  nop                                               #  105   0x3dd1e  1      
.L_3de20:                                           #        0x3dd1f  0      
  nop                                               #  106   0x3dd1f  1      
  nop                                               #  107   0x3dd20  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x3dd21  5      
  movl %eax, %edi                                   #  109   0x3dd26  2      
  movl $0x10020674, %esi                            #  110   0x3dd28  5      
  nop                                               #  111   0x3dd2d  1      
  nop                                               #  112   0x3dd2e  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x3dd2f  5      
  movl $0x10030d10, %edi                            #  114   0x3dd34  5      
  movl %eax, 0xfff2fd9(%rip)                        #  115   0x3dd39  6      
  nop                                               #  116   0x3dd3f  1      
  nop                                               #  117   0x3dd40  1      
  callq .__cxa_guard_release                        #  118   0x3dd41  5      
  jmpq .L_3de00                                     #  119   0x3dd46  5      
  nop                                               #  120   0x3dd4b  1      
  nop                                               #  121   0x3dd4c  1      
.L_3dea0:                                           #        0x3dd4d  0      
  movl $0x10030d10, %edi                            #  122   0x3dd4d  5      
  movl %eax, %r12d                                  #  123   0x3dd52  3      
  nop                                               #  124   0x3dd55  1      
  nop                                               #  125   0x3dd56  1      
  callq .__cxa_guard_abort                          #  126   0x3dd57  5      
.L_3dec0:                                           #        0x3dd5c  0      
  movl %ebx, %edi                                   #  127   0x3dd5c  2      
  nop                                               #  128   0x3dd5e  1      
  nop                                               #  129   0x3dd5f  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x3dd60  5      
  movl %r12d, %edi                                  #  131   0x3dd65  3      
  nop                                               #  132   0x3dd68  1      
  nop                                               #  133   0x3dd69  1      
  callq ._Unwind_Resume                             #  134   0x3dd6a  5      
  movl %eax, %r12d                                  #  135   0x3dd6f  3      
  jmpq .L_3dec0                                     #  136   0x3dd72  5      
  nop                                               #  137   0x3dd77  1      
  nop                                               #  138   0x3dd78  1      
  jmpq .L_3dea0                                     #  139   0x3dd79  5      
  nop                                               #  140   0x3dd7e  1      
  nop                                               #  141   0x3dd7f  1      
  nop                                               #  142   0x3dd80  1      
                                                                             
.size _ZN2pp13IMEInputEventC1ERKNS_10InputEventE, .-_ZN2pp13IMEInputEventC1ERKNS_10InputEventE

