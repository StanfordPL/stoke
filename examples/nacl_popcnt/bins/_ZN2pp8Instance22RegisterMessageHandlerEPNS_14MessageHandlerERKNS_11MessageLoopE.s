  .text
  .globl _ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE
  .type _ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE, @function

#! file-offset 0x21da0
#! rip-offset  0x21da0
#! capacity    704 bytes

# Text                                                                              #  Line  RIP      Bytes  
._ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE:  #        0x21da0  0      
  movq %rbx, -0x18(%rsp)                                                            #  1     0x21da0  5      
  movq %r12, -0x10(%rsp)                                                            #  2     0x21da5  5      
  movl %edx, %ebx                                                                   #  3     0x21daa  2      
  movq %r13, -0x8(%rsp)                                                             #  4     0x21dac  5      
  subl $0x18, %esp                                                                  #  5     0x21db1  3      
  addq %r15, %rsp                                                                   #  6     0x21db4  3      
  cmpb $0x0, 0x1000ee5a(%rip)                                                       #  7     0x21db7  7      
  xchgw %ax, %ax                                                                    #  8     0x21dbe  3      
  movl %edi, %r12d                                                                  #  9     0x21dc1  3      
  movl %esi, %r13d                                                                  #  10    0x21dc4  3      
  je .L_21ea0                                                                       #  11    0x21dc7  6      
  nop                                                                               #  12    0x21dcd  1      
  nop                                                                               #  13    0x21dce  1      
.L_21de0:                                                                           #        0x21dcf  0      
  movl 0x1000ee4b(%rip), %eax                                                       #  14    0x21dcf  6      
  testq %rax, %rax                                                                  #  15    0x21dd5  3      
  je .L_21f40                                                                       #  16    0x21dd8  6      
  xchgw %ax, %ax                                                                    #  17    0x21dde  3      
  nop                                                                               #  18    0x21de1  1      
.L_21e00:                                                                           #        0x21de2  0      
  cmpb $0x0, 0x1000ee2f(%rip)                                                       #  19    0x21de2  7      
  je .L_21e60                                                                       #  20    0x21de9  6      
  nop                                                                               #  21    0x21def  1      
  nop                                                                               #  22    0x21df0  1      
.L_21e20:                                                                           #        0x21df1  0      
  movl %eax, %eax                                                                   #  23    0x21df1  2      
  movl 0x4(%r15,%rax,1), %eax                                                       #  24    0x21df3  5      
  movl %ebx, %ebx                                                                   #  25    0x21df8  2      
  movl 0x4(%r15,%rbx,1), %ecx                                                       #  26    0x21dfa  5      
  movl %r13d, %esi                                                                  #  27    0x21dff  3      
  movl %r12d, %r12d                                                                 #  28    0x21e02  3      
  movl 0x4(%r15,%r12,1), %edi                                                       #  29    0x21e05  5      
  movq (%rsp), %rbx                                                                 #  30    0x21e0a  4      
  nop                                                                               #  31    0x21e0e  1      
  movl $0x100304c4, %edx                                                            #  32    0x21e0f  5      
  movq 0x8(%rsp), %r12                                                              #  33    0x21e14  5      
  movq 0x10(%rsp), %r13                                                             #  34    0x21e19  5      
  addl $0x18, %esp                                                                  #  35    0x21e1e  3      
  addq %r15, %rsp                                                                   #  36    0x21e21  3      
  andl $0xffffffe0, %eax                                                            #  37    0x21e24  5      
  addq %r15, %rax                                                                   #  38    0x21e29  3      
  jmpq %rax                                                                         #  39    0x21e2c  2      
  nop                                                                               #  40    0x21e2e  1      
.L_21e60:                                                                           #        0x21e2f  0      
  movl $0x10030c18, %edi                                                            #  41    0x21e2f  5      
  nop                                                                               #  42    0x21e34  1      
  nop                                                                               #  43    0x21e35  1      
  callq .__cxa_guard_acquire                                                        #  44    0x21e36  5      
  testl %eax, %eax                                                                  #  45    0x21e3b  2      
  jne .L_21f80                                                                      #  46    0x21e3d  6      
  movl 0x1000edd7(%rip), %eax                                                       #  47    0x21e43  6      
  jmpq .L_21e20                                                                     #  48    0x21e49  5      
  nop                                                                               #  49    0x21e4e  1      
  nop                                                                               #  50    0x21e4f  1      
