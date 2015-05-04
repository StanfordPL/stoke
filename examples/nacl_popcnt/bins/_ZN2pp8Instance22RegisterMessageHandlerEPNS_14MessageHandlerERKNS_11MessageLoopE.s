  .text
  .globl _ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE
  .type _ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE, @function

#! file-offset 0x21e40
#! rip-offset  0x21e40
#! capacity    704 bytes

# Text                                                                              #  Line  RIP      Bytes  
._ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE:  #        0x21e40  0      
  movq %rbx, -0x18(%rsp)                                                            #  1     0x21e40  5      
  movq %r12, -0x10(%rsp)                                                            #  2     0x21e45  5      
  movl %edx, %ebx                                                                   #  3     0x21e4a  2      
  movq %r13, -0x8(%rsp)                                                             #  4     0x21e4c  5      
  subl $0x18, %esp                                                                  #  5     0x21e51  3      
  addq %r15, %rsp                                                                   #  6     0x21e54  3      
  cmpb $0x0, 0x1000edba(%rip)                                                       #  7     0x21e57  7      
  xchgw %ax, %ax                                                                    #  8     0x21e5e  3      
  movl %edi, %r12d                                                                  #  9     0x21e61  3      
  movl %esi, %r13d                                                                  #  10    0x21e64  3      
  je .L_21f40                                                                       #  11    0x21e67  6      
  nop                                                                               #  12    0x21e6d  1      
  nop                                                                               #  13    0x21e6e  1      
.L_21e80:                                                                           #        0x21e6f  0      
  movl 0x1000edab(%rip), %eax                                                       #  14    0x21e6f  6      
  testq %rax, %rax                                                                  #  15    0x21e75  3      
  je .L_21fe0                                                                       #  16    0x21e78  6      
  xchgw %ax, %ax                                                                    #  17    0x21e7e  3      
  nop                                                                               #  18    0x21e81  1      
.L_21ea0:                                                                           #        0x21e82  0      
  cmpb $0x0, 0x1000ed8f(%rip)                                                       #  19    0x21e82  7      
  je .L_21f00                                                                       #  20    0x21e89  6      
  nop                                                                               #  21    0x21e8f  1      
  nop                                                                               #  22    0x21e90  1      
.L_21ec0:                                                                           #        0x21e91  0      
  movl %eax, %eax                                                                   #  23    0x21e91  2      
  movl 0x4(%r15,%rax,1), %eax                                                       #  24    0x21e93  5      
  movl %ebx, %ebx                                                                   #  25    0x21e98  2      
  movl 0x4(%r15,%rbx,1), %ecx                                                       #  26    0x21e9a  5      
  movl %r13d, %esi                                                                  #  27    0x21e9f  3      
  movl %r12d, %r12d                                                                 #  28    0x21ea2  3      
  movl 0x4(%r15,%r12,1), %edi                                                       #  29    0x21ea5  5      
  movq (%rsp), %rbx                                                                 #  30    0x21eaa  4      
  nop                                                                               #  31    0x21eae  1      
  movl $0x100304c4, %edx                                                            #  32    0x21eaf  5      
  movq 0x8(%rsp), %r12                                                              #  33    0x21eb4  5      
  movq 0x10(%rsp), %r13                                                             #  34    0x21eb9  5      
  addl $0x18, %esp                                                                  #  35    0x21ebe  3      
  addq %r15, %rsp                                                                   #  36    0x21ec1  3      
  andl $0xffffffe0, %eax                                                            #  37    0x21ec4  5      
  addq %r15, %rax                                                                   #  38    0x21ec9  3      
  jmpq %rax                                                                         #  39    0x21ecc  2      
  nop                                                                               #  40    0x21ece  1      
.L_21f00:                                                                           #        0x21ecf  0      
  movl $0x10030c18, %edi                                                            #  41    0x21ecf  5      
  nop                                                                               #  42    0x21ed4  1      
  nop                                                                               #  43    0x21ed5  1      
  callq .__cxa_guard_acquire                                                        #  44    0x21ed6  5      
  testl %eax, %eax                                                                  #  45    0x21edb  2      
  jne .L_22020                                                                      #  46    0x21edd  6      
  movl 0x1000ed37(%rip), %eax                                                       #  47    0x21ee3  6      
  jmpq .L_21ec0                                                                     #  48    0x21ee9  5      
  nop                                                                               #  49    0x21eee  1      
  nop                                                                               #  50    0x21eef  1      
