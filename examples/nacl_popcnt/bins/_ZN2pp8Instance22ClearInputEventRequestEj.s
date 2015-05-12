  .text
  .globl _ZN2pp8Instance22ClearInputEventRequestEj
  .type _ZN2pp8Instance22ClearInputEventRequestEj, @function

#! file-offset 0x22080
#! rip-offset  0x22080
#! capacity    640 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance22ClearInputEventRequestEj:      #        0x22080  0      
  pushq %r12                                     #  1     0x22080  3      
  movl %esi, %r12d                               #  2     0x22083  3      
  pushq %rbx                                     #  3     0x22086  2      
  movl %edi, %ebx                                #  4     0x22088  2      
  subl $0x8, %esp                                #  5     0x2208a  3      
  addq %r15, %rsp                                #  6     0x2208d  3      
  cmpb $0x0, 0x1000eba1(%rip)                    #  7     0x22090  7      
  je .L_22160                                    #  8     0x22097  6      
  nop                                            #  9     0x2209d  1      
.L_220a0:                                        #        0x2209e  0      
  movl 0x1000eb9c(%rip), %eax                    #  10    0x2209e  6      
  testq %rax, %rax                               #  11    0x220a4  3      
  je .L_22200                                    #  12    0x220a7  6      
  xchgw %ax, %ax                                 #  13    0x220ad  3      
  nop                                            #  14    0x220b0  1      
.L_220c0:                                        #        0x220b1  0      
  cmpb $0x0, 0x1000eb80(%rip)                    #  15    0x220b1  7      
  je .L_22120                                    #  16    0x220b8  6      
  nop                                            #  17    0x220be  1      
  nop                                            #  18    0x220bf  1      
.L_220e0:                                        #        0x220c0  0      
  movl %ebx, %ebx                                #  19    0x220c0  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  20    0x220c2  5      
  movl %eax, %eax                                #  21    0x220c7  2      
  movl 0x8(%r15,%rax,1), %eax                    #  22    0x220c9  5      
  addl $0x8, %esp                                #  23    0x220ce  3      
  addq %r15, %rsp                                #  24    0x220d1  3      
  popq %rbx                                      #  25    0x220d4  2      
  movl %r12d, %esi                               #  26    0x220d6  3      
  popq %r12                                      #  27    0x220d9  3      
  nop                                            #  28    0x220dc  1      
  andl $0xffffffe0, %eax                         #  29    0x220dd  5      
  addq %r15, %rax                                #  30    0x220e2  3      
  jmpq %rax                                      #  31    0x220e5  2      
  nop                                            #  32    0x220e7  1      
  nop                                            #  33    0x220e8  1      
.L_22120:                                        #        0x220e9  0      
  movl $0x10030c38, %edi                         #  34    0x220e9  5      
  nop                                            #  35    0x220ee  1      
  nop                                            #  36    0x220ef  1      
  callq .__cxa_guard_acquire                     #  37    0x220f0  5      
  testl %eax, %eax                               #  38    0x220f5  2      
  jne .L_22220                                   #  39    0x220f7  6      
  movl 0x1000eb3d(%rip), %eax                    #  40    0x220fd  6      
  jmpq .L_220e0                                  #  41    0x22103  5      
  nop                                            #  42    0x22108  1      
  nop                                            #  43    0x22109  1      
.L_22160:                                        #        0x2210a  0      
  movl $0x10030c38, %edi                         #  44    0x2210a  5      
  nop                                            #  45    0x2210f  1      
  nop                                            #  46    0x22110  1      
  callq .__cxa_guard_acquire                     #  47    0x22111  5      
  testl %eax, %eax                               #  48    0x22116  2      
  je .L_220a0                                    #  49    0x22118  6      
  nop                                            #  50    0x2211e  1      
  nop                                            #  51    0x2211f  1      
  callq ._ZN2pp6Module3GetEv                     #  52    0x22120  5      
  movl %eax, %edi                                #  53    0x22125  2      
  movl $0x100202c8, %esi                         #  54    0x22127  5      
  nop                                            #  55    0x2212c  1      
  nop                                            #  56    0x2212d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  57    0x2212e  5      
  movl $0x10030c38, %edi                         #  58    0x22133  5      
  movl %eax, 0x1000eb02(%rip)                    #  59    0x22138  6      
  nop                                            #  60    0x2213e  1      
  nop                                            #  61    0x2213f  1      
  callq .__cxa_guard_release                     #  62    0x22140  5      
  movl 0x1000eaf5(%rip), %eax                    #  63    0x22145  6      
  testq %rax, %rax                               #  64    0x2214b  3      
  jne .L_220c0                                   #  65    0x2214e  6      
  xchgw %ax, %ax                                 #  66    0x22154  3      
  nop                                            #  67    0x22157  1      
.L_22200:                                        #        0x22158  0      
  addl $0x8, %esp                                #  68    0x22158  3      
  addq %r15, %rsp                                #  69    0x2215b  3      
  popq %rbx                                      #  70    0x2215e  2      
  popq %r12                                      #  71    0x22160  3      
  popq %r11                                      #  72    0x22163  3      
  andl $0xffffffe0, %r11d                        #  73    0x22166  7      
  addq %r15, %r11                                #  74    0x2216d  3      
  jmpq %r11                                      #  75    0x22170  3      
  nop                                            #  76    0x22173  1      
.L_22220:                                        #        0x22174  0      
  nop                                            #  77    0x22174  1      
  nop                                            #  78    0x22175  1      
  callq ._ZN2pp6Module3GetEv                     #  79    0x22176  5      
  movl %eax, %edi                                #  80    0x2217b  2      
  movl $0x100202c8, %esi                         #  81    0x2217d  5      
  nop                                            #  82    0x22182  1      
  nop                                            #  83    0x22183  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  84    0x22184  5      
  movl $0x10030c38, %edi                         #  85    0x22189  5      
  movl %eax, 0x1000eaac(%rip)                    #  86    0x2218e  6      
  nop                                            #  87    0x22194  1      
  nop                                            #  88    0x22195  1      
  callq .__cxa_guard_release                     #  89    0x22196  5      
  movl 0x1000ea9f(%rip), %eax                    #  90    0x2219b  6      
  jmpq .L_220e0                                  #  91    0x221a1  5      
  nop                                            #  92    0x221a6  1      
  nop                                            #  93    0x221a7  1      
.L_222a0:                                        #        0x221a8  0      
  movl %eax, %ebx                                #  94    0x221a8  2      
  movl $0x10030c38, %edi                         #  95    0x221aa  5      
  nop                                            #  96    0x221af  1      
  nop                                            #  97    0x221b0  1      
  callq .__cxa_guard_abort                       #  98    0x221b1  5      
  movl %ebx, %edi                                #  99    0x221b6  2      
  nop                                            #  100   0x221b8  1      
  nop                                            #  101   0x221b9  1      
  callq ._Unwind_Resume                          #  102   0x221ba  5      
  jmpq .L_222a0                                  #  103   0x221bf  5      
  nop                                            #  104   0x221c4  1      
  nop                                            #  105   0x221c5  1      
                                                                          
.size _ZN2pp8Instance22ClearInputEventRequestEj, .-_ZN2pp8Instance22ClearInputEventRequestEj

