  .text
  .globl _ZNK2pp10InputEvent7GetTypeEv
  .type _ZNK2pp10InputEvent7GetTypeEv, @function

#! file-offset 0x36ca0
#! rip-offset  0x36ca0
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp10InputEvent7GetTypeEv:                  #        0x36ca0  0      
  cmpb $0x0, 0xfffa0c9(%rip)                     #  1     0x36ca0  7      
  pushq %rbx                                     #  2     0x36ca7  2      
  movl %edi, %ebx                                #  3     0x36ca9  2      
  je .L_36d00                                    #  4     0x36cab  6      
  nop                                            #  5     0x36cb1  1      
  nop                                            #  6     0x36cb2  1      
.L_36cc0:                                        #        0x36cb3  0      
  movl 0xfffa0bf(%rip), %eax                     #  7     0x36cb3  6      
  testq %rax, %rax                               #  8     0x36cb9  3      
  jne .L_36da0                                   #  9     0x36cbc  6      
  xchgw %ax, %ax                                 #  10    0x36cc2  3      
  nop                                            #  11    0x36cc5  1      
.L_36ce0:                                        #        0x36cc6  0      
  popq %rbx                                      #  12    0x36cc6  2      
  popq %r11                                      #  13    0x36cc8  3      
  movl $0xffffffff, %eax                         #  14    0x36ccb  5      
  andl $0xffffffe0, %r11d                        #  15    0x36cd0  7      
  addq %r15, %r11                                #  16    0x36cd7  3      
  jmpq %r11                                      #  17    0x36cda  3      
  nop                                            #  18    0x36cdd  1      
.L_36d00:                                        #        0x36cde  0      
  movl $0x10030d70, %edi                         #  19    0x36cde  5      
  nop                                            #  20    0x36ce3  1      
  nop                                            #  21    0x36ce4  1      
  callq .__cxa_guard_acquire                     #  22    0x36ce5  5      
  testl %eax, %eax                               #  23    0x36cea  2      
  je .L_36cc0                                    #  24    0x36cec  6      
  nop                                            #  25    0x36cf2  1      
  nop                                            #  26    0x36cf3  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x36cf4  5      
  movl %eax, %edi                                #  28    0x36cf9  2      
  movl $0x100202c8, %esi                         #  29    0x36cfb  5      
  nop                                            #  30    0x36d00  1      
  nop                                            #  31    0x36d01  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x36d02  5      
  movl $0x10030d70, %edi                         #  33    0x36d07  5      
  movl %eax, 0xfffa066(%rip)                     #  34    0x36d0c  6      
  nop                                            #  35    0x36d12  1      
  nop                                            #  36    0x36d13  1      
  callq .__cxa_guard_release                     #  37    0x36d14  5      
  movl 0xfffa059(%rip), %eax                     #  38    0x36d19  6      
  testq %rax, %rax                               #  39    0x36d1f  3      
  je .L_36ce0                                    #  40    0x36d22  6      
  xchgw %ax, %ax                                 #  41    0x36d28  3      
  nop                                            #  42    0x36d2b  1      
.L_36da0:                                        #        0x36d2c  0      
  cmpb $0x0, 0xfffa03d(%rip)                     #  43    0x36d2c  7      
  je .L_36dc0                                    #  44    0x36d33  6      
  movl %ebx, %ebx                                #  45    0x36d39  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x36d3b  5      
  movl %eax, %eax                                #  47    0x36d40  2      
  movl 0x10(%r15,%rax,1), %eax                   #  48    0x36d42  5      
  popq %rbx                                      #  49    0x36d47  2      
  andl $0xffffffe0, %eax                         #  50    0x36d49  5      
  addq %r15, %rax                                #  51    0x36d4e  3      
  jmpq %rax                                      #  52    0x36d51  2      
.L_36dc0:                                        #        0x36d53  0      
  movl $0x10030d70, %edi                         #  53    0x36d53  5      
  nop                                            #  54    0x36d58  1      
  nop                                            #  55    0x36d59  1      
  callq .__cxa_guard_acquire                     #  56    0x36d5a  5      
  testl %eax, %eax                               #  57    0x36d5f  2      
  jne .L_36e20                                   #  58    0x36d61  6      
  nop                                            #  59    0x36d67  1      
  nop                                            #  60    0x36d68  1      
.L_36e00:                                        #        0x36d69  0      
  movl 0xfffa009(%rip), %eax                     #  61    0x36d69  6      
  movl %ebx, %ebx                                #  62    0x36d6f  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x36d71  5      
  popq %rbx                                      #  64    0x36d76  2      
  movl %eax, %eax                                #  65    0x36d78  2      
  movl 0x10(%r15,%rax,1), %eax                   #  66    0x36d7a  5      
  andl $0xffffffe0, %eax                         #  67    0x36d7f  5      
  addq %r15, %rax                                #  68    0x36d84  3      
  jmpq %rax                                      #  69    0x36d87  2      
  nop                                            #  70    0x36d89  1      
.L_36e20:                                        #        0x36d8a  0      
  nop                                            #  71    0x36d8a  1      
  nop                                            #  72    0x36d8b  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x36d8c  5      
  movl %eax, %edi                                #  74    0x36d91  2      
  movl $0x100202c8, %esi                         #  75    0x36d93  5      
  nop                                            #  76    0x36d98  1      
  nop                                            #  77    0x36d99  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x36d9a  5      
  movl $0x10030d70, %edi                         #  79    0x36d9f  5      
  movl %eax, 0xfff9fce(%rip)                     #  80    0x36da4  6      
  nop                                            #  81    0x36daa  1      
  nop                                            #  82    0x36dab  1      
  callq .__cxa_guard_release                     #  83    0x36dac  5      
  jmpq .L_36e00                                  #  84    0x36db1  5      
  nop                                            #  85    0x36db6  1      
  nop                                            #  86    0x36db7  1      
.L_36ea0:                                        #        0x36db8  0      
  movl %eax, %ebx                                #  87    0x36db8  2      
  movl $0x10030d70, %edi                         #  88    0x36dba  5      
  nop                                            #  89    0x36dbf  1      
  nop                                            #  90    0x36dc0  1      
  callq .__cxa_guard_abort                       #  91    0x36dc1  5      
  movl %ebx, %edi                                #  92    0x36dc6  2      
  nop                                            #  93    0x36dc8  1      
  nop                                            #  94    0x36dc9  1      
  callq ._Unwind_Resume                          #  95    0x36dca  5      
  jmpq .L_36ea0                                  #  96    0x36dcf  5      
  nop                                            #  97    0x36dd4  1      
  nop                                            #  98    0x36dd5  1      
                                                                          
.size _ZNK2pp10InputEvent7GetTypeEv, .-_ZNK2pp10InputEvent7GetTypeEv