.L_21f40:                                                                           #        0x21ef0  0      
  movl $0x10030c18, %edi                                                            #  51    0x21ef0  5      
  nop                                                                               #  52    0x21ef5  1      
  nop                                                                               #  53    0x21ef6  1      
  callq .__cxa_guard_acquire                                                        #  54    0x21ef7  5      
  testl %eax, %eax                                                                  #  55    0x21efc  2      
  je .L_21e80                                                                       #  56    0x21efe  6      
  nop                                                                               #  57    0x21f04  1      
  nop                                                                               #  58    0x21f05  1      
  callq ._ZN2pp6Module3GetEv                                                        #  59    0x21f06  5      
  movl %eax, %edi                                                                   #  60    0x21f0b  2      
  movl $0x100202db, %esi                                                            #  61    0x21f0d  5      
  nop                                                                               #  62    0x21f12  1      
  nop                                                                               #  63    0x21f13  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                     #  64    0x21f14  5      
  movl $0x10030c18, %edi                                                            #  65    0x21f19  5      
  movl %eax, 0x1000ecfc(%rip)                                                       #  66    0x21f1e  6      
  nop                                                                               #  67    0x21f24  1      
  nop                                                                               #  68    0x21f25  1      
  callq .__cxa_guard_release                                                        #  69    0x21f26  5      
  movl 0x1000ecef(%rip), %eax                                                       #  70    0x21f2b  6      
  testq %rax, %rax                                                                  #  71    0x21f31  3      
  jne .L_21ea0                                                                      #  72    0x21f34  6      
  xchgw %ax, %ax                                                                    #  73    0x21f3a  3      
  nop                                                                               #  74    0x21f3d  1      
.L_21fe0:                                                                           #        0x21f3e  0      
  movq (%rsp), %rbx                                                                 #  75    0x21f3e  4      
  movq 0x8(%rsp), %r12                                                              #  76    0x21f42  5      
  movl $0xfffffff4, %eax                                                            #  77    0x21f47  5      
  movq 0x10(%rsp), %r13                                                             #  78    0x21f4c  5      
  addl $0x18, %esp                                                                  #  79    0x21f51  3      
  addq %r15, %rsp                                                                   #  80    0x21f54  3      
  popq %r11                                                                         #  81    0x21f57  3      
  nop                                                                               #  82    0x21f5a  1      
  andl $0xffffffe0, %r11d                                                           #  83    0x21f5b  7      
  addq %r15, %r11                                                                   #  84    0x21f62  3      
  jmpq %r11                                                                         #  85    0x21f65  3      
  nop                                                                               #  86    0x21f68  1      
  nop                                                                               #  87    0x21f69  1      
.L_22020:                                                                           #        0x21f6a  0      
  nop                                                                               #  88    0x21f6a  1      
  nop                                                                               #  89    0x21f6b  1      
  callq ._ZN2pp6Module3GetEv                                                        #  90    0x21f6c  5      
  movl %eax, %edi                                                                   #  91    0x21f71  2      
  movl $0x100202db, %esi                                                            #  92    0x21f73  5      
  nop                                                                               #  93    0x21f78  1      
  nop                                                                               #  94    0x21f79  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                                     #  95    0x21f7a  5      
  movl $0x10030c18, %edi                                                            #  96    0x21f7f  5      
  movl %eax, 0x1000ec96(%rip)                                                       #  97    0x21f84  6      
  nop                                                                               #  98    0x21f8a  1      
  nop                                                                               #  99    0x21f8b  1      
  callq .__cxa_guard_release                                                        #  100   0x21f8c  5      
  movl 0x1000ec89(%rip), %eax                                                       #  101   0x21f91  6      
  jmpq .L_21ec0                                                                     #  102   0x21f97  5      
  nop                                                                               #  103   0x21f9c  1      
  nop                                                                               #  104   0x21f9d  1      
.L_220a0:                                                                           #        0x21f9e  0      
  movl %eax, %ebx                                                                   #  105   0x21f9e  2      
  movl $0x10030c18, %edi                                                            #  106   0x21fa0  5      
  nop                                                                               #  107   0x21fa5  1      
  nop                                                                               #  108   0x21fa6  1      
  callq .__cxa_guard_abort                                                          #  109   0x21fa7  5      
  movl %ebx, %edi                                                                   #  110   0x21fac  2      
  nop                                                                               #  111   0x21fae  1      
  nop                                                                               #  112   0x21faf  1      
  callq ._Unwind_Resume                                                             #  113   0x21fb0  5      
  jmpq .L_220a0                                                                     #  114   0x21fb5  5      
  nop                                                                               #  115   0x21fba  1      
  nop                                                                               #  116   0x21fbb  1      
                                                                                                             
.size _ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE, .-_ZN2pp8Instance22RegisterMessageHandlerEPNS_14MessageHandlerERKNS_11MessageLoopE

