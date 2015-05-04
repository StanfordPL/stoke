  .text
  .globl _ZN2pp8Instance22ClearInputEventRequestEj
  .type _ZN2pp8Instance22ClearInputEventRequestEj, @function

#! file-offset 0x22100
#! rip-offset  0x22100
#! capacity    640 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance22ClearInputEventRequestEj:      #        0x22100  0      
  pushq %r12                                     #  1     0x22100  3      
  movl %esi, %r12d                               #  2     0x22103  3      
  pushq %rbx                                     #  3     0x22106  2      
  movl %edi, %ebx                                #  4     0x22108  2      
  subl $0x8, %esp                                #  5     0x2210a  3      
  addq %r15, %rsp                                #  6     0x2210d  3      
  cmpb $0x0, 0x1000eb21(%rip)                    #  7     0x22110  7      
  je .L_221e0                                    #  8     0x22117  6      
  nop                                            #  9     0x2211d  1      
.L_22120:                                        #        0x2211e  0      
  movl 0x1000eb1c(%rip), %eax                    #  10    0x2211e  6      
  testq %rax, %rax                               #  11    0x22124  3      
  je .L_22280                                    #  12    0x22127  6      
  xchgw %ax, %ax                                 #  13    0x2212d  3      
  nop                                            #  14    0x22130  1      
.L_22140:                                        #        0x22131  0      
  cmpb $0x0, 0x1000eb00(%rip)                    #  15    0x22131  7      
  je .L_221a0                                    #  16    0x22138  6      
  nop                                            #  17    0x2213e  1      
  nop                                            #  18    0x2213f  1      
.L_22160:                                        #        0x22140  0      
  movl %ebx, %ebx                                #  19    0x22140  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  20    0x22142  5      
  movl %eax, %eax                                #  21    0x22147  2      
  movl 0x8(%r15,%rax,1), %eax                    #  22    0x22149  5      
  addl $0x8, %esp                                #  23    0x2214e  3      
  addq %r15, %rsp                                #  24    0x22151  3      
  popq %rbx                                      #  25    0x22154  2      
  movl %r12d, %esi                               #  26    0x22156  3      
  popq %r12                                      #  27    0x22159  3      
  nop                                            #  28    0x2215c  1      
  andl $0xffffffe0, %eax                         #  29    0x2215d  5      
  addq %r15, %rax                                #  30    0x22162  3      
  jmpq %rax                                      #  31    0x22165  2      
  nop                                            #  32    0x22167  1      
  nop                                            #  33    0x22168  1      
.L_221a0:                                        #        0x22169  0      
  movl $0x10030c38, %edi                         #  34    0x22169  5      
  nop                                            #  35    0x2216e  1      
  nop                                            #  36    0x2216f  1      
  callq .__cxa_guard_acquire                     #  37    0x22170  5      
  testl %eax, %eax                               #  38    0x22175  2      
  jne .L_222a0                                   #  39    0x22177  6      
  movl 0x1000eabd(%rip), %eax                    #  40    0x2217d  6      
  jmpq .L_22160                                  #  41    0x22183  5      
  nop                                            #  42    0x22188  1      
  nop                                            #  43    0x22189  1      
.L_221e0:                                        #        0x2218a  0      
  movl $0x10030c38, %edi                         #  44    0x2218a  5      
  nop                                            #  45    0x2218f  1      
  nop                                            #  46    0x22190  1      
  callq .__cxa_guard_acquire                     #  47    0x22191  5      
  testl %eax, %eax                               #  48    0x22196  2      
  je .L_22120                                    #  49    0x22198  6      
  nop                                            #  50    0x2219e  1      
  nop                                            #  51    0x2219f  1      
  callq ._ZN2pp6Module3GetEv                     #  52    0x221a0  5      
  movl %eax, %edi                                #  53    0x221a5  2      
  movl $0x100202c8, %esi                         #  54    0x221a7  5      
  nop                                            #  55    0x221ac  1      
  nop                                            #  56    0x221ad  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  57    0x221ae  5      
  movl $0x10030c38, %edi                         #  58    0x221b3  5      
  movl %eax, 0x1000ea82(%rip)                    #  59    0x221b8  6      
  nop                                            #  60    0x221be  1      
  nop                                            #  61    0x221bf  1      
  callq .__cxa_guard_release                     #  62    0x221c0  5      
  movl 0x1000ea75(%rip), %eax                    #  63    0x221c5  6      
  testq %rax, %rax                               #  64    0x221cb  3      
  jne .L_22140                                   #  65    0x221ce  6      
  xchgw %ax, %ax                                 #  66    0x221d4  3      
  nop                                            #  67    0x221d7  1      
.L_22280:                                        #        0x221d8  0      
  addl $0x8, %esp                                #  68    0x221d8  3      
  addq %r15, %rsp                                #  69    0x221db  3      
  popq %rbx                                      #  70    0x221de  2      
  popq %r12                                      #  71    0x221e0  3      
  popq %r11                                      #  72    0x221e3  3      
  andl $0xffffffe0, %r11d                        #  73    0x221e6  7      
  addq %r15, %r11                                #  74    0x221ed  3      
  jmpq %r11                                      #  75    0x221f0  3      
  nop                                            #  76    0x221f3  1      
.L_222a0:                                        #        0x221f4  0      
  nop                                            #  77    0x221f4  1      
  nop                                            #  78    0x221f5  1      
  callq ._ZN2pp6Module3GetEv                     #  79    0x221f6  5      
  movl %eax, %edi                                #  80    0x221fb  2      
  movl $0x100202c8, %esi                         #  81    0x221fd  5      
  nop                                            #  82    0x22202  1      
  nop                                            #  83    0x22203  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  84    0x22204  5      
  movl $0x10030c38, %edi                         #  85    0x22209  5      
  movl %eax, 0x1000ea2c(%rip)                    #  86    0x2220e  6      
  nop                                            #  87    0x22214  1      
  nop                                            #  88    0x22215  1      
  callq .__cxa_guard_release                     #  89    0x22216  5      
  movl 0x1000ea1f(%rip), %eax                    #  90    0x2221b  6      
  jmpq .L_22160                                  #  91    0x22221  5      
  nop                                            #  92    0x22226  1      
  nop                                            #  93    0x22227  1      
.L_22320:                                        #        0x22228  0      
  movl %eax, %ebx                                #  94    0x22228  2      
  movl $0x10030c38, %edi                         #  95    0x2222a  5      
  nop                                            #  96    0x2222f  1      
  nop                                            #  97    0x22230  1      
  callq .__cxa_guard_abort                       #  98    0x22231  5      
  movl %ebx, %edi                                #  99    0x22236  2      
  nop                                            #  100   0x22238  1      
  nop                                            #  101   0x22239  1      
  callq ._Unwind_Resume                          #  102   0x2223a  5      
  jmpq .L_22320                                  #  103   0x2223f  5      
  nop                                            #  104   0x22244  1      
  nop                                            #  105   0x22245  1      
                                                                          
.size _ZN2pp8Instance22ClearInputEventRequestEj, .-_ZN2pp8Instance22ClearInputEventRequestEj

