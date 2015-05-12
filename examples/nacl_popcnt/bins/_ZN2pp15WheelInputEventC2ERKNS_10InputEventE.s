  .text
  .globl _ZN2pp15WheelInputEventC2ERKNS_10InputEventE
  .type _ZN2pp15WheelInputEventC2ERKNS_10InputEventE, @function

#! file-offset 0x37b80
#! rip-offset  0x37b80
#! capacity    896 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp15WheelInputEventC2ERKNS_10InputEventE:      #        0x37b80  0      
  movq %rbx, -0x18(%rsp)                            #  1     0x37b80  5      
  movl %edi, %ebx                                   #  2     0x37b85  2      
  movq %r12, -0x10(%rsp)                            #  3     0x37b87  5      
  movq %r13, -0x8(%rsp)                             #  4     0x37b8c  5      
  movl %ebx, %edi                                   #  5     0x37b91  2      
  subl $0x18, %esp                                  #  6     0x37b93  3      
  addq %r15, %rsp                                   #  7     0x37b96  3      
  movl %esi, %r12d                                  #  8     0x37b99  3      
  nop                                               #  9     0x37b9c  1      
  nop                                               #  10    0x37b9d  1      
  nop                                               #  11    0x37b9e  1      
  callq ._ZN2pp10InputEventC2Ev                     #  12    0x37b9f  5      
  movl %ebx, %ebx                                   #  13    0x37ba4  2      
  movl $0x10020808, (%r15,%rbx,1)                   #  14    0x37ba6  8      
  cmpb $0x0, 0xfff919b(%rip)                        #  15    0x37bae  7      
  je .L_37c20                                       #  16    0x37bb5  6      
  nop                                               #  17    0x37bbb  1      
.L_37be0:                                           #        0x37bbc  0      
  movl 0xfff9196(%rip), %eax                        #  18    0x37bbc  6      
  testq %rax, %rax                                  #  19    0x37bc2  3      
  jne .L_37cc0                                      #  20    0x37bc5  6      
  xchgw %ax, %ax                                    #  21    0x37bcb  3      
  nop                                               #  22    0x37bce  1      
.L_37c00:                                           #        0x37bcf  0      
  movq (%rsp), %rbx                                 #  23    0x37bcf  4      
  movq 0x8(%rsp), %r12                              #  24    0x37bd3  5      
  movq 0x10(%rsp), %r13                             #  25    0x37bd8  5      
  addl $0x18, %esp                                  #  26    0x37bdd  3      
  addq %r15, %rsp                                   #  27    0x37be0  3      
  popq %r11                                         #  28    0x37be3  3      
  andl $0xffffffe0, %r11d                           #  29    0x37be6  7      
  addq %r15, %r11                                   #  30    0x37bed  3      
  jmpq %r11                                         #  31    0x37bf0  3      
.L_37c20:                                           #        0x37bf3  0      
  movl $0x10030d50, %edi                            #  32    0x37bf3  5      
  nop                                               #  33    0x37bf8  1      
  nop                                               #  34    0x37bf9  1      
  callq .__cxa_guard_acquire                        #  35    0x37bfa  5      
  testl %eax, %eax                                  #  36    0x37bff  2      
  je .L_37be0                                       #  37    0x37c01  6      
  nop                                               #  38    0x37c07  1      
  nop                                               #  39    0x37c08  1      
  callq ._ZN2pp6Module3GetEv                        #  40    0x37c09  5      
  movl %eax, %edi                                   #  41    0x37c0e  2      
  movl $0x100206c0, %esi                            #  42    0x37c10  5      
  nop                                               #  43    0x37c15  1      
  nop                                               #  44    0x37c16  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  45    0x37c17  5      
  movl $0x10030d50, %edi                            #  46    0x37c1c  5      
  movl %eax, 0xfff9131(%rip)                        #  47    0x37c21  6      
  nop                                               #  48    0x37c27  1      
  nop                                               #  49    0x37c28  1      
  callq .__cxa_guard_release                        #  50    0x37c29  5      
  movl 0xfff9124(%rip), %eax                        #  51    0x37c2e  6      
  testq %rax, %rax                                  #  52    0x37c34  3      
  je .L_37c00                                       #  53    0x37c37  6      
  xchgw %ax, %ax                                    #  54    0x37c3d  3      
  nop                                               #  55    0x37c40  1      
.L_37cc0:                                           #        0x37c41  0      
  cmpb $0x0, 0xfff9108(%rip)                        #  56    0x37c41  7      
  je .L_37d80                                       #  57    0x37c48  6      
  nop                                               #  58    0x37c4e  1      
  nop                                               #  59    0x37c4f  1      
