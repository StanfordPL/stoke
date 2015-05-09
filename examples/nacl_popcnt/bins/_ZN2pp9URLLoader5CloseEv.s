  .text
  .globl _ZN2pp9URLLoader5CloseEv
  .type _ZN2pp9URLLoader5CloseEv, @function

#! file-offset 0x27fc0
#! rip-offset  0x27fc0
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp9URLLoader5CloseEv:                       #        0x27fc0  0      
  cmpb $0x0, 0x10008c99(%rip)                    #  1     0x27fc0  7      
  pushq %rbx                                     #  2     0x27fc7  2      
  movl %edi, %ebx                                #  3     0x27fc9  2      
  je .L_28020                                    #  4     0x27fcb  6      
  nop                                            #  5     0x27fd1  1      
  nop                                            #  6     0x27fd2  1      
.L_27fe0:                                        #        0x27fd3  0      
  movl 0x10008c8f(%rip), %eax                    #  7     0x27fd3  6      
  testq %rax, %rax                               #  8     0x27fd9  3      
  jne .L_280c0                                   #  9     0x27fdc  6      
  xchgw %ax, %ax                                 #  10    0x27fe2  3      
  nop                                            #  11    0x27fe5  1      
.L_28000:                                        #        0x27fe6  0      
  popq %rbx                                      #  12    0x27fe6  2      
  popq %r11                                      #  13    0x27fe8  3      
  andl $0xffffffe0, %r11d                        #  14    0x27feb  7      
  addq %r15, %r11                                #  15    0x27ff2  3      
  jmpq %r11                                      #  16    0x27ff5  3      
  nop                                            #  17    0x27ff8  1      
  nop                                            #  18    0x27ff9  1      
.L_28020:                                        #        0x27ffa  0      
  movl $0x10030c60, %edi                         #  19    0x27ffa  5      
  nop                                            #  20    0x27fff  1      
  nop                                            #  21    0x28000  1      
  callq .__cxa_guard_acquire                     #  22    0x28001  5      
  testl %eax, %eax                               #  23    0x28006  2      
  je .L_27fe0                                    #  24    0x28008  6      
  nop                                            #  25    0x2800e  1      
  nop                                            #  26    0x2800f  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x28010  5      
  movl %eax, %edi                                #  28    0x28015  2      
  movl $0x10020478, %esi                         #  29    0x28017  5      
  nop                                            #  30    0x2801c  1      
  nop                                            #  31    0x2801d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x2801e  5      
  movl $0x10030c60, %edi                         #  33    0x28023  5      
  movl %eax, 0x10008c3a(%rip)                    #  34    0x28028  6      
  nop                                            #  35    0x2802e  1      
  nop                                            #  36    0x2802f  1      
  callq .__cxa_guard_release                     #  37    0x28030  5      
  movl 0x10008c2d(%rip), %eax                    #  38    0x28035  6      
  testq %rax, %rax                               #  39    0x2803b  3      
  je .L_28000                                    #  40    0x2803e  6      
  xchgw %ax, %ax                                 #  41    0x28044  3      
  nop                                            #  42    0x28047  1      
.L_280c0:                                        #        0x28048  0      
  cmpb $0x0, 0x10008c11(%rip)                    #  43    0x28048  7      
  je .L_280e0                                    #  44    0x2804f  6      
  movl %ebx, %ebx                                #  45    0x28055  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x28057  5      
  movl %eax, %eax                                #  47    0x2805c  2      
  movl 0x24(%r15,%rax,1), %eax                   #  48    0x2805e  5      
  popq %rbx                                      #  49    0x28063  2      
  andl $0xffffffe0, %eax                         #  50    0x28065  5      
  addq %r15, %rax                                #  51    0x2806a  3      
  jmpq %rax                                      #  52    0x2806d  2      
.L_280e0:                                        #        0x2806f  0      
  movl $0x10030c60, %edi                         #  53    0x2806f  5      
  nop                                            #  54    0x28074  1      
  nop                                            #  55    0x28075  1      
  callq .__cxa_guard_acquire                     #  56    0x28076  5      
  testl %eax, %eax                               #  57    0x2807b  2      
  jne .L_28140                                   #  58    0x2807d  6      
  nop                                            #  59    0x28083  1      
  nop                                            #  60    0x28084  1      
.L_28120:                                        #        0x28085  0      
  movl 0x10008bdd(%rip), %eax                    #  61    0x28085  6      
  movl %ebx, %ebx                                #  62    0x2808b  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x2808d  5      
  popq %rbx                                      #  64    0x28092  2      
  movl %eax, %eax                                #  65    0x28094  2      
  movl 0x24(%r15,%rax,1), %eax                   #  66    0x28096  5      
  andl $0xffffffe0, %eax                         #  67    0x2809b  5      
  addq %r15, %rax                                #  68    0x280a0  3      
  jmpq %rax                                      #  69    0x280a3  2      
  nop                                            #  70    0x280a5  1      
.L_28140:                                        #        0x280a6  0      
  nop                                            #  71    0x280a6  1      
  nop                                            #  72    0x280a7  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x280a8  5      
  movl %eax, %edi                                #  74    0x280ad  2      
  movl $0x10020478, %esi                         #  75    0x280af  5      
  nop                                            #  76    0x280b4  1      
  nop                                            #  77    0x280b5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x280b6  5      
  movl $0x10030c60, %edi                         #  79    0x280bb  5      
  movl %eax, 0x10008ba2(%rip)                    #  80    0x280c0  6      
  nop                                            #  81    0x280c6  1      
  nop                                            #  82    0x280c7  1      
  callq .__cxa_guard_release                     #  83    0x280c8  5      
  jmpq .L_28120                                  #  84    0x280cd  5      
  nop                                            #  85    0x280d2  1      
  nop                                            #  86    0x280d3  1      
.L_281c0:                                        #        0x280d4  0      
  movl %eax, %ebx                                #  87    0x280d4  2      
  movl $0x10030c60, %edi                         #  88    0x280d6  5      
  nop                                            #  89    0x280db  1      
  nop                                            #  90    0x280dc  1      
  callq .__cxa_guard_abort                       #  91    0x280dd  5      
  movl %ebx, %edi                                #  92    0x280e2  2      
  nop                                            #  93    0x280e4  1      
  nop                                            #  94    0x280e5  1      
  callq ._Unwind_Resume                          #  95    0x280e6  5      
  jmpq .L_281c0                                  #  96    0x280eb  5      
  nop                                            #  97    0x280f0  1      
  nop                                            #  98    0x280f1  1      
                                                                          
.size _ZN2pp9URLLoader5CloseEv, .-_ZN2pp9URLLoader5CloseEv

