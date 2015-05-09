  .text
  .globl _ZNSt13runtime_errorD0Ev
  .type _ZNSt13runtime_errorD0Ev, @function

#! file-offset 0x4ea20
#! rip-offset  0x4ea20
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt13runtime_errorD0Ev:               #        0x4ea20  0      
  pushq %rbx                             #  1     0x4ea20  2      
  movl %edi, %ebx                        #  2     0x4ea22  2      
  subl $0x10, %esp                       #  3     0x4ea24  3      
  addq %r15, %rsp                        #  4     0x4ea27  3      
  movl %ebx, %ebx                        #  5     0x4ea2a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4ea2c  5      
  movl %ebx, %ebx                        #  7     0x4ea31  2      
  movl $0x10021198, (%r15,%rbx,1)        #  8     0x4ea33  8      
  subl $0xc, %edi                        #  9     0x4ea3b  3      
  nop                                    #  10    0x4ea3e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4ea3f  6      
  jne .L_4eac0                           #  12    0x4ea45  6      
  nop                                    #  13    0x4ea4b  1      
  nop                                    #  14    0x4ea4c  1      
.L_4ea60:                                #        0x4ea4d  0      
  movl %ebx, %edi                        #  15    0x4ea4d  2      
  nop                                    #  16    0x4ea4f  1      
  nop                                    #  17    0x4ea50  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4ea51  5      
  movl %ebx, %edi                        #  19    0x4ea56  2      
  nop                                    #  20    0x4ea58  1      
  nop                                    #  21    0x4ea59  1      
  callq ._ZdlPv                          #  22    0x4ea5a  5      
  addl $0x10, %esp                       #  23    0x4ea5f  3      
  addq %r15, %rsp                        #  24    0x4ea62  3      
  popq %rbx                              #  25    0x4ea65  2      
  popq %r11                              #  26    0x4ea67  3      
  andl $0xffffffe0, %r11d                #  27    0x4ea6a  7      
  addq %r15, %r11                        #  28    0x4ea71  3      
  jmpq %r11                              #  29    0x4ea74  3      
  nop                                    #  30    0x4ea77  1      
.L_4eac0:                                #        0x4ea78  0      
  movl %edi, %edi                        #  31    0x4ea78  2      
  movl 0x8(%r15,%rdi,1), %eax            #  32    0x4ea7a  5      
  leal -0x1(%rax), %edx                  #  33    0x4ea7f  3      
  testl %eax, %eax                       #  34    0x4ea82  2      
  movl %edi, %edi                        #  35    0x4ea84  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  36    0x4ea86  5      
  jg .L_4ea60                            #  37    0x4ea8b  6      
  leal 0xf(%rsp), %esi                   #  38    0x4ea91  4      
  xchgw %ax, %ax                         #  39    0x4ea95  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  40    0x4ea98  5      
  jmpq .L_4ea60                          #  41    0x4ea9d  5      
  nop                                    #  42    0x4eaa2  1      
  nop                                    #  43    0x4eaa3  1      
  nop                                    #  44    0x4eaa4  1      
  nop                                    #  45    0x4eaa5  1      
  nop                                    #  46    0x4eaa6  1      
  nop                                    #  47    0x4eaa7  1      
  nop                                    #  48    0x4eaa8  1      
  nop                                    #  49    0x4eaa9  1      
  nop                                    #  50    0x4eaaa  1      
  nop                                    #  51    0x4eaab  1      
  nop                                    #  52    0x4eaac  1      
  nop                                    #  53    0x4eaad  1      
  nop                                    #  54    0x4eaae  1      
  nop                                    #  55    0x4eaaf  1      
  nop                                    #  56    0x4eab0  1      
  nop                                    #  57    0x4eab1  1      
  nop                                    #  58    0x4eab2  1      
  nop                                    #  59    0x4eab3  1      
  nop                                    #  60    0x4eab4  1      
  nop                                    #  61    0x4eab5  1      
  nop                                    #  62    0x4eab6  1      
  nop                                    #  63    0x4eab7  1      
  nop                                    #  64    0x4eab8  1      
  nop                                    #  65    0x4eab9  1      
  nop                                    #  66    0x4eaba  1      
  nop                                    #  67    0x4eabb  1      
  nop                                    #  68    0x4eabc  1      
                                                                  
.size _ZNSt13runtime_errorD0Ev, .-_ZNSt13runtime_errorD0Ev