.L_37ce0:                                           #        0x37c50  0      
  movl %eax, %eax                                   #  60    0x37c50  2      
  movl 0x4(%r15,%rax,1), %eax                       #  61    0x37c52  5      
  movl %r12d, %r12d                                 #  62    0x37c57  3      
  movl 0x4(%r15,%r12,1), %edi                       #  63    0x37c5a  5      
  nop                                               #  64    0x37c5f  1      
  andl $0xffffffe0, %eax                            #  65    0x37c60  5      
  addq %r15, %rax                                   #  66    0x37c65  3      
  callq %rax                                        #  67    0x37c68  2      
  testl %eax, %eax                                  #  68    0x37c6a  2      
  je .L_37c00                                       #  69    0x37c6c  6      
  movl %r12d, %r12d                                 #  70    0x37c72  3      
  movl 0x4(%r15,%r12,1), %r13d                      #  71    0x37c75  5      
  nop                                               #  72    0x37c7a  1      
  callq ._ZN2pp6Module3GetEv                        #  73    0x37c7b  5      
  movl %eax, %eax                                   #  74    0x37c80  2      
  movl %r13d, %edi                                  #  75    0x37c82  3      
  movl %eax, %eax                                   #  76    0x37c85  2      
  movl 0x24(%r15,%rax,1), %eax                      #  77    0x37c87  5      
  movl %eax, %eax                                   #  78    0x37c8c  2      
  movl (%r15,%rax,1), %eax                          #  79    0x37c8e  4      
  movl %eax, %eax                                   #  80    0x37c92  2      
  movl (%r15,%rax,1), %eax                          #  81    0x37c94  4      
  andl $0xffffffe0, %eax                            #  82    0x37c98  5      
  addq %r15, %rax                                   #  83    0x37c9d  3      
  callq %rax                                        #  84    0x37ca0  2      
  movl %r12d, %r12d                                 #  85    0x37ca2  3      
  movl 0x4(%r15,%r12,1), %esi                       #  86    0x37ca5  5      
  movl %ebx, %edi                                   #  87    0x37caa  2      
  xchgw %ax, %ax                                    #  88    0x37cac  3      
  nop                                               #  89    0x37caf  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  90    0x37cb0  5      
  jmpq .L_37c00                                     #  91    0x37cb5  5      
  nop                                               #  92    0x37cba  1      
  nop                                               #  93    0x37cbb  1      
.L_37d80:                                           #        0x37cbc  0      
  movl $0x10030d50, %edi                            #  94    0x37cbc  5      
  nop                                               #  95    0x37cc1  1      
  nop                                               #  96    0x37cc2  1      
  callq .__cxa_guard_acquire                        #  97    0x37cc3  5      
  testl %eax, %eax                                  #  98    0x37cc8  2      
  jne .L_37de0                                      #  99    0x37cca  6      
  nop                                               #  100   0x37cd0  1      
  nop                                               #  101   0x37cd1  1      
.L_37dc0:                                           #        0x37cd2  0      
  movl 0xfff9080(%rip), %eax                        #  102   0x37cd2  6      
  jmpq .L_37ce0                                     #  103   0x37cd8  5      
  nop                                               #  104   0x37cdd  1      
  nop                                               #  105   0x37cde  1      
.L_37de0:                                           #        0x37cdf  0      
  nop                                               #  106   0x37cdf  1      
  nop                                               #  107   0x37ce0  1      
  callq ._ZN2pp6Module3GetEv                        #  108   0x37ce1  5      
  movl %eax, %edi                                   #  109   0x37ce6  2      
  movl $0x100206c0, %esi                            #  110   0x37ce8  5      
  nop                                               #  111   0x37ced  1      
  nop                                               #  112   0x37cee  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  113   0x37cef  5      
  movl $0x10030d50, %edi                            #  114   0x37cf4  5      
  movl %eax, 0xfff9059(%rip)                        #  115   0x37cf9  6      
  nop                                               #  116   0x37cff  1      
  nop                                               #  117   0x37d00  1      
  callq .__cxa_guard_release                        #  118   0x37d01  5      
  jmpq .L_37dc0                                     #  119   0x37d06  5      
  nop                                               #  120   0x37d0b  1      
  nop                                               #  121   0x37d0c  1      
.L_37e60:                                           #        0x37d0d  0      
  movl $0x10030d50, %edi                            #  122   0x37d0d  5      
  movl %eax, %r12d                                  #  123   0x37d12  3      
  nop                                               #  124   0x37d15  1      
  nop                                               #  125   0x37d16  1      
  callq .__cxa_guard_abort                          #  126   0x37d17  5      
.L_37e80:                                           #        0x37d1c  0      
  movl %ebx, %edi                                   #  127   0x37d1c  2      
  nop                                               #  128   0x37d1e  1      
  nop                                               #  129   0x37d1f  1      
  callq ._ZN2pp10InputEventD2Ev                     #  130   0x37d20  5      
  movl %r12d, %edi                                  #  131   0x37d25  3      
  nop                                               #  132   0x37d28  1      
  nop                                               #  133   0x37d29  1      
  callq ._Unwind_Resume                             #  134   0x37d2a  5      
  movl %eax, %r12d                                  #  135   0x37d2f  3      
  jmpq .L_37e80                                     #  136   0x37d32  5      
  nop                                               #  137   0x37d37  1      
  nop                                               #  138   0x37d38  1      
  jmpq .L_37e60                                     #  139   0x37d39  5      
  nop                                               #  140   0x37d3e  1      
  nop                                               #  141   0x37d3f  1      
  nop                                               #  142   0x37d40  1      
                                                                             
.size _ZN2pp15WheelInputEventC2ERKNS_10InputEventE, .-_ZN2pp15WheelInputEventC2ERKNS_10InputEventE

