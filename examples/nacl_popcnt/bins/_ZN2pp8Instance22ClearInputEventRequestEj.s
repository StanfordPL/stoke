  .text
  .globl _ZN2pp8Instance22ClearInputEventRequestEj
  .type _ZN2pp8Instance22ClearInputEventRequestEj, @function

#! file-offset 0x22060
#! rip-offset  0x22060
#! capacity    640 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance22ClearInputEventRequestEj:      #        0x22060  0      
  pushq %r12                                     #  1     0x22060  3      
  movl %esi, %r12d                               #  2     0x22063  3      
  pushq %rbx                                     #  3     0x22066  2      
  movl %edi, %ebx                                #  4     0x22068  2      
  subl $0x8, %esp                                #  5     0x2206a  3      
  addq %r15, %rsp                                #  6     0x2206d  3      
  cmpb $0x0, 0x1000ebc1(%rip)                    #  7     0x22070  7      
  je .L_22140                                    #  8     0x22077  6      
  nop                                            #  9     0x2207d  1      
.L_22080:                                        #        0x2207e  0      
  movl 0x1000ebbc(%rip), %eax                    #  10    0x2207e  6      
  testq %rax, %rax                               #  11    0x22084  3      
  je .L_221e0                                    #  12    0x22087  6      
  xchgw %ax, %ax                                 #  13    0x2208d  3      
  nop                                            #  14    0x22090  1      
.L_220a0:                                        #        0x22091  0      
  cmpb $0x0, 0x1000eba0(%rip)                    #  15    0x22091  7      
  je .L_22100                                    #  16    0x22098  6      
  nop                                            #  17    0x2209e  1      
  nop                                            #  18    0x2209f  1      
.L_220c0:                                        #        0x220a0  0      
  movl %ebx, %ebx                                #  19    0x220a0  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  20    0x220a2  5      
  movl %eax, %eax                                #  21    0x220a7  2      
  movl 0x8(%r15,%rax,1), %eax                    #  22    0x220a9  5      
  addl $0x8, %esp                                #  23    0x220ae  3      
  addq %r15, %rsp                                #  24    0x220b1  3      
  popq %rbx                                      #  25    0x220b4  2      
  movl %r12d, %esi                               #  26    0x220b6  3      
  popq %r12                                      #  27    0x220b9  3      
  nop                                            #  28    0x220bc  1      
  andl $0xffffffe0, %eax                         #  29    0x220bd  5      
  addq %r15, %rax                                #  30    0x220c2  3      
  jmpq %rax                                      #  31    0x220c5  2      
  nop                                            #  32    0x220c7  1      
  nop                                            #  33    0x220c8  1      
.L_22100:                                        #        0x220c9  0      
  movl $0x10030c38, %edi                         #  34    0x220c9  5      
  nop                                            #  35    0x220ce  1      
  nop                                            #  36    0x220cf  1      
  callq .__cxa_guard_acquire                     #  37    0x220d0  5      
  testl %eax, %eax                               #  38    0x220d5  2      
  jne .L_22200                                   #  39    0x220d7  6      
  movl 0x1000eb5d(%rip), %eax                    #  40    0x220dd  6      
  jmpq .L_220c0                                  #  41    0x220e3  5      
  nop                                            #  42    0x220e8  1      
  nop                                            #  43    0x220e9  1      
.L_22140:                                        #        0x220ea  0      
  movl $0x10030c38, %edi                         #  44    0x220ea  5      
  nop                                            #  45    0x220ef  1      
  nop                                            #  46    0x220f0  1      
  callq .__cxa_guard_acquire                     #  47    0x220f1  5      
  testl %eax, %eax                               #  48    0x220f6  2      
  je .L_22080                                    #  49    0x220f8  6      
  nop                                            #  50    0x220fe  1      
  nop                                            #  51    0x220ff  1      
  callq ._ZN2pp6Module3GetEv                     #  52    0x22100  5      
  movl %eax, %edi                                #  53    0x22105  2      
  movl $0x100202c8, %esi                         #  54    0x22107  5      
  nop                                            #  55    0x2210c  1      
  nop                                            #  56    0x2210d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  57    0x2210e  5      
  movl $0x10030c38, %edi                         #  58    0x22113  5      
  movl %eax, 0x1000eb22(%rip)                    #  59    0x22118  6      
  nop                                            #  60    0x2211e  1      
  nop                                            #  61    0x2211f  1      
  callq .__cxa_guard_release                     #  62    0x22120  5      
  movl 0x1000eb15(%rip), %eax                    #  63    0x22125  6      
  testq %rax, %rax                               #  64    0x2212b  3      
  jne .L_220a0                                   #  65    0x2212e  6      
  xchgw %ax, %ax                                 #  66    0x22134  3      
  nop                                            #  67    0x22137  1      
.L_221e0:                                        #        0x22138  0      
  addl $0x8, %esp                                #  68    0x22138  3      
  addq %r15, %rsp                                #  69    0x2213b  3      
  popq %rbx                                      #  70    0x2213e  2      
  popq %r12                                      #  71    0x22140  3      
  popq %r11                                      #  72    0x22143  3      
  andl $0xffffffe0, %r11d                        #  73    0x22146  7      
  addq %r15, %r11                                #  74    0x2214d  3      
  jmpq %r11                                      #  75    0x22150  3      
  nop                                            #  76    0x22153  1      
.L_22200:                                        #        0x22154  0      
  nop                                            #  77    0x22154  1      
  nop                                            #  78    0x22155  1      
  callq ._ZN2pp6Module3GetEv                     #  79    0x22156  5      
  movl %eax, %edi                                #  80    0x2215b  2      
  movl $0x100202c8, %esi                         #  81    0x2215d  5      
  nop                                            #  82    0x22162  1      
  nop                                            #  83    0x22163  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  84    0x22164  5      
  movl $0x10030c38, %edi                         #  85    0x22169  5      
  movl %eax, 0x1000eacc(%rip)                    #  86    0x2216e  6      
  nop                                            #  87    0x22174  1      
  nop                                            #  88    0x22175  1      
  callq .__cxa_guard_release                     #  89    0x22176  5      
  movl 0x1000eabf(%rip), %eax                    #  90    0x2217b  6      
  jmpq .L_220c0                                  #  91    0x22181  5      
  nop                                            #  92    0x22186  1      
  nop                                            #  93    0x22187  1      
.L_22280:                                        #        0x22188  0      
  movl %eax, %ebx                                #  94    0x22188  2      
  movl $0x10030c38, %edi                         #  95    0x2218a  5      
  nop                                            #  96    0x2218f  1      
  nop                                            #  97    0x22190  1      
  callq .__cxa_guard_abort                       #  98    0x22191  5      
  movl %ebx, %edi                                #  99    0x22196  2      
  nop                                            #  100   0x22198  1      
  nop                                            #  101   0x22199  1      
  callq ._Unwind_Resume                          #  102   0x2219a  5      
  jmpq .L_22280                                  #  103   0x2219f  5      
  nop                                            #  104   0x221a4  1      
  nop                                            #  105   0x221a5  1      
                                                                          
.size _ZN2pp8Instance22ClearInputEventRequestEj, .-_ZN2pp8Instance22ClearInputEventRequestEj

