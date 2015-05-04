  .text
  .globl _ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint
  .type _ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint, @function

#! file-offset 0x39ec0
#! rip-offset  0x39ec0
#! capacity    704 bytes

# Text                                                                      #  Line  RIP      Bytes  
._ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint:  #        0x39ec0  0      
  movq %rbx, -0x10(%rsp)                                                    #  1     0x39ec0  5      
  movq %r12, -0x8(%rsp)                                                     #  2     0x39ec5  5      
  subl $0x18, %esp                                                          #  3     0x39eca  3      
  addq %r15, %rsp                                                           #  4     0x39ecd  3      
  cmpb $0x0, 0xfff6e49(%rip)                                                #  5     0x39ed0  7      
  movl %esi, %r12d                                                          #  6     0x39ed7  3      
  movl %edi, %ebx                                                           #  7     0x39eda  2      
  nop                                                                       #  8     0x39edc  1      
  je .L_39f40                                                               #  9     0x39edd  6      
  nop                                                                       #  10    0x39ee3  1      
  nop                                                                       #  11    0x39ee4  1      
.L_39f00:                                                                   #        0x39ee5  0      
  movl 0xfff6e3d(%rip), %eax                                                #  12    0x39ee5  6      
  testq %rax, %rax                                                          #  13    0x39eeb  3      
  jne .L_39fe0                                                              #  14    0x39eee  6      
  xchgw %ax, %ax                                                            #  15    0x39ef4  3      
  nop                                                                       #  16    0x39ef7  1      
.L_39f20:                                                                   #        0x39ef8  0      
  movq 0x8(%rsp), %rbx                                                      #  17    0x39ef8  5      
  movq 0x10(%rsp), %r12                                                     #  18    0x39efd  5      
  addl $0x18, %esp                                                          #  19    0x39f02  3      
  addq %r15, %rsp                                                           #  20    0x39f05  3      
  popq %r11                                                                 #  21    0x39f08  3      
  andl $0xffffffe0, %r11d                                                   #  22    0x39f0b  7      
  addq %r15, %r11                                                           #  23    0x39f12  3      
  jmpq %r11                                                                 #  24    0x39f15  3      
  nop                                                                       #  25    0x39f18  1      
.L_39f40:                                                                   #        0x39f19  0      
  movl $0x10030d20, %edi                                                    #  26    0x39f19  5      
  nop                                                                       #  27    0x39f1e  1      
  nop                                                                       #  28    0x39f1f  1      
  callq .__cxa_guard_acquire                                                #  29    0x39f20  5      
  testl %eax, %eax                                                          #  30    0x39f25  2      
  je .L_39f00                                                               #  31    0x39f27  6      
  nop                                                                       #  32    0x39f2d  1      
  nop                                                                       #  33    0x39f2e  1      
  callq ._ZN2pp6Module3GetEv                                                #  34    0x39f2f  5      
  movl %eax, %edi                                                           #  35    0x39f34  2      
  movl $0x100206d8, %esi                                                    #  36    0x39f36  5      
  nop                                                                       #  37    0x39f3b  1      
  nop                                                                       #  38    0x39f3c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  39    0x39f3d  5      
  movl $0x10030d20, %edi                                                    #  40    0x39f42  5      
  movl %eax, 0xfff6ddb(%rip)                                                #  41    0x39f47  6      
  nop                                                                       #  42    0x39f4d  1      
  nop                                                                       #  43    0x39f4e  1      
  callq .__cxa_guard_release                                                #  44    0x39f4f  5      
  movl 0xfff6dce(%rip), %eax                                                #  45    0x39f54  6      
  testq %rax, %rax                                                          #  46    0x39f5a  3      
  je .L_39f20                                                               #  47    0x39f5d  6      
  xchgw %ax, %ax                                                            #  48    0x39f63  3      
  nop                                                                       #  49    0x39f66  1      
.L_39fe0:                                                                   #        0x39f67  0      
  cmpb $0x0, 0xfff6db2(%rip)                                                #  50    0x39f67  7      
  je .L_3a040                                                               #  51    0x39f6e  6      
  nop                                                                       #  52    0x39f74  1      
  nop                                                                       #  53    0x39f75  1      
.L_3a000:                                                                   #        0x39f76  0      
  leal 0x20(%rsp), %ecx                                                     #  54    0x39f76  4      
  movl %eax, %eax                                                           #  55    0x39f7a  2      
  movl 0x4(%r15,%rax,1), %eax                                               #  56    0x39f7c  5      
  movl %ebx, %ebx                                                           #  57    0x39f81  2      
  movl 0x4(%r15,%rbx,1), %edi                                               #  58    0x39f83  5      
  movl %r12d, %esi                                                          #  59    0x39f88  3      
  movl %ecx, %edx                                                           #  60    0x39f8b  2      
  nop                                                                       #  61    0x39f8d  1      
  andl $0xffffffe0, %eax                                                    #  62    0x39f8e  5      
  addq %r15, %rax                                                           #  63    0x39f93  3      
  callq %rax                                                                #  64    0x39f96  2      
  jmpq .L_39f20                                                             #  65    0x39f98  5      
  nop                                                                       #  66    0x39f9d  1      
  nop                                                                       #  67    0x39f9e  1      
.L_3a040:                                                                   #        0x39f9f  0      
  movl $0x10030d20, %edi                                                    #  68    0x39f9f  5      
  nop                                                                       #  69    0x39fa4  1      
  nop                                                                       #  70    0x39fa5  1      
  callq .__cxa_guard_acquire                                                #  71    0x39fa6  5      
  testl %eax, %eax                                                          #  72    0x39fab  2      
  jne .L_3a0a0                                                              #  73    0x39fad  6      
  nop                                                                       #  74    0x39fb3  1      
  nop                                                                       #  75    0x39fb4  1      
.L_3a080:                                                                   #        0x39fb5  0      
  movl 0xfff6d6d(%rip), %eax                                                #  76    0x39fb5  6      
  jmpq .L_3a000                                                             #  77    0x39fbb  5      
  nop                                                                       #  78    0x39fc0  1      
  nop                                                                       #  79    0x39fc1  1      
.L_3a0a0:                                                                   #        0x39fc2  0      
  nop                                                                       #  80    0x39fc2  1      
  nop                                                                       #  81    0x39fc3  1      
  callq ._ZN2pp6Module3GetEv                                                #  82    0x39fc4  5      
  movl %eax, %edi                                                           #  83    0x39fc9  2      
  movl $0x100206d8, %esi                                                    #  84    0x39fcb  5      
  nop                                                                       #  85    0x39fd0  1      
  nop                                                                       #  86    0x39fd1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  87    0x39fd2  5      
  movl $0x10030d20, %edi                                                    #  88    0x39fd7  5      
  movl %eax, 0xfff6d46(%rip)                                                #  89    0x39fdc  6      
  nop                                                                       #  90    0x39fe2  1      
  nop                                                                       #  91    0x39fe3  1      
  callq .__cxa_guard_release                                                #  92    0x39fe4  5      
  jmpq .L_3a080                                                             #  93    0x39fe9  5      
  nop                                                                       #  94    0x39fee  1      
  nop                                                                       #  95    0x39fef  1      
.L_3a120:                                                                   #        0x39ff0  0      
  movl %eax, %ebx                                                           #  96    0x39ff0  2      
  movl $0x10030d20, %edi                                                    #  97    0x39ff2  5      
  nop                                                                       #  98    0x39ff7  1      
  nop                                                                       #  99    0x39ff8  1      
  callq .__cxa_guard_abort                                                  #  100   0x39ff9  5      
  movl %ebx, %edi                                                           #  101   0x39ffe  2      
  nop                                                                       #  102   0x3a000  1      
  nop                                                                       #  103   0x3a001  1      
  callq ._Unwind_Resume                                                     #  104   0x3a002  5      
  jmpq .L_3a120                                                             #  105   0x3a007  5      
  nop                                                                       #  106   0x3a00c  1      
  nop                                                                       #  107   0x3a00d  1      
                                                                                                     
.size _ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint, .-_ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint

