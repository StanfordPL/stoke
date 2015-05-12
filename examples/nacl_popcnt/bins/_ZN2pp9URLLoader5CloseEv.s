  .text
  .globl _ZN2pp9URLLoader5CloseEv
  .type _ZN2pp9URLLoader5CloseEv, @function

#! file-offset 0x27fe0
#! rip-offset  0x27fe0
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp9URLLoader5CloseEv:                       #        0x27fe0  0      
  cmpb $0x0, 0x10008c79(%rip)                    #  1     0x27fe0  7      
  pushq %rbx                                     #  2     0x27fe7  2      
  movl %edi, %ebx                                #  3     0x27fe9  2      
  je .L_28040                                    #  4     0x27feb  6      
  nop                                            #  5     0x27ff1  1      
  nop                                            #  6     0x27ff2  1      
.L_28000:                                        #        0x27ff3  0      
  movl 0x10008c6f(%rip), %eax                    #  7     0x27ff3  6      
  testq %rax, %rax                               #  8     0x27ff9  3      
  jne .L_280e0                                   #  9     0x27ffc  6      
  xchgw %ax, %ax                                 #  10    0x28002  3      
  nop                                            #  11    0x28005  1      
.L_28020:                                        #        0x28006  0      
  popq %rbx                                      #  12    0x28006  2      
  popq %r11                                      #  13    0x28008  3      
  andl $0xffffffe0, %r11d                        #  14    0x2800b  7      
  addq %r15, %r11                                #  15    0x28012  3      
  jmpq %r11                                      #  16    0x28015  3      
  nop                                            #  17    0x28018  1      
  nop                                            #  18    0x28019  1      
.L_28040:                                        #        0x2801a  0      
  movl $0x10030c60, %edi                         #  19    0x2801a  5      
  nop                                            #  20    0x2801f  1      
  nop                                            #  21    0x28020  1      
  callq .__cxa_guard_acquire                     #  22    0x28021  5      
  testl %eax, %eax                               #  23    0x28026  2      
  je .L_28000                                    #  24    0x28028  6      
  nop                                            #  25    0x2802e  1      
  nop                                            #  26    0x2802f  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x28030  5      
  movl %eax, %edi                                #  28    0x28035  2      
  movl $0x10020478, %esi                         #  29    0x28037  5      
  nop                                            #  30    0x2803c  1      
  nop                                            #  31    0x2803d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x2803e  5      
  movl $0x10030c60, %edi                         #  33    0x28043  5      
  movl %eax, 0x10008c1a(%rip)                    #  34    0x28048  6      
  nop                                            #  35    0x2804e  1      
  nop                                            #  36    0x2804f  1      
  callq .__cxa_guard_release                     #  37    0x28050  5      
  movl 0x10008c0d(%rip), %eax                    #  38    0x28055  6      
  testq %rax, %rax                               #  39    0x2805b  3      
  je .L_28020                                    #  40    0x2805e  6      
  xchgw %ax, %ax                                 #  41    0x28064  3      
  nop                                            #  42    0x28067  1      
.L_280e0:                                        #        0x28068  0      
  cmpb $0x0, 0x10008bf1(%rip)                    #  43    0x28068  7      
  je .L_28100                                    #  44    0x2806f  6      
  movl %ebx, %ebx                                #  45    0x28075  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x28077  5      
  movl %eax, %eax                                #  47    0x2807c  2      
  movl 0x24(%r15,%rax,1), %eax                   #  48    0x2807e  5      
  popq %rbx                                      #  49    0x28083  2      
  andl $0xffffffe0, %eax                         #  50    0x28085  5      
  addq %r15, %rax                                #  51    0x2808a  3      
  jmpq %rax                                      #  52    0x2808d  2      
.L_28100:                                        #        0x2808f  0      
  movl $0x10030c60, %edi                         #  53    0x2808f  5      
  nop                                            #  54    0x28094  1      
  nop                                            #  55    0x28095  1      
  callq .__cxa_guard_acquire                     #  56    0x28096  5      
  testl %eax, %eax                               #  57    0x2809b  2      
  jne .L_28160                                   #  58    0x2809d  6      
  nop                                            #  59    0x280a3  1      
  nop                                            #  60    0x280a4  1      
.L_28140:                                        #        0x280a5  0      
  movl 0x10008bbd(%rip), %eax                    #  61    0x280a5  6      
  movl %ebx, %ebx                                #  62    0x280ab  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x280ad  5      
  popq %rbx                                      #  64    0x280b2  2      
  movl %eax, %eax                                #  65    0x280b4  2      
  movl 0x24(%r15,%rax,1), %eax                   #  66    0x280b6  5      
  andl $0xffffffe0, %eax                         #  67    0x280bb  5      
  addq %r15, %rax                                #  68    0x280c0  3      
  jmpq %rax                                      #  69    0x280c3  2      
  nop                                            #  70    0x280c5  1      
.L_28160:                                        #        0x280c6  0      
  nop                                            #  71    0x280c6  1      
  nop                                            #  72    0x280c7  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x280c8  5      
  movl %eax, %edi                                #  74    0x280cd  2      
  movl $0x10020478, %esi                         #  75    0x280cf  5      
  nop                                            #  76    0x280d4  1      
  nop                                            #  77    0x280d5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x280d6  5      
  movl $0x10030c60, %edi                         #  79    0x280db  5      
  movl %eax, 0x10008b82(%rip)                    #  80    0x280e0  6      
  nop                                            #  81    0x280e6  1      
  nop                                            #  82    0x280e7  1      
  callq .__cxa_guard_release                     #  83    0x280e8  5      
  jmpq .L_28140                                  #  84    0x280ed  5      
  nop                                            #  85    0x280f2  1      
  nop                                            #  86    0x280f3  1      
.L_281e0:                                        #        0x280f4  0      
  movl %eax, %ebx                                #  87    0x280f4  2      
  movl $0x10030c60, %edi                         #  88    0x280f6  5      
  nop                                            #  89    0x280fb  1      
  nop                                            #  90    0x280fc  1      
  callq .__cxa_guard_abort                       #  91    0x280fd  5      
  movl %ebx, %edi                                #  92    0x28102  2      
  nop                                            #  93    0x28104  1      
  nop                                            #  94    0x28105  1      
  callq ._Unwind_Resume                          #  95    0x28106  5      
  jmpq .L_281e0                                  #  96    0x2810b  5      
  nop                                            #  97    0x28110  1      
  nop                                            #  98    0x28111  1      
                                                                          
.size _ZN2pp9URLLoader5CloseEv, .-_ZN2pp9URLLoader5CloseEv

