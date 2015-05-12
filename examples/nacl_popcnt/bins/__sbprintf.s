  .text
  .globl __sbprintf
  .type __sbprintf, @function

#! file-offset 0x87420
#! rip-offset  0x87420
#! capacity    448 bytes

# Text                                 #  Line  RIP      Bytes  
.__sbprintf:                           #        0x87420  0      
  movq %rbx, -0x20(%rsp)               #  1     0x87420  5      
  movl %esi, %ebx                      #  2     0x87425  2      
  movq %r12, -0x18(%rsp)               #  3     0x87427  5      
  movq %r13, -0x10(%rsp)               #  4     0x8742c  5      
  movq %r14, -0x8(%rsp)                #  5     0x87431  5      
  subl $0x4b8, %esp                    #  6     0x87436  6      
  addq %r15, %rsp                      #  7     0x8743c  3      
  nop                                  #  8     0x8743f  1      
  movl %ebx, %ebx                      #  9     0x87440  2      
  movzwl 0xc(%r15,%rbx,1), %eax        #  10    0x87442  6      
  leal 0x410(%rsp), %r12d              #  11    0x87448  8      
  movl %edi, %r13d                     #  12    0x87450  3      
  movl %ecx, %ecx                      #  13    0x87453  2      
  movl %edx, %r14d                     #  14    0x87455  3      
  nop                                  #  15    0x87458  1      
  movl $0x400, 0x418(%rsp)             #  16    0x87459  11     
  leaq 0x5c(%r12), %rdi                #  17    0x87464  5      
  movq %rcx, 0x8(%rsp)                 #  18    0x87469  5      
  movl $0x400, 0x424(%rsp)             #  19    0x8746e  11     
  movl $0x0, 0x428(%rsp)               #  20    0x87479  11     
  andl $0xfffffffd, %eax               #  21    0x87484  5      
  movw %ax, 0x41c(%rsp)                #  22    0x87489  8      
  movl %ebx, %ebx                      #  23    0x87491  2      
  movl 0x78(%r15,%rbx,1), %eax         #  24    0x87493  5      
  nop                                  #  25    0x87498  1      
  movl %eax, 0x488(%rsp)               #  26    0x87499  7      
  movl %ebx, %ebx                      #  27    0x874a0  2      
  movzwl 0xe(%r15,%rbx,1), %eax        #  28    0x874a2  6      
  movw %ax, 0x41e(%rsp)                #  29    0x874a8  8      
  movl %ebx, %ebx                      #  30    0x874b0  2      
  movl 0x1c(%r15,%rbx,1), %eax         #  31    0x874b2  5      
  xchgw %ax, %ax                       #  32    0x874b7  3      
  movl %eax, 0x42c(%rsp)               #  33    0x874ba  7      
  movl %ebx, %ebx                      #  34    0x874c1  2      
  movl 0x24(%r15,%rbx,1), %eax         #  35    0x874c3  5      
  movl %eax, 0x434(%rsp)               #  36    0x874c8  7      
  leal 0x10(%rsp), %eax                #  37    0x874cf  4      
  movl %eax, 0x410(%rsp)               #  38    0x874d3  7      
  movl %eax, 0x420(%rsp)               #  39    0x874da  7      
  nop                                  #  40    0x874e1  1      
  nop                                  #  41    0x874e2  1      
  callq .__local_lock_init_recursive   #  42    0x874e3  5      
  movq 0x8(%rsp), %rcx                 #  43    0x874e8  5      
  movl %r14d, %edx                     #  44    0x874ed  3      
  movl %r12d, %esi                     #  45    0x874f0  3      
  movl %r13d, %edi                     #  46    0x874f3  3      
  nop                                  #  47    0x874f6  1      
  callq ._vfiprintf_r                  #  48    0x874f7  5      
  testl %eax, %eax                     #  49    0x874fc  2      
  movl %eax, %r14d                     #  50    0x874fe  3      
  js .L_87560                          #  51    0x87501  6      
  movl %r12d, %esi                     #  52    0x87507  3      
  movl %r13d, %edi                     #  53    0x8750a  3      
  nop                                  #  54    0x8750d  1      
  callq ._fflush_r                     #  55    0x8750e  5      
  testl %eax, %eax                     #  56    0x87513  2      
  movl $0xffffffff, %eax               #  57    0x87515  5      
  cmovnel %eax, %r14d                  #  58    0x8751a  4      
  nop                                  #  59    0x8751e  1      
  nop                                  #  60    0x8751f  1      
.L_87560:                              #        0x87520  0      
  testb $0x40, 0x41c(%rsp)             #  61    0x87520  8      
  je .L_87580                          #  62    0x87528  6      
  movl %ebx, %ebx                      #  63    0x8752e  2      
  orw $0x40, 0xc(%r15,%rbx,1)          #  64    0x87530  7      
  nop                                  #  65    0x87537  1      
.L_87580:                              #        0x87538  0      
  leaq 0x5c(%r12), %rdi                #  66    0x87538  5      
  nop                                  #  67    0x8753d  1      
  nop                                  #  68    0x8753e  1      
  callq .__local_lock_close_recursive  #  69    0x8753f  5      
  movl %r14d, %eax                     #  70    0x87544  3      
  movq 0x498(%rsp), %rbx               #  71    0x87547  8      
  movq 0x4a0(%rsp), %r12               #  72    0x8754f  8      
  movq 0x4a8(%rsp), %r13               #  73    0x87557  8      
  nop                                  #  74    0x8755f  1      
  movq 0x4b0(%rsp), %r14               #  75    0x87560  8      
  addl $0x4b8, %esp                    #  76    0x87568  6      
  addq %r15, %rsp                      #  77    0x8756e  3      
  popq %r11                            #  78    0x87571  3      
  andl $0xffffffe0, %r11d              #  79    0x87574  7      
  addq %r15, %r11                      #  80    0x8757b  3      
  jmpq %r11                            #  81    0x8757e  3      
  nop                                  #  82    0x87581  1      
                                                                
.size __sbprintf, .-__sbprintf

