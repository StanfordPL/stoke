  .text
  .globl _ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE
  .type _ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE, @function

#! file-offset 0x21dc0
#! rip-offset  0x21dc0
#! capacity    704 bytes

# Text                                                                              #  Line  RIP      Bytes  
._ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE:  #        0x21dc0  0      
  movq %rbx, -0x18(%rsp)                                                            #  1     0x21dc0  5      
  movq %r12, -0x10(%rsp)                                                            #  2     0x21dc5  5      
  movl %edx, %ebx                                                                   #  3     0x21dca  2      
  movq %r13, -0x8(%rsp)                                                             #  4     0x21dcc  5      
  subl $0x18, %esp                                                                  #  5     0x21dd1  3      
  addq %r15, %rsp                                                                   #  6     0x21dd4  3      
  cmpb $0x0, 0x1000ee3a(%rip)                                                       #  7     0x21dd7  7      
  xchgw %ax, %ax                                                                    #  8     0x21dde  3      
  movl %edi, %r12d                                                                  #  9     0x21de1  3      
  movl %esi, %r13d                                                                  #  10    0x21de4  3      
  je .L_21ec0                                                                       #  11    0x21de7  6      
  nop                                                                               #  12    0x21ded  1      
  nop                                                                               #  13    0x21dee  1      
.L_21e00:                                                                           #        0x21def  0      
  movl 0x1000ee2b(%rip), %eax                                                       #  14    0x21def  6      
  testq %rax, %rax                                                                  #  15    0x21df5  3      
  je .L_21f60                                                                       #  16    0x21df8  6      
  xchgw %ax, %ax                                                                    #  17    0x21dfe  3      
  nop                                                                               #  18    0x21e01  1      
.L_21e20:                                                                           #        0x21e02  0      
  cmpb $0x0, 0x1000ee0f(%rip)                                                       #  19    0x21e02  7      
  je .L_21e80                                                                       #  20    0x21e09  6      
  nop                                                                               #  21    0x21e0f  1      
  nop                                                                               #  22    0x21e10  1      
.L_21e40:                                                                           #        0x21e11  0      
  movl %eax, %eax                                                                   #  23    0x21e11  2      
  movl 0x4(%r15,%rax,1), %eax                                                       #  24    0x21e13  5      
  movl %ebx, %ebx                                                                   #  25    0x21e18  2      
  movl 0x4(%r15,%rbx,1), %ecx                                                       #  26    0x21e1a  5      
  movl %r13d, %esi                                                                  #  27    0x21e1f  3      
  movl %r12d, %r12d                                                                 #  28    0x21e22  3      
  movl 0x4(%r15,%r12,1), %edi                                                       #  29    0x21e25  5      
  movq (%rsp), %rbx                                                                 #  30    0x21e2a  4      
  nop                                                                               #  31    0x21e2e  1      
  movl $0x100304c4, %edx                                                            #  32    0x21e2f  5      
  movq 0x8(%rsp), %r12                                                              #  33    0x21e34  5      
  movq 0x10(%rsp), %r13                                                             #  34    0x21e39  5      
  addl $0x18, %esp                                                                  #  35    0x21e3e  3      
  addq %r15, %rsp                                                                   #  36    0x21e41  3      
  andl $0xffffffe0, %eax                                                            #  37    0x21e44  5      
  addq %r15, %rax                                                                   #  38    0x21e49  3      
  jmpq %rax                                                                         #  39    0x21e4c  2      
  nop                                                                               #  40    0x21e4e  1      
.L_21e80:                                                                           #        0x21e4f  0      
  movl $0x10030c18, %edi                                                            #  41    0x21e4f  5      
  nop                                                                               #  42    0x21e54  1      
  nop                                                                               #  43    0x21e55  1      
  callq .__cxa_guard_acquire                                                        #  44    0x21e56  5      
  testl %eax, %eax                                                                  #  45    0x21e5b  2      
  jne .L_21fa0                                                                      #  46    0x21e5d  6      
  movl 0x1000edb7(%rip), %eax                                                       #  47    0x21e63  6      
  jmpq .L_21e40                                                                     #  48    0x21e69  5      
  nop                                                                               #  49    0x21e6e  1      
  nop                                                                               #  50    0x21e6f  1      
