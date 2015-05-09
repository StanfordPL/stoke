  .text
  .globl _ZN2pp8Instance24UnregisterMessageHandlerEv
  .type _ZN2pp8Instance24UnregisterMessageHandlerEv, @function

#! file-offset 0x22560
#! rip-offset  0x22560
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance24UnregisterMessageHandlerEv:    #        0x22560  0      
  cmpb $0x0, 0x1000e6b1(%rip)                    #  1     0x22560  7      
  pushq %rbx                                     #  2     0x22567  2      
  movl %edi, %ebx                                #  3     0x22569  2      
  je .L_22620                                    #  4     0x2256b  6      
  nop                                            #  5     0x22571  1      
  nop                                            #  6     0x22572  1      
.L_22580:                                        #        0x22573  0      
  movl 0x1000e6a7(%rip), %eax                    #  7     0x22573  6      
  testq %rax, %rax                               #  8     0x22579  3      
  je .L_226c0                                    #  9     0x2257c  6      
  xchgw %ax, %ax                                 #  10    0x22582  3      
  nop                                            #  11    0x22585  1      
.L_225a0:                                        #        0x22586  0      
  cmpb $0x0, 0x1000e68b(%rip)                    #  12    0x22586  7      
  je .L_225c0                                    #  13    0x2258d  6      
  movl %ebx, %ebx                                #  14    0x22593  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  15    0x22595  5      
  movl %eax, %eax                                #  16    0x2259a  2      
  movl 0x8(%r15,%rax,1), %eax                    #  17    0x2259c  5      
  popq %rbx                                      #  18    0x225a1  2      
  andl $0xffffffe0, %eax                         #  19    0x225a3  5      
  addq %r15, %rax                                #  20    0x225a8  3      
  jmpq %rax                                      #  21    0x225ab  2      
.L_225c0:                                        #        0x225ad  0      
  movl $0x10030c18, %edi                         #  22    0x225ad  5      
  nop                                            #  23    0x225b2  1      
  nop                                            #  24    0x225b3  1      
  callq .__cxa_guard_acquire                     #  25    0x225b4  5      
  testl %eax, %eax                               #  26    0x225b9  2      
  jne .L_226e0                                   #  27    0x225bb  6      
  movl 0x1000e659(%rip), %eax                    #  28    0x225c1  6      
  nop                                            #  29    0x225c7  1      
  nop                                            #  30    0x225c8  1      
.L_22600:                                        #        0x225c9  0      
  movl %ebx, %ebx                                #  31    0x225c9  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  32    0x225cb  5      
  movl %eax, %eax                                #  33    0x225d0  2      
  movl 0x8(%r15,%rax,1), %eax                    #  34    0x225d2  5      
  popq %rbx                                      #  35    0x225d7  2      
  andl $0xffffffe0, %eax                         #  36    0x225d9  5      
  addq %r15, %rax                                #  37    0x225de  3      
  jmpq %rax                                      #  38    0x225e1  2      
  nop                                            #  39    0x225e3  1      
.L_22620:                                        #        0x225e4  0      
  movl $0x10030c18, %edi                         #  40    0x225e4  5      
  nop                                            #  41    0x225e9  1      
  nop                                            #  42    0x225ea  1      
  callq .__cxa_guard_acquire                     #  43    0x225eb  5      
  testl %eax, %eax                               #  44    0x225f0  2      
  je .L_22580                                    #  45    0x225f2  6      
  nop                                            #  46    0x225f8  1      
  nop                                            #  47    0x225f9  1      
  callq ._ZN2pp6Module3GetEv                     #  48    0x225fa  5      
  movl %eax, %edi                                #  49    0x225ff  2      
  movl $0x100202db, %esi                         #  50    0x22601  5      
  nop                                            #  51    0x22606  1      
  nop                                            #  52    0x22607  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  53    0x22608  5      
  movl $0x10030c18, %edi                         #  54    0x2260d  5      
  movl %eax, 0x1000e608(%rip)                    #  55    0x22612  6      
  nop                                            #  56    0x22618  1      
  nop                                            #  57    0x22619  1      
  callq .__cxa_guard_release                     #  58    0x2261a  5      
  movl 0x1000e5fb(%rip), %eax                    #  59    0x2261f  6      
  testq %rax, %rax                               #  60    0x22625  3      
  jne .L_225a0                                   #  61    0x22628  6      
  xchgw %ax, %ax                                 #  62    0x2262e  3      
  nop                                            #  63    0x22631  1      
.L_226c0:                                        #        0x22632  0      
  popq %rbx                                      #  64    0x22632  2      
  popq %r11                                      #  65    0x22634  3      
  andl $0xffffffe0, %r11d                        #  66    0x22637  7      
  addq %r15, %r11                                #  67    0x2263e  3      
  jmpq %r11                                      #  68    0x22641  3      
  nop                                            #  69    0x22644  1      
  nop                                            #  70    0x22645  1      
.L_226e0:                                        #        0x22646  0      
  nop                                            #  71    0x22646  1      
  nop                                            #  72    0x22647  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x22648  5      
  movl %eax, %edi                                #  74    0x2264d  2      
  movl $0x100202db, %esi                         #  75    0x2264f  5      
  nop                                            #  76    0x22654  1      
  nop                                            #  77    0x22655  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x22656  5      
  movl $0x10030c18, %edi                         #  79    0x2265b  5      
  movl %eax, 0x1000e5ba(%rip)                    #  80    0x22660  6      
  nop                                            #  81    0x22666  1      
  nop                                            #  82    0x22667  1      
  callq .__cxa_guard_release                     #  83    0x22668  5      
  movl 0x1000e5ad(%rip), %eax                    #  84    0x2266d  6      
  jmpq .L_22600                                  #  85    0x22673  5      
  nop                                            #  86    0x22678  1      
  nop                                            #  87    0x22679  1      
.L_22760:                                        #        0x2267a  0      
  movl %eax, %ebx                                #  88    0x2267a  2      
  movl $0x10030c18, %edi                         #  89    0x2267c  5      
  nop                                            #  90    0x22681  1      
  nop                                            #  91    0x22682  1      
  callq .__cxa_guard_abort                       #  92    0x22683  5      
  movl %ebx, %edi                                #  93    0x22688  2      
  nop                                            #  94    0x2268a  1      
  nop                                            #  95    0x2268b  1      
  callq ._Unwind_Resume                          #  96    0x2268c  5      
  jmpq .L_22760                                  #  97    0x22691  5      
  nop                                            #  98    0x22696  1      
  nop                                            #  99    0x22697  1      
                                                                          
.size _ZN2pp8Instance24UnregisterMessageHandlerEv, .-_ZN2pp8Instance24UnregisterMessageHandlerEv