.L_21ea0:                                                                           #        0x21e50  0      
  movl $0x10030c18, %edi                                                            #  51    0x21e50  5      
  nop                                                                               #  52    0x21e55  1      
  nop                                                                               #  53    0x21e56  1      
  callq .__cxa_guard_acquire                                                        #  54    0x21e57  5      
  testl %eax, %eax                                                                  #  55    0x21e5c  2      
  je .L_21de0                                                                       #  56    0x21e5e  6      
  nop                                                                               #  57    0x21e64  1      
  nop                                                                               #  58    0x21e65  1      
  callq ._ZN2pp6Module3GetEv                                                        #  59    0x21e66  5      
  movl %eax, %edi                                                                   #  60    0x21e6b  2      
  movl $0x100202db, %esi                                                            #  61    0x21e6d  5      
  nop                                                                               #  62    0x21e72  1      
  nop                                                                               #  63    0x21e73  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                     #  64    0x21e74  5      
  movl $0x10030c18, %edi                                                            #  65    0x21e79  5      
  movl %eax, 0x1000ed9c(%rip)                                                       #  66    0x21e7e  6      
  nop                                                                               #  67    0x21e84  1      
  nop                                                                               #  68    0x21e85  1      
  callq .__cxa_guard_release                                                        #  69    0x21e86  5      
  movl 0x1000ed8f(%rip), %eax                                                       #  70    0x21e8b  6      
  testq %rax, %rax                                                                  #  71    0x21e91  3      
  jne .L_21e00                                                                      #  72    0x21e94  6      
  xchgw %ax, %ax                                                                    #  73    0x21e9a  3      
  nop                                                                               #  74    0x21e9d  1      
.L_21f40:                                                                           #        0x21e9e  0      
  movq (%rsp), %rbx                                                                 #  75    0x21e9e  4      
  movq 0x8(%rsp), %r12                                                              #  76    0x21ea2  5      
  movl $0xfffffff4, %eax                                                            #  77    0x21ea7  5      
  movq 0x10(%rsp), %r13                                                             #  78    0x21eac  5      
  addl $0x18, %esp                                                                  #  79    0x21eb1  3      
  addq %r15, %rsp                                                                   #  80    0x21eb4  3      
  popq %r11                                                                         #  81    0x21eb7  3      
  nop                                                                               #  82    0x21eba  1      
  andl $0xffffffe0, %r11d                                                           #  83    0x21ebb  7      
  addq %r15, %r11                                                                   #  84    0x21ec2  3      
  jmpq %r11                                                                         #  85    0x21ec5  3      
  nop                                                                               #  86    0x21ec8  1      
  nop                                                                               #  87    0x21ec9  1      
.L_21f80:                                                                           #        0x21eca  0      
  nop                                                                               #  88    0x21eca  1      
  nop                                                                               #  89    0x21ecb  1      
  callq ._ZN2pp6Module3GetEv                                                        #  90    0x21ecc  5      
  movl %eax, %edi                                                                   #  91    0x21ed1  2      
  movl $0x100202db, %esi                                                            #  92    0x21ed3  5      
  nop                                                                               #  93    0x21ed8  1      
  nop                                                                               #  94    0x21ed9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                     #  95    0x21eda  5      
  movl $0x10030c18, %edi                                                            #  96    0x21edf  5      
  movl %eax, 0x1000ed36(%rip)                                                       #  97    0x21ee4  6      
  nop                                                                               #  98    0x21eea  1      
  nop                                                                               #  99    0x21eeb  1      
  callq .__cxa_guard_release                                                        #  100   0x21eec  5      
  movl 0x1000ed29(%rip), %eax                                                       #  101   0x21ef1  6      
  jmpq .L_21e20                                                                     #  102   0x21ef7  5      
  nop                                                                               #  103   0x21efc  1      
  nop                                                                               #  104   0x21efd  1      
.L_22000:                                                                           #        0x21efe  0      
  movl %eax, %ebx                                                                   #  105   0x21efe  2      
  movl $0x10030c18, %edi                                                            #  106   0x21f00  5      
  nop                                                                               #  107   0x21f05  1      
  nop                                                                               #  108   0x21f06  1      
  callq .__cxa_guard_abort                                                          #  109   0x21f07  5      
  movl %ebx, %edi                                                                   #  110   0x21f0c  2      
  nop                                                                               #  111   0x21f0e  1      
  nop                                                                               #  112   0x21f0f  1      
  callq ._Unwind_Resume                                                             #  113   0x21f10  5      
  jmpq .L_22000                                                                     #  114   0x21f15  5      
  nop                                                                               #  115   0x21f1a  1      
  nop                                                                               #  116   0x21f1b  1      
                                                                                                             
.size _ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE, .-_ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE

