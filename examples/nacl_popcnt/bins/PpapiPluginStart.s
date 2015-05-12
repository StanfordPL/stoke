  .text
  .globl PpapiPluginStart
  .type PpapiPluginStart, @function

#! file-offset 0x3fa80
#! rip-offset  0x3fa80
#! capacity    384 bytes

# Text                                   #  Line  RIP      Bytes  
.PpapiPluginStart:                       #        0x3fa80  0      
  pushq %r12                             #  1     0x3fa80  3      
  movl %edi, %r12d                       #  2     0x3fa83  3      
  pushq %rbx                             #  3     0x3fa86  2      
  subl $0x18, %esp                       #  4     0x3fa88  3      
  addq %r15, %rsp                        #  5     0x3fa8b  3      
  movl 0xfff0a64(%rip), %eax             #  6     0x3fa8e  6      
  movl %eax, %eax                        #  7     0x3fa94  2      
  movl (%r15,%rax,1), %ecx               #  8     0x3fa96  4      
  testl %ecx, %ecx                       #  9     0x3fa9a  2      
  je .L_3fac0                            #  10    0x3fa9c  6      
  nop                                    #  11    0x3faa2  1      
.L_3faa0:                                #        0x3faa3  0      
  addl $0x4, %eax                        #  12    0x3faa3  3      
  movl %eax, %eax                        #  13    0x3faa6  2      
  movl (%r15,%rax,1), %edx               #  14    0x3faa8  4      
  testl %edx, %edx                       #  15    0x3faac  2      
  jne .L_3faa0                           #  16    0x3faae  6      
  nop                                    #  17    0x3fab4  1      
  nop                                    #  18    0x3fab5  1      
.L_3fac0:                                #        0x3fab6  0      
  addl $0x4, %eax                        #  19    0x3fab6  3      
  movl %eax, %eax                        #  20    0x3fab9  2      
  movl (%r15,%rax,1), %edx               #  21    0x3fabb  4      
  testl %edx, %edx                       #  22    0x3fabf  2      
  jne .L_3fb00                           #  23    0x3fac1  6      
  jmpq .L_3fbc0                          #  24    0x3fac7  5      
  nop                                    #  25    0x3facc  1      
.L_3fae0:                                #        0x3facd  0      
  addl $0x8, %eax                        #  26    0x3facd  3      
  movl %eax, %eax                        #  27    0x3fad0  2      
  movl (%r15,%rax,1), %edx               #  28    0x3fad2  4      
  testl %edx, %edx                       #  29    0x3fad6  2      
  je .L_3fbc0                            #  30    0x3fad8  6      
  nop                                    #  31    0x3fade  1      
.L_3fb00:                                #        0x3fadf  0      
  cmpl $0x20, %edx                       #  32    0x3fadf  3      
  jne .L_3fae0                           #  33    0x3fae2  6      
  movl %eax, %eax                        #  34    0x3fae8  2      
  movl 0x4(%r15,%rax,1), %eax            #  35    0x3faea  5      
  testq %rax, %rax                       #  36    0x3faef  3      
  je .L_3fbc0                            #  37    0x3faf2  6      
  nop                                    #  38    0x3faf8  1      
.L_3fb20:                                #        0x3faf9  0      
  movl $0x8, %edx                        #  39    0x3faf9  5      
  movl %esp, %esi                        #  40    0x3fafe  2      
  movl $0x10020921, %edi                 #  41    0x3fb00  5      
  nop                                    #  42    0x3fb05  1      
  andl $0xffffffe0, %eax                 #  43    0x3fb06  5      
  addq %r15, %rax                        #  44    0x3fb0b  3      
  callq %rax                             #  45    0x3fb0e  2      
  cmpl $0x8, %eax                        #  46    0x3fb10  3      
  movl %esp, %ebx                        #  47    0x3fb13  2      
  je .L_3fb60                            #  48    0x3fb15  6      
  movl $0x100208f8, %edi                 #  49    0x3fb1b  5      
  nop                                    #  50    0x3fb20  1      
  callq .fatal_error                     #  51    0x3fb21  5      
.L_3fb60:                                #        0x3fb26  0      
  movl %ebx, %edi                        #  52    0x3fb26  2      
  nop                                    #  53    0x3fb28  1      
  nop                                    #  54    0x3fb29  1      
  callq .__nacl_register_thread_creator  #  55    0x3fb2a  5      
  movl (%rsp), %eax                      #  56    0x3fb2f  3      
  movl %r12d, %edi                       #  57    0x3fb32  3      
  nop                                    #  58    0x3fb35  1      
  nop                                    #  59    0x3fb36  1      
  andl $0xffffffe0, %eax                 #  60    0x3fb37  5      
  addq %r15, %rax                        #  61    0x3fb3c  3      
  callq %rax                             #  62    0x3fb3f  2      
  addl $0x18, %esp                       #  63    0x3fb41  3      
  addq %r15, %rsp                        #  64    0x3fb44  3      
  popq %rbx                              #  65    0x3fb47  2      
  popq %r12                              #  66    0x3fb49  3      
  popq %r11                              #  67    0x3fb4c  3      
  andl $0xffffffe0, %r11d                #  68    0x3fb4f  7      
  addq %r15, %r11                        #  69    0x3fb56  3      
  jmpq %r11                              #  70    0x3fb59  3      
  nop                                    #  71    0x3fb5c  1      
.L_3fbc0:                                #        0x3fb5d  0      
  movl $0x10020888, %edi                 #  72    0x3fb5d  5      
  nop                                    #  73    0x3fb62  1      
  nop                                    #  74    0x3fb63  1      
  callq .fatal_error                     #  75    0x3fb64  5      
  xorl %eax, %eax                        #  76    0x3fb69  2      
  jmpq .L_3fb20                          #  77    0x3fb6b  5      
  nop                                    #  78    0x3fb70  1      
  nop                                    #  79    0x3fb71  1      
  nop                                    #  80    0x3fb72  1      
  nop                                    #  81    0x3fb73  1      
  nop                                    #  82    0x3fb74  1      
  nop                                    #  83    0x3fb75  1      
  nop                                    #  84    0x3fb76  1      
  nop                                    #  85    0x3fb77  1      
  nop                                    #  86    0x3fb78  1      
  nop                                    #  87    0x3fb79  1      
  nop                                    #  88    0x3fb7a  1      
  nop                                    #  89    0x3fb7b  1      
  nop                                    #  90    0x3fb7c  1      
  nop                                    #  91    0x3fb7d  1      
  nop                                    #  92    0x3fb7e  1      
  nop                                    #  93    0x3fb7f  1      
  nop                                    #  94    0x3fb80  1      
  nop                                    #  95    0x3fb81  1      
  nop                                    #  96    0x3fb82  1      
  nop                                    #  97    0x3fb83  1      
  nop                                    #  98    0x3fb84  1      
  nop                                    #  99    0x3fb85  1      
  nop                                    #  100   0x3fb86  1      
  nop                                    #  101   0x3fb87  1      
  nop                                    #  102   0x3fb88  1      
                                                                  
.size PpapiPluginStart, .-PpapiPluginStart

