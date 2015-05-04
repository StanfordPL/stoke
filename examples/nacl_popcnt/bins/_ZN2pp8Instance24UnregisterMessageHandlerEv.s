  .text
  .globl _ZN2pp8Instance24UnregisterMessageHandlerEv
  .type _ZN2pp8Instance24UnregisterMessageHandlerEv, @function

#! file-offset 0x22600
#! rip-offset  0x22600
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance24UnregisterMessageHandlerEv:    #        0x22600  0      
  cmpb $0x0, 0x1000e611(%rip)                    #  1     0x22600  7      
  pushq %rbx                                     #  2     0x22607  2      
  movl %edi, %ebx                                #  3     0x22609  2      
  je .L_226c0                                    #  4     0x2260b  6      
  nop                                            #  5     0x22611  1      
  nop                                            #  6     0x22612  1      
.L_22620:                                        #        0x22613  0      
  movl 0x1000e607(%rip), %eax                    #  7     0x22613  6      
  testq %rax, %rax                               #  8     0x22619  3      
  je .L_22760                                    #  9     0x2261c  6      
  xchgw %ax, %ax                                 #  10    0x22622  3      
  nop                                            #  11    0x22625  1      
.L_22640:                                        #        0x22626  0      
  cmpb $0x0, 0x1000e5eb(%rip)                    #  12    0x22626  7      
  je .L_22660                                    #  13    0x2262d  6      
  movl %ebx, %ebx                                #  14    0x22633  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  15    0x22635  5      
  movl %eax, %eax                                #  16    0x2263a  2      
  movl 0x8(%r15,%rax,1), %eax                    #  17    0x2263c  5      
  popq %rbx                                      #  18    0x22641  2      
  andl $0xffffffe0, %eax                         #  19    0x22643  5      
  addq %r15, %rax                                #  20    0x22648  3      
  jmpq %rax                                      #  21    0x2264b  2      
.L_22660:                                        #        0x2264d  0      
  movl $0x10030c18, %edi                         #  22    0x2264d  5      
  nop                                            #  23    0x22652  1      
  nop                                            #  24    0x22653  1      
  callq .__cxa_guard_acquire                     #  25    0x22654  5      
  testl %eax, %eax                               #  26    0x22659  2      
  jne .L_22780                                   #  27    0x2265b  6      
  movl 0x1000e5b9(%rip), %eax                    #  28    0x22661  6      
  nop                                            #  29    0x22667  1      
  nop                                            #  30    0x22668  1      
.L_226a0:                                        #        0x22669  0      
  movl %ebx, %ebx                                #  31    0x22669  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  32    0x2266b  5      
  movl %eax, %eax                                #  33    0x22670  2      
  movl 0x8(%r15,%rax,1), %eax                    #  34    0x22672  5      
  popq %rbx                                      #  35    0x22677  2      
  andl $0xffffffe0, %eax                         #  36    0x22679  5      
  addq %r15, %rax                                #  37    0x2267e  3      
  jmpq %rax                                      #  38    0x22681  2      
  nop                                            #  39    0x22683  1      
.L_226c0:                                        #        0x22684  0      
  movl $0x10030c18, %edi                         #  40    0x22684  5      
  nop                                            #  41    0x22689  1      
  nop                                            #  42    0x2268a  1      
  callq .__cxa_guard_acquire                     #  43    0x2268b  5      
  testl %eax, %eax                               #  44    0x22690  2      
  je .L_22620                                    #  45    0x22692  6      
  nop                                            #  46    0x22698  1      
  nop                                            #  47    0x22699  1      
  callq ._ZN2pp6Module3GetEv                     #  48    0x2269a  5      
  movl %eax, %edi                                #  49    0x2269f  2      
  movl $0x100202db, %esi                         #  50    0x226a1  5      
  nop                                            #  51    0x226a6  1      
  nop                                            #  52    0x226a7  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  53    0x226a8  5      
  movl $0x10030c18, %edi                         #  54    0x226ad  5      
  movl %eax, 0x1000e568(%rip)                    #  55    0x226b2  6      
  nop                                            #  56    0x226b8  1      
  nop                                            #  57    0x226b9  1      
  callq .__cxa_guard_release                     #  58    0x226ba  5      
  movl 0x1000e55b(%rip), %eax                    #  59    0x226bf  6      
  testq %rax, %rax                               #  60    0x226c5  3      
  jne .L_22640                                   #  61    0x226c8  6      
  xchgw %ax, %ax                                 #  62    0x226ce  3      
  nop                                            #  63    0x226d1  1      
.L_22760:                                        #        0x226d2  0      
  popq %rbx                                      #  64    0x226d2  2      
  popq %r11                                      #  65    0x226d4  3      
  andl $0xffffffe0, %r11d                        #  66    0x226d7  7      
  addq %r15, %r11                                #  67    0x226de  3      
  jmpq %r11                                      #  68    0x226e1  3      
  nop                                            #  69    0x226e4  1      
  nop                                            #  70    0x226e5  1      
.L_22780:                                        #        0x226e6  0      
  nop                                            #  71    0x226e6  1      
  nop                                            #  72    0x226e7  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x226e8  5      
  movl %eax, %edi                                #  74    0x226ed  2      
  movl $0x100202db, %esi                         #  75    0x226ef  5      
  nop                                            #  76    0x226f4  1      
  nop                                            #  77    0x226f5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x226f6  5      
  movl $0x10030c18, %edi                         #  79    0x226fb  5      
  movl %eax, 0x1000e51a(%rip)                    #  80    0x22700  6      
  nop                                            #  81    0x22706  1      
  nop                                            #  82    0x22707  1      
  callq .__cxa_guard_release                     #  83    0x22708  5      
  movl 0x1000e50d(%rip), %eax                    #  84    0x2270d  6      
  jmpq .L_226a0                                  #  85    0x22713  5      
  nop                                            #  86    0x22718  1      
  nop                                            #  87    0x22719  1      
.L_22800:                                        #        0x2271a  0      
  movl %eax, %ebx                                #  88    0x2271a  2      
  movl $0x10030c18, %edi                         #  89    0x2271c  5      
  nop                                            #  90    0x22721  1      
  nop                                            #  91    0x22722  1      
  callq .__cxa_guard_abort                       #  92    0x22723  5      
  movl %ebx, %edi                                #  93    0x22728  2      
  nop                                            #  94    0x2272a  1      
  nop                                            #  95    0x2272b  1      
  callq ._Unwind_Resume                          #  96    0x2272c  5      
  jmpq .L_22800                                  #  97    0x22731  5      
  nop                                            #  98    0x22736  1      
  nop                                            #  99    0x22737  1      
                                                                          
.size _ZN2pp8Instance24UnregisterMessageHandlerEv, .-_ZN2pp8Instance24UnregisterMessageHandlerEv

