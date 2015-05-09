  .text
  .globl _ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint
  .type _ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint, @function

#! file-offset 0x39e20
#! rip-offset  0x39e20
#! capacity    704 bytes

# Text                                                                      #  Line  RIP      Bytes  
._ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint:  #        0x39e20  0      
  movq %rbx, -0x10(%rsp)                                                    #  1     0x39e20  5      
  movq %r12, -0x8(%rsp)                                                     #  2     0x39e25  5      
  subl $0x18, %esp                                                          #  3     0x39e2a  3      
  addq %r15, %rsp                                                           #  4     0x39e2d  3      
  cmpb $0x0, 0xfff6ee9(%rip)                                                #  5     0x39e30  7      
  movl %esi, %r12d                                                          #  6     0x39e37  3      
  movl %edi, %ebx                                                           #  7     0x39e3a  2      
  nop                                                                       #  8     0x39e3c  1      
  je .L_39ea0                                                               #  9     0x39e3d  6      
  nop                                                                       #  10    0x39e43  1      
  nop                                                                       #  11    0x39e44  1      
.L_39e60:                                                                   #        0x39e45  0      
  movl 0xfff6edd(%rip), %eax                                                #  12    0x39e45  6      
  testq %rax, %rax                                                          #  13    0x39e4b  3      
  jne .L_39f40                                                              #  14    0x39e4e  6      
  xchgw %ax, %ax                                                            #  15    0x39e54  3      
  nop                                                                       #  16    0x39e57  1      
.L_39e80:                                                                   #        0x39e58  0      
  movq 0x8(%rsp), %rbx                                                      #  17    0x39e58  5      
  movq 0x10(%rsp), %r12                                                     #  18    0x39e5d  5      
  addl $0x18, %esp                                                          #  19    0x39e62  3      
  addq %r15, %rsp                                                           #  20    0x39e65  3      
  popq %r11                                                                 #  21    0x39e68  3      
  andl $0xffffffe0, %r11d                                                   #  22    0x39e6b  7      
  addq %r15, %r11                                                           #  23    0x39e72  3      
  jmpq %r11                                                                 #  24    0x39e75  3      
  nop                                                                       #  25    0x39e78  1      
.L_39ea0:                                                                   #        0x39e79  0      
  movl $0x10030d20, %edi                                                    #  26    0x39e79  5      
  nop                                                                       #  27    0x39e7e  1      
  nop                                                                       #  28    0x39e7f  1      
  callq .__cxa_guard_acquire                                                #  29    0x39e80  5      
  testl %eax, %eax                                                          #  30    0x39e85  2      
  je .L_39e60                                                               #  31    0x39e87  6      
  nop                                                                       #  32    0x39e8d  1      
  nop                                                                       #  33    0x39e8e  1      
  callq ._ZN2pp6Module3GetEv                                                #  34    0x39e8f  5      
  movl %eax, %edi                                                           #  35    0x39e94  2      
  movl $0x100206d8, %esi                                                    #  36    0x39e96  5      
  nop                                                                       #  37    0x39e9b  1      
  nop                                                                       #  38    0x39e9c  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  39    0x39e9d  5      
  movl $0x10030d20, %edi                                                    #  40    0x39ea2  5      
  movl %eax, 0xfff6e7b(%rip)                                                #  41    0x39ea7  6      
  nop                                                                       #  42    0x39ead  1      
  nop                                                                       #  43    0x39eae  1      
  callq .__cxa_guard_release                                                #  44    0x39eaf  5      
  movl 0xfff6e6e(%rip), %eax                                                #  45    0x39eb4  6      
  testq %rax, %rax                                                          #  46    0x39eba  3      
  je .L_39e80                                                               #  47    0x39ebd  6      
  xchgw %ax, %ax                                                            #  48    0x39ec3  3      
  nop                                                                       #  49    0x39ec6  1      
.L_39f40:                                                                   #        0x39ec7  0      
  cmpb $0x0, 0xfff6e52(%rip)                                                #  50    0x39ec7  7      
  je .L_39fa0                                                               #  51    0x39ece  6      
  nop                                                                       #  52    0x39ed4  1      
  nop                                                                       #  53    0x39ed5  1      
