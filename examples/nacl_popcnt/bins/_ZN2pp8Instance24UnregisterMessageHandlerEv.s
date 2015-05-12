  .text
  .globl _ZN2pp8Instance24UnregisterMessageHandlerEv
  .type _ZN2pp8Instance24UnregisterMessageHandlerEv, @function

#! file-offset 0x22580
#! rip-offset  0x22580
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance24UnregisterMessageHandlerEv:    #        0x22580  0      
  cmpb $0x0, 0x1000e691(%rip)                    #  1     0x22580  7      
  pushq %rbx                                     #  2     0x22587  2      
  movl %edi, %ebx                                #  3     0x22589  2      
  je .L_22640                                    #  4     0x2258b  6      
  nop                                            #  5     0x22591  1      
  nop                                            #  6     0x22592  1      
.L_225a0:                                        #        0x22593  0      
  movl 0x1000e687(%rip), %eax                    #  7     0x22593  6      
  testq %rax, %rax                               #  8     0x22599  3      
  je .L_226e0                                    #  9     0x2259c  6      
  xchgw %ax, %ax                                 #  10    0x225a2  3      
  nop                                            #  11    0x225a5  1      
.L_225c0:                                        #        0x225a6  0      
  cmpb $0x0, 0x1000e66b(%rip)                    #  12    0x225a6  7      
  je .L_225e0                                    #  13    0x225ad  6      
  movl %ebx, %ebx                                #  14    0x225b3  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  15    0x225b5  5      
  movl %eax, %eax                                #  16    0x225ba  2      
  movl 0x8(%r15,%rax,1), %eax                    #  17    0x225bc  5      
  popq %rbx                                      #  18    0x225c1  2      
  andl $0xffffffe0, %eax                         #  19    0x225c3  5      
  addq %r15, %rax                                #  20    0x225c8  3      
  jmpq %rax                                      #  21    0x225cb  2      
.L_225e0:                                        #        0x225cd  0      
  movl $0x10030c18, %edi                         #  22    0x225cd  5      
  nop                                            #  23    0x225d2  1      
  nop                                            #  24    0x225d3  1      
  callq .__cxa_guard_acquire                     #  25    0x225d4  5      
  testl %eax, %eax                               #  26    0x225d9  2      
  jne .L_22700                                   #  27    0x225db  6      
  movl 0x1000e639(%rip), %eax                    #  28    0x225e1  6      
  nop                                            #  29    0x225e7  1      
  nop                                            #  30    0x225e8  1      
.L_22620:                                        #        0x225e9  0      
  movl %ebx, %ebx                                #  31    0x225e9  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  32    0x225eb  5      
  movl %eax, %eax                                #  33    0x225f0  2      
  movl 0x8(%r15,%rax,1), %eax                    #  34    0x225f2  5      
  popq %rbx                                      #  35    0x225f7  2      
  andl $0xffffffe0, %eax                         #  36    0x225f9  5      
  addq %r15, %rax                                #  37    0x225fe  3      
  jmpq %rax                                      #  38    0x22601  2      
  nop                                            #  39    0x22603  1      
.L_22640:                                        #        0x22604  0      
  movl $0x10030c18, %edi                         #  40    0x22604  5      
  nop                                            #  41    0x22609  1      
  nop                                            #  42    0x2260a  1      
  callq .__cxa_guard_acquire                     #  43    0x2260b  5      
  testl %eax, %eax                               #  44    0x22610  2      
  je .L_225a0                                    #  45    0x22612  6      
  nop                                            #  46    0x22618  1      
  nop                                            #  47    0x22619  1      
  callq ._ZN2pp6Module3GetEv                     #  48    0x2261a  5      
  movl %eax, %edi                                #  49    0x2261f  2      
  movl $0x100202db, %esi                         #  50    0x22621  5      
  nop                                            #  51    0x22626  1      
  nop                                            #  52    0x22627  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  53    0x22628  5      
  movl $0x10030c18, %edi                         #  54    0x2262d  5      
  movl %eax, 0x1000e5e8(%rip)                    #  55    0x22632  6      
  nop                                            #  56    0x22638  1      
  nop                                            #  57    0x22639  1      
  callq .__cxa_guard_release                     #  58    0x2263a  5      
  movl 0x1000e5db(%rip), %eax                    #  59    0x2263f  6      
  testq %rax, %rax                               #  60    0x22645  3      
  jne .L_225c0                                   #  61    0x22648  6      
  xchgw %ax, %ax                                 #  62    0x2264e  3      
  nop                                            #  63    0x22651  1      
.L_226e0:                                        #        0x22652  0      
  popq %rbx                                      #  64    0x22652  2      
  popq %r11                                      #  65    0x22654  3      
  andl $0xffffffe0, %r11d                        #  66    0x22657  7      
  addq %r15, %r11                                #  67    0x2265e  3      
  jmpq %r11                                      #  68    0x22661  3      
  nop                                            #  69    0x22664  1      
  nop                                            #  70    0x22665  1      
.L_22700:                                        #        0x22666  0      
  nop                                            #  71    0x22666  1      
  nop                                            #  72    0x22667  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x22668  5      
  movl %eax, %edi                                #  74    0x2266d  2      
  movl $0x100202db, %esi                         #  75    0x2266f  5      
  nop                                            #  76    0x22674  1      
  nop                                            #  77    0x22675  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x22676  5      
  movl $0x10030c18, %edi                         #  79    0x2267b  5      
  movl %eax, 0x1000e59a(%rip)                    #  80    0x22680  6      
  nop                                            #  81    0x22686  1      
  nop                                            #  82    0x22687  1      
  callq .__cxa_guard_release                     #  83    0x22688  5      
  movl 0x1000e58d(%rip), %eax                    #  84    0x2268d  6      
  jmpq .L_22620                                  #  85    0x22693  5      
  nop                                            #  86    0x22698  1      
  nop                                            #  87    0x22699  1      
.L_22780:                                        #        0x2269a  0      
  movl %eax, %ebx                                #  88    0x2269a  2      
  movl $0x10030c18, %edi                         #  89    0x2269c  5      
  nop                                            #  90    0x226a1  1      
  nop                                            #  91    0x226a2  1      
  callq .__cxa_guard_abort                       #  92    0x226a3  5      
  movl %ebx, %edi                                #  93    0x226a8  2      
  nop                                            #  94    0x226aa  1      
  nop                                            #  95    0x226ab  1      
  callq ._Unwind_Resume                          #  96    0x226ac  5      
  jmpq .L_22780                                  #  97    0x226b1  5      
  nop                                            #  98    0x226b6  1      
  nop                                            #  99    0x226b7  1      
                                                                          
.size _ZN2pp8Instance24UnregisterMessageHandlerEv, .-_ZN2pp8Instance24UnregisterMessageHandlerEv

