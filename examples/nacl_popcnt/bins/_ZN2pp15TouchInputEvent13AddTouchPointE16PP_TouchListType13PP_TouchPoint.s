  .text
  .globl _ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint
  .type _ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint, @function

#! file-offset 0x39e40
#! rip-offset  0x39e40
#! capacity    704 bytes

# Text                                                                      #  Line  RIP      Bytes  
._ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint:  #        0x39e40  0      
  movq %rbx, -0x10(%rsp)                                                    #  1     0x39e40  5      
  movq %r12, -0x8(%rsp)                                                     #  2     0x39e45  5      
  subl $0x18, %esp                                                          #  3     0x39e4a  3      
  addq %r15, %rsp                                                           #  4     0x39e4d  3      
  cmpb $0x0, 0xfff6ec9(%rip)                                                #  5     0x39e50  7      
  movl %esi, %r12d                                                          #  6     0x39e57  3      
  movl %edi, %ebx                                                           #  7     0x39e5a  2      
  nop                                                                       #  8     0x39e5c  1      
  je .L_39ec0                                                               #  9     0x39e5d  6      
  nop                                                                       #  10    0x39e63  1      
  nop                                                                       #  11    0x39e64  1      
.L_39e80:                                                                   #        0x39e65  0      
  movl 0xfff6ebd(%rip), %eax                                                #  12    0x39e65  6      
  testq %rax, %rax                                                          #  13    0x39e6b  3      
  jne .L_39f60                                                              #  14    0x39e6e  6      
  xchgw %ax, %ax                                                            #  15    0x39e74  3      
  nop                                                                       #  16    0x39e77  1      
.L_39ea0:                                                                   #        0x39e78  0      
  movq 0x8(%rsp), %rbx                                                      #  17    0x39e78  5      
  movq 0x10(%rsp), %r12                                                     #  18    0x39e7d  5      
  addl $0x18, %esp                                                          #  19    0x39e82  3      
  addq %r15, %rsp                                                           #  20    0x39e85  3      
  popq %r11                                                                 #  21    0x39e88  3      
  andl $0xffffffe0, %r11d                                                   #  22    0x39e8b  7      
  addq %r15, %r11                                                           #  23    0x39e92  3      
  jmpq %r11                                                                 #  24    0x39e95  3      
  nop                                                                       #  25    0x39e98  1      
.L_39ec0:                                                                   #        0x39e99  0      
  movl $0x10030d20, %edi                                                    #  26    0x39e99  5      
  nop                                                                       #  27    0x39e9e  1      
  nop                                                                       #  28    0x39e9f  1      
  callq .__cxa_guard_acquire                                                #  29    0x39ea0  5      
  testl %eax, %eax                                                          #  30    0x39ea5  2      
  je .L_39e80                                                               #  31    0x39ea7  6      
  nop                                                                       #  32    0x39ead  1      
  nop                                                                       #  33    0x39eae  1      
  callq ._ZN2pp6Module3GetEv                                                #  34    0x39eaf  5      
  movl %eax, %edi                                                           #  35    0x39eb4  2      
  movl $0x100206d8, %esi                                                    #  36    0x39eb6  5      
  nop                                                                       #  37    0x39ebb  1      
  nop                                                                       #  38    0x39ebc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  39    0x39ebd  5      
  movl $0x10030d20, %edi                                                    #  40    0x39ec2  5      
  movl %eax, 0xfff6e5b(%rip)                                                #  41    0x39ec7  6      
  nop                                                                       #  42    0x39ecd  1      
  nop                                                                       #  43    0x39ece  1      
  callq .__cxa_guard_release                                                #  44    0x39ecf  5      
  movl 0xfff6e4e(%rip), %eax                                                #  45    0x39ed4  6      
  testq %rax, %rax                                                          #  46    0x39eda  3      
  je .L_39ea0                                                               #  47    0x39edd  6      
  xchgw %ax, %ax                                                            #  48    0x39ee3  3      
  nop                                                                       #  49    0x39ee6  1      
.L_39f60:                                                                   #        0x39ee7  0      
  cmpb $0x0, 0xfff6e32(%rip)                                                #  50    0x39ee7  7      
  je .L_39fc0                                                               #  51    0x39eee  6      
  nop                                                                       #  52    0x39ef4  1      
  nop                                                                       #  53    0x39ef5  1      
.L_39f80:                                                                   #        0x39ef6  0      
  leal 0x20(%rsp), %ecx                                                     #  54    0x39ef6  4      
  movl %eax, %eax                                                           #  55    0x39efa  2      
  movl 0x4(%r15,%rax,1), %eax                                               #  56    0x39efc  5      
  movl %ebx, %ebx                                                           #  57    0x39f01  2      
  movl 0x4(%r15,%rbx,1), %edi                                               #  58    0x39f03  5      
  movl %r12d, %esi                                                          #  59    0x39f08  3      
  movl %ecx, %edx                                                           #  60    0x39f0b  2      
  nop                                                                       #  61    0x39f0d  1      
  andl $0xffffffe0, %eax                                                    #  62    0x39f0e  5      
  addq %r15, %rax                                                           #  63    0x39f13  3      
  callq %rax                                                                #  64    0x39f16  2      
  jmpq .L_39ea0                                                             #  65    0x39f18  5      
  nop                                                                       #  66    0x39f1d  1      
  nop                                                                       #  67    0x39f1e  1      
.L_39fc0:                                                                   #        0x39f1f  0      
  movl $0x10030d20, %edi                                                    #  68    0x39f1f  5      
  nop                                                                       #  69    0x39f24  1      
  nop                                                                       #  70    0x39f25  1      
  callq .__cxa_guard_acquire                                                #  71    0x39f26  5      
  testl %eax, %eax                                                          #  72    0x39f2b  2      
  jne .L_3a020                                                              #  73    0x39f2d  6      
  nop                                                                       #  74    0x39f33  1      
  nop                                                                       #  75    0x39f34  1      
.L_3a000:                                                                   #        0x39f35  0      
  movl 0xfff6ded(%rip), %eax                                                #  76    0x39f35  6      
  jmpq .L_39f80                                                             #  77    0x39f3b  5      
  nop                                                                       #  78    0x39f40  1      
  nop                                                                       #  79    0x39f41  1      
.L_3a020:                                                                   #        0x39f42  0      
  nop                                                                       #  80    0x39f42  1      
  nop                                                                       #  81    0x39f43  1      
  callq ._ZN2pp6Module3GetEv                                                #  82    0x39f44  5      
  movl %eax, %edi                                                           #  83    0x39f49  2      
  movl $0x100206d8, %esi                                                    #  84    0x39f4b  5      
  nop                                                                       #  85    0x39f50  1      
  nop                                                                       #  86    0x39f51  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                             #  87    0x39f52  5      
  movl $0x10030d20, %edi                                                    #  88    0x39f57  5      
  movl %eax, 0xfff6dc6(%rip)                                                #  89    0x39f5c  6      
  nop                                                                       #  90    0x39f62  1      
  nop                                                                       #  91    0x39f63  1      
  callq .__cxa_guard_release                                                #  92    0x39f64  5      
  jmpq .L_3a000                                                             #  93    0x39f69  5      
  nop                                                                       #  94    0x39f6e  1      
  nop                                                                       #  95    0x39f6f  1      
.L_3a0a0:                                                                   #        0x39f70  0      
  movl %eax, %ebx                                                           #  96    0x39f70  2      
  movl $0x10030d20, %edi                                                    #  97    0x39f72  5      
  nop                                                                       #  98    0x39f77  1      
  nop                                                                       #  99    0x39f78  1      
  callq .__cxa_guard_abort                                                  #  100   0x39f79  5      
  movl %ebx, %edi                                                           #  101   0x39f7e  2      
  nop                                                                       #  102   0x39f80  1      
  nop                                                                       #  103   0x39f81  1      
  callq ._Unwind_Resume                                                     #  104   0x39f82  5      
  jmpq .L_3a0a0                                                             #  105   0x39f87  5      
  nop                                                                       #  106   0x39f8c  1      
  nop                                                                       #  107   0x39f8d  1      
                                                                                                     
.size _ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint, .-_ZN2pp15TouchInputEvent13AddTouchPointE16PP_TouchListType13PP_TouchPoint