.L_39f60:                                                                   #        0x39ed6  0      
  leal 0x20(%rsp), %ecx                                                     #  54    0x39ed6  4      
  movl %eax, %eax                                                           #  55    0x39eda  2      
  movl 0x4(%r15,%rax,1), %eax                                               #  56    0x39edc  5      
  movl %ebx, %ebx                                                           #  57    0x39ee1  2      
  movl 0x4(%r15,%rbx,1), %edi                                               #  58    0x39ee3  5      
  movl %r12d, %esi                                                          #  59    0x39ee8  3      
  movl %ecx, %edx                                                           #  60    0x39eeb  2      
  nop                                                                       #  61    0x39eed  1      
  andl $0xffffffe0, %eax                                                    #  62    0x39eee  5      
  addq %r15, %rax                                                           #  63    0x39ef3  3      
  callq %rax                                                                #  64    0x39ef6  2      
  jmpq .L_39e80                                                             #  65    0x39ef8  5      
  nop                                                                       #  66    0x39efd  1      
  nop                                                                       #  67    0x39efe  1      
.L_39fa0:                                                                   #        0x39eff  0      
  movl $0x10030d20, %edi                                                    #  68    0x39eff  5      
  nop                                                                       #  69    0x39f04  1      
  nop                                                                       #  70    0x39f05  1      
  callq .__cxa_guard_acquire                                                #  71    0x39f06  5      
  testl %eax, %eax                                                          #  72    0x39f0b  2      
  jne .L_3a000                                                              #  73    0x39f0d  6      
  nop                                                                       #  74    0x39f13  1      
  nop                                                                       #  75    0x39f14  1      
.L_39fe0:                                                                   #        0x39f15  0      
  movl 0xfff6e0d(%rip), %eax                                                #  76    0x39f15  6      
  jmpq .L_39f60                                                             #  77    0x39f1b  5      
  nop                                                                       #  78    0x39f20  1      
  nop                                                                       #  79    0x39f21  1      
.L_3a000:                                                                   #        0x39f22  0      
  nop                                                                       #  80    0x39f22  1      
  nop                                                                       #  81    0x39f23  1      
  callq ._ZN2pp6Module3GetEv                                                #  82    0x39f24  5      
  movl %eax, %edi                                                           #  83    0x39f29  2      
  movl $0x100206d8, %esi                                                    #  84    0x39f2b  5      
  nop                                                                       #  85    0x39f30  1      
  nop                                                                       #  86    0x39f31  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  87    0x39f32  5      
  movl $0x10030d20, %edi                                                    #  88    0x39f37  5      
  movl %eax, 0xfff6de6(%rip)                                                #  89    0x39f3c  6      
  nop                                                                       #  90    0x39f42  1      
  nop                                                                       #  91    0x39f43  1      
  callq .__cxa_guard_release                                                #  92    0x39f44  5      
  jmpq .L_39fe0                                                             #  93    0x39f49  5      
  nop                                                                       #  94    0x39f4e  1      
  nop                                                                       #  95    0x39f4f  1      
.L_3a080:                                                                   #        0x39f50  0      
  movl %eax, %ebx                                                           #  96    0x39f50  2      
  movl $0x10030d20, %edi                                                    #  97    0x39f52  5      
  nop                                                                       #  98    0x39f57  1      
  nop                                                                       #  99    0x39f58  1      
  callq .__cxa_guard_abort                                                  #  100   0x39f59  5      
  movl %ebx, %edi                                                           #  101   0x39f5e  2      
  nop                                                                       #  102   0x39f60  1      
  nop                                                                       #  103   0x39f61  1      
  callq ._Unwind_Resume                                                     #  104   0x39f62  5      
  jmpq .L_3a080                                                             #  105   0x39f67  5      
  nop                                                                       #  106   0x39f6c  1      
  nop                                                                       #  107   0x39f6d  1      
                                                                                                     
.size _ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint, .-_ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint

