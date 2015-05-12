  .text
  .globl _ZNK2pp10InputEvent7GetTypeEv
  .type _ZNK2pp10InputEvent7GetTypeEv, @function

#! file-offset 0x36c20
#! rip-offset  0x36c20
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp10InputEvent7GetTypeEv:                  #        0x36c20  0      
  cmpb $0x0, 0xfffa149(%rip)                     #  1     0x36c20  7      
  pushq %rbx                                     #  2     0x36c27  2      
  movl %edi, %ebx                                #  3     0x36c29  2      
  je .L_36c80                                    #  4     0x36c2b  6      
  nop                                            #  5     0x36c31  1      
  nop                                            #  6     0x36c32  1      
.L_36c40:                                        #        0x36c33  0      
  movl 0xfffa13f(%rip), %eax                     #  7     0x36c33  6      
  testq %rax, %rax                               #  8     0x36c39  3      
  jne .L_36d20                                   #  9     0x36c3c  6      
  xchgw %ax, %ax                                 #  10    0x36c42  3      
  nop                                            #  11    0x36c45  1      
.L_36c60:                                        #        0x36c46  0      
  popq %rbx                                      #  12    0x36c46  2      
  popq %r11                                      #  13    0x36c48  3      
  movl $0xffffffff, %eax                         #  14    0x36c4b  5      
  andl $0xffffffe0, %r11d                        #  15    0x36c50  7      
  addq %r15, %r11                                #  16    0x36c57  3      
  jmpq %r11                                      #  17    0x36c5a  3      
  nop                                            #  18    0x36c5d  1      
.L_36c80:                                        #        0x36c5e  0      
  movl $0x10030d70, %edi                         #  19    0x36c5e  5      
  nop                                            #  20    0x36c63  1      
  nop                                            #  21    0x36c64  1      
  callq .__cxa_guard_acquire                     #  22    0x36c65  5      
  testl %eax, %eax                               #  23    0x36c6a  2      
  je .L_36c40                                    #  24    0x36c6c  6      
  nop                                            #  25    0x36c72  1      
  nop                                            #  26    0x36c73  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x36c74  5      
  movl %eax, %edi                                #  28    0x36c79  2      
  movl $0x100202c8, %esi                         #  29    0x36c7b  5      
  nop                                            #  30    0x36c80  1      
  nop                                            #  31    0x36c81  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x36c82  5      
  movl $0x10030d70, %edi                         #  33    0x36c87  5      
  movl %eax, 0xfffa0e6(%rip)                     #  34    0x36c8c  6      
  nop                                            #  35    0x36c92  1      
  nop                                            #  36    0x36c93  1      
  callq .__cxa_guard_release                     #  37    0x36c94  5      
  movl 0xfffa0d9(%rip), %eax                     #  38    0x36c99  6      
  testq %rax, %rax                               #  39    0x36c9f  3      
  je .L_36c60                                    #  40    0x36ca2  6      
  xchgw %ax, %ax                                 #  41    0x36ca8  3      
  nop                                            #  42    0x36cab  1      
.L_36d20:                                        #        0x36cac  0      
  cmpb $0x0, 0xfffa0bd(%rip)                     #  43    0x36cac  7      
  je .L_36d40                                    #  44    0x36cb3  6      
  movl %ebx, %ebx                                #  45    0x36cb9  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x36cbb  5      
  movl %eax, %eax                                #  47    0x36cc0  2      
  movl 0x10(%r15,%rax,1), %eax                   #  48    0x36cc2  5      
  popq %rbx                                      #  49    0x36cc7  2      
  andl $0xffffffe0, %eax                         #  50    0x36cc9  5      
  addq %r15, %rax                                #  51    0x36cce  3      
  jmpq %rax                                      #  52    0x36cd1  2      
.L_36d40:                                        #        0x36cd3  0      
  movl $0x10030d70, %edi                         #  53    0x36cd3  5      
  nop                                            #  54    0x36cd8  1      
  nop                                            #  55    0x36cd9  1      
  callq .__cxa_guard_acquire                     #  56    0x36cda  5      
  testl %eax, %eax                               #  57    0x36cdf  2      
  jne .L_36da0                                   #  58    0x36ce1  6      
  nop                                            #  59    0x36ce7  1      
  nop                                            #  60    0x36ce8  1      
.L_36d80:                                        #        0x36ce9  0      
  movl 0xfffa089(%rip), %eax                     #  61    0x36ce9  6      
  movl %ebx, %ebx                                #  62    0x36cef  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x36cf1  5      
  popq %rbx                                      #  64    0x36cf6  2      
  movl %eax, %eax                                #  65    0x36cf8  2      
  movl 0x10(%r15,%rax,1), %eax                   #  66    0x36cfa  5      
  andl $0xffffffe0, %eax                         #  67    0x36cff  5      
  addq %r15, %rax                                #  68    0x36d04  3      
  jmpq %rax                                      #  69    0x36d07  2      
  nop                                            #  70    0x36d09  1      
.L_36da0:                                        #        0x36d0a  0      
  nop                                            #  71    0x36d0a  1      
  nop                                            #  72    0x36d0b  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x36d0c  5      
  movl %eax, %edi                                #  74    0x36d11  2      
  movl $0x100202c8, %esi                         #  75    0x36d13  5      
  nop                                            #  76    0x36d18  1      
  nop                                            #  77    0x36d19  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x36d1a  5      
  movl $0x10030d70, %edi                         #  79    0x36d1f  5      
  movl %eax, 0xfffa04e(%rip)                     #  80    0x36d24  6      
  nop                                            #  81    0x36d2a  1      
  nop                                            #  82    0x36d2b  1      
  callq .__cxa_guard_release                     #  83    0x36d2c  5      
  jmpq .L_36d80                                  #  84    0x36d31  5      
  nop                                            #  85    0x36d36  1      
  nop                                            #  86    0x36d37  1      
.L_36e20:                                        #        0x36d38  0      
  movl %eax, %ebx                                #  87    0x36d38  2      
  movl $0x10030d70, %edi                         #  88    0x36d3a  5      
  nop                                            #  89    0x36d3f  1      
  nop                                            #  90    0x36d40  1      
  callq .__cxa_guard_abort                       #  91    0x36d41  5      
  movl %ebx, %edi                                #  92    0x36d46  2      
  nop                                            #  93    0x36d48  1      
  nop                                            #  94    0x36d49  1      
  callq ._Unwind_Resume                          #  95    0x36d4a  5      
  jmpq .L_36e20                                  #  96    0x36d4f  5      
  nop                                            #  97    0x36d54  1      
  nop                                            #  98    0x36d55  1      
                                                                          
.size _ZNK2pp10InputEvent7GetTypeEv, .-_ZNK2pp10InputEvent7GetTypeEv