.L_21ec0:                                                                           #        0x21e70  0      
  movl $0x10030c18, %edi                                                            #  51    0x21e70  5      
  nop                                                                               #  52    0x21e75  1      
  nop                                                                               #  53    0x21e76  1      
  callq .__cxa_guard_acquire                                                        #  54    0x21e77  5      
  testl %eax, %eax                                                                  #  55    0x21e7c  2      
  je .L_21e00                                                                       #  56    0x21e7e  6      
  nop                                                                               #  57    0x21e84  1      
  nop                                                                               #  58    0x21e85  1      
  callq ._ZN2pp6Module3GetEv                                                        #  59    0x21e86  5      
  movl %eax, %edi                                                                   #  60    0x21e8b  2      
  movl $0x100202db, %esi                                                            #  61    0x21e8d  5      
  nop                                                                               #  62    0x21e92  1      
  nop                                                                               #  63    0x21e93  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                     #  64    0x21e94  5      
  movl $0x10030c18, %edi                                                            #  65    0x21e99  5      
  movl %eax, 0x1000ed7c(%rip)                                                       #  66    0x21e9e  6      
  nop                                                                               #  67    0x21ea4  1      
  nop                                                                               #  68    0x21ea5  1      
  callq .__cxa_guard_release                                                        #  69    0x21ea6  5      
  movl 0x1000ed6f(%rip), %eax                                                       #  70    0x21eab  6      
  testq %rax, %rax                                                                  #  71    0x21eb1  3      
  jne .L_21e20                                                                      #  72    0x21eb4  6      
  xchgw %ax, %ax                                                                    #  73    0x21eba  3      
  nop                                                                               #  74    0x21ebd  1      
.L_21f60:                                                                           #        0x21ebe  0      
  movq (%rsp), %rbx                                                                 #  75    0x21ebe  4      
  movq 0x8(%rsp), %r12                                                              #  76    0x21ec2  5      
  movl $0xfffffff4, %eax                                                            #  77    0x21ec7  5      
  movq 0x10(%rsp), %r13                                                             #  78    0x21ecc  5      
  addl $0x18, %esp                                                                  #  79    0x21ed1  3      
  addq %r15, %rsp                                                                   #  80    0x21ed4  3      
  popq %r11                                                                         #  81    0x21ed7  3      
  nop                                                                               #  82    0x21eda  1      
  andl $0xffffffe0, %r11d                                                           #  83    0x21edb  7      
  addq %r15, %r11                                                                   #  84    0x21ee2  3      
  jmpq %r11                                                                         #  85    0x21ee5  3      
  nop                                                                               #  86    0x21ee8  1      
  nop                                                                               #  87    0x21ee9  1      
.L_21fa0:                                                                           #        0x21eea  0      
  nop                                                                               #  88    0x21eea  1      
  nop                                                                               #  89    0x21eeb  1      
  callq ._ZN2pp6Module3GetEv                                                        #  90    0x21eec  5      
  movl %eax, %edi                                                                   #  91    0x21ef1  2      
  movl $0x100202db, %esi                                                            #  92    0x21ef3  5      
  nop                                                                               #  93    0x21ef8  1      
  nop                                                                               #  94    0x21ef9  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                     #  95    0x21efa  5      
  movl $0x10030c18, %edi                                                            #  96    0x21eff  5      
  movl %eax, 0x1000ed16(%rip)                                                       #  97    0x21f04  6      
  nop                                                                               #  98    0x21f0a  1      
  nop                                                                               #  99    0x21f0b  1      
  callq .__cxa_guard_release                                                        #  100   0x21f0c  5      
  movl 0x1000ed09(%rip), %eax                                                       #  101   0x21f11  6      
  jmpq .L_21e40                                                                     #  102   0x21f17  5      
  nop                                                                               #  103   0x21f1c  1      
  nop                                                                               #  104   0x21f1d  1      
.L_22020:                                                                           #        0x21f1e  0      
  movl %eax, %ebx                                                                   #  105   0x21f1e  2      
  movl $0x10030c18, %edi                                                            #  106   0x21f20  5      
  nop                                                                               #  107   0x21f25  1      
  nop                                                                               #  108   0x21f26  1      
  callq .__cxa_guard_abort                                                          #  109   0x21f27  5      
  movl %ebx, %edi                                                                   #  110   0x21f2c  2      
  nop                                                                               #  111   0x21f2e  1      
  nop                                                                               #  112   0x21f2f  1      
  callq ._Unwind_Resume                                                             #  113   0x21f30  5      
  jmpq .L_22020                                                                     #  114   0x21f35  5      
  nop                                                                               #  115   0x21f3a  1      
  nop                                                                               #  116   0x21f3b  1      
                                                                                                             
.size _ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE, .-_ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE

