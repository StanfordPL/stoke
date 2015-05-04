  .text
  .globl _ZN2pp8Instance12BindGraphicsERKNS_10CompositorE
  .type _ZN2pp8Instance12BindGraphicsERKNS_10CompositorE, @function

#! file-offset 0x22da0
#! rip-offset  0x22da0
#! capacity    672 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp8Instance12BindGraphicsERKNS_10CompositorE:  #        0x22da0  0      
  pushq %r12                                        #  1     0x22da0  3      
  movl %edi, %r12d                                  #  2     0x22da3  3      
  pushq %rbx                                        #  3     0x22da6  2      
  movl %esi, %ebx                                   #  4     0x22da8  2      
  subl $0x8, %esp                                   #  5     0x22daa  3      
  addq %r15, %rsp                                   #  6     0x22dad  3      
  cmpb $0x0, 0x1000de91(%rip)                       #  7     0x22db0  7      
  je .L_22e00                                       #  8     0x22db7  6      
  nop                                               #  9     0x22dbd  1      
.L_22dc0:                                           #        0x22dbe  0      
  movl 0x1000de8c(%rip), %edx                       #  10    0x22dbe  6      
  xorl %eax, %eax                                   #  11    0x22dc4  2      
  testq %rdx, %rdx                                  #  12    0x22dc6  3      
  jne .L_22ea0                                      #  13    0x22dc9  6      
  nop                                               #  14    0x22dcf  1      
.L_22de0:                                           #        0x22dd0  0      
  addl $0x8, %esp                                   #  15    0x22dd0  3      
  addq %r15, %rsp                                   #  16    0x22dd3  3      
  popq %rbx                                         #  17    0x22dd6  2      
  popq %r12                                         #  18    0x22dd8  3      
  popq %r11                                         #  19    0x22ddb  3      
  andl $0xffffffe0, %r11d                           #  20    0x22dde  7      
  addq %r15, %r11                                   #  21    0x22de5  3      
  jmpq %r11                                         #  22    0x22de8  3      
  nop                                               #  23    0x22deb  1      
.L_22e00:                                           #        0x22dec  0      
  movl $0x10030c48, %edi                            #  24    0x22dec  5      
  nop                                               #  25    0x22df1  1      
  nop                                               #  26    0x22df2  1      
  callq .__cxa_guard_acquire                        #  27    0x22df3  5      
  testl %eax, %eax                                  #  28    0x22df8  2      
  je .L_22dc0                                       #  29    0x22dfa  6      
  nop                                               #  30    0x22e00  1      
  nop                                               #  31    0x22e01  1      
  callq ._ZN2pp6Module3GetEv                        #  32    0x22e02  5      
  movl %eax, %edi                                   #  33    0x22e07  2      
  movl $0x100202ed, %esi                            #  34    0x22e09  5      
  nop                                               #  35    0x22e0e  1      
  nop                                               #  36    0x22e0f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  37    0x22e10  5      
  movl $0x10030c48, %edi                            #  38    0x22e15  5      
  movl %eax, 0x1000de30(%rip)                       #  39    0x22e1a  6      
  nop                                               #  40    0x22e20  1      
  nop                                               #  41    0x22e21  1      
  callq .__cxa_guard_release                        #  42    0x22e22  5      
  movl 0x1000de23(%rip), %edx                       #  43    0x22e27  6      
  xorl %eax, %eax                                   #  44    0x22e2d  2      
  testq %rdx, %rdx                                  #  45    0x22e2f  3      
  je .L_22de0                                       #  46    0x22e32  6      
  nop                                               #  47    0x22e38  1      
.L_22ea0:                                           #        0x22e39  0      
  cmpb $0x0, 0x1000de08(%rip)                       #  48    0x22e39  7      
  je .L_22f00                                       #  49    0x22e40  6      
  nop                                               #  50    0x22e46  1      
  nop                                               #  51    0x22e47  1      
.L_22ec0:                                           #        0x22e48  0      
  movl %edx, %edx                                   #  52    0x22e48  2      
  movl (%r15,%rdx,1), %eax                          #  53    0x22e4a  4      
  movl %ebx, %ebx                                   #  54    0x22e4e  2      
  movl 0x4(%r15,%rbx,1), %esi                       #  55    0x22e50  5      
  movl %r12d, %r12d                                 #  56    0x22e55  3      
  movl 0x4(%r15,%r12,1), %edi                       #  57    0x22e58  5      
  nop                                               #  58    0x22e5d  1      
  andl $0xffffffe0, %eax                            #  59    0x22e5e  5      
  addq %r15, %rax                                   #  60    0x22e63  3      
  callq %rax                                        #  61    0x22e66  2      
  testl %eax, %eax                                  #  62    0x22e68  2      
  setne %al                                         #  63    0x22e6a  3      
  addl $0x8, %esp                                   #  64    0x22e6d  3      
  addq %r15, %rsp                                   #  65    0x22e70  3      
  popq %rbx                                         #  66    0x22e73  2      
  popq %r12                                         #  67    0x22e75  3      
  popq %r11                                         #  68    0x22e78  3      
  andl $0xffffffe0, %r11d                           #  69    0x22e7b  7      
  addq %r15, %r11                                   #  70    0x22e82  3      
  jmpq %r11                                         #  71    0x22e85  3      
  nop                                               #  72    0x22e88  1      
.L_22f00:                                           #        0x22e89  0      
  movl $0x10030c48, %edi                            #  73    0x22e89  5      
  nop                                               #  74    0x22e8e  1      
  nop                                               #  75    0x22e8f  1      
  callq .__cxa_guard_acquire                        #  76    0x22e90  5      
  testl %eax, %eax                                  #  77    0x22e95  2      
  jne .L_22f60                                      #  78    0x22e97  6      
  nop                                               #  79    0x22e9d  1      
  nop                                               #  80    0x22e9e  1      
.L_22f40:                                           #        0x22e9f  0      
  movl 0x1000ddab(%rip), %edx                       #  81    0x22e9f  6      
  jmpq .L_22ec0                                     #  82    0x22ea5  5      
  nop                                               #  83    0x22eaa  1      
  nop                                               #  84    0x22eab  1      
.L_22f60:                                           #        0x22eac  0      
  nop                                               #  85    0x22eac  1      
  nop                                               #  86    0x22ead  1      
  callq ._ZN2pp6Module3GetEv                        #  87    0x22eae  5      
  movl %eax, %edi                                   #  88    0x22eb3  2      
  movl $0x100202ed, %esi                            #  89    0x22eb5  5      
  nop                                               #  90    0x22eba  1      
  nop                                               #  91    0x22ebb  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  92    0x22ebc  5      
  movl $0x10030c48, %edi                            #  93    0x22ec1  5      
  movl %eax, 0x1000dd84(%rip)                       #  94    0x22ec6  6      
  nop                                               #  95    0x22ecc  1      
  nop                                               #  96    0x22ecd  1      
  callq .__cxa_guard_release                        #  97    0x22ece  5      
  jmpq .L_22f40                                     #  98    0x22ed3  5      
  nop                                               #  99    0x22ed8  1      
  nop                                               #  100   0x22ed9  1      
.L_22fe0:                                           #        0x22eda  0      
  movl %eax, %ebx                                   #  101   0x22eda  2      
  movl $0x10030c48, %edi                            #  102   0x22edc  5      
  nop                                               #  103   0x22ee1  1      
  nop                                               #  104   0x22ee2  1      
  callq .__cxa_guard_abort                          #  105   0x22ee3  5      
  movl %ebx, %edi                                   #  106   0x22ee8  2      
  nop                                               #  107   0x22eea  1      
  nop                                               #  108   0x22eeb  1      
  callq ._Unwind_Resume                             #  109   0x22eec  5      
  jmpq .L_22fe0                                     #  110   0x22ef1  5      
  nop                                               #  111   0x22ef6  1      
  nop                                               #  112   0x22ef7  1      
                                                                             
.size _ZN2pp8Instance12BindGraphicsERKNS_10CompositorE, .-_ZN2pp8Instance12BindGraphicsERKNS_10CompositorE

