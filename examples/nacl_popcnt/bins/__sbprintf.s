  .text
  .globl __sbprintf
  .type __sbprintf, @function

#! file-offset 0x874a0
#! rip-offset  0x874a0
#! capacity    448 bytes

# Text                                 #  Line  RIP      Bytes  
.__sbprintf:                           #        0x874a0  0      
  movq %rbx, -0x20(%rsp)               #  1     0x874a0  5      
  movl %esi, %ebx                      #  2     0x874a5  2      
  movq %r12, -0x18(%rsp)               #  3     0x874a7  5      
  movq %r13, -0x10(%rsp)               #  4     0x874ac  5      
  movq %r14, -0x8(%rsp)                #  5     0x874b1  5      
  subl $0x4b8, %esp                    #  6     0x874b6  6      
  addq %r15, %rsp                      #  7     0x874bc  3      
  nop                                  #  8     0x874bf  1      
  movl %ebx, %ebx                      #  9     0x874c0  2      
  movzwl 0xc(%r15,%rbx,1), %eax        #  10    0x874c2  6      
  leal 0x410(%rsp), %r12d              #  11    0x874c8  8      
  movl %edi, %r13d                     #  12    0x874d0  3      
  movl %ecx, %ecx                      #  13    0x874d3  2      
  movl %edx, %r14d                     #  14    0x874d5  3      
  nop                                  #  15    0x874d8  1      
  movl $0x400, 0x418(%rsp)             #  16    0x874d9  11     
  leaq 0x5c(%r12), %rdi                #  17    0x874e4  5      
  movq %rcx, 0x8(%rsp)                 #  18    0x874e9  5      
  movl $0x400, 0x424(%rsp)             #  19    0x874ee  11     
  movl $0x0, 0x428(%rsp)               #  20    0x874f9  11     
  andl $0xfffffffd, %eax               #  21    0x87504  5      
  movw %ax, 0x41c(%rsp)                #  22    0x87509  8      
  movl %ebx, %ebx                      #  23    0x87511  2      
  movl 0x78(%r15,%rbx,1), %eax         #  24    0x87513  5      
  nop                                  #  25    0x87518  1      
  movl %eax, 0x488(%rsp)               #  26    0x87519  7      
  movl %ebx, %ebx                      #  27    0x87520  2      
  movzwl 0xe(%r15,%rbx,1), %eax        #  28    0x87522  6      
  movw %ax, 0x41e(%rsp)                #  29    0x87528  8      
  movl %ebx, %ebx                      #  30    0x87530  2      
  movl 0x1c(%r15,%rbx,1), %eax         #  31    0x87532  5      
  xchgw %ax, %ax                       #  32    0x87537  3      
  movl %eax, 0x42c(%rsp)               #  33    0x8753a  7      
  movl %ebx, %ebx                      #  34    0x87541  2      
  movl 0x24(%r15,%rbx,1), %eax         #  35    0x87543  5      
  movl %eax, 0x434(%rsp)               #  36    0x87548  7      
  leal 0x10(%rsp), %eax                #  37    0x8754f  4      
  movl %eax, 0x410(%rsp)               #  38    0x87553  7      
  movl %eax, 0x420(%rsp)               #  39    0x8755a  7      
  nop                                  #  40    0x87561  1      
  nop                                  #  41    0x87562  1      
  callq .__local_lock_init_recursive   #  42    0x87563  5      
  movq 0x8(%rsp), %rcx                 #  43    0x87568  5      
  movl %r14d, %edx                     #  44    0x8756d  3      
  movl %r12d, %esi                     #  45    0x87570  3      
  movl %r13d, %edi                     #  46    0x87573  3      
  nop                                  #  47    0x87576  1      
  callq ._vfiprintf_r                  #  48    0x87577  5      
  testl %eax, %eax                     #  49    0x8757c  2      
  movl %eax, %r14d                     #  50    0x8757e  3      
  js .L_875e0                          #  51    0x87581  6      
  movl %r12d, %esi                     #  52    0x87587  3      
  movl %r13d, %edi                     #  53    0x8758a  3      
  nop                                  #  54    0x8758d  1      
  callq ._fflush_r                     #  55    0x8758e  5      
  testl %eax, %eax                     #  56    0x87593  2      
  movl $0xffffffff, %eax               #  57    0x87595  5      
  cmovnel %eax, %r14d                  #  58    0x8759a  4      
  nop                                  #  59    0x8759e  1      
  nop                                  #  60    0x8759f  1      
.L_875e0:                              #        0x875a0  0      
  testb $0x40, 0x41c(%rsp)             #  61    0x875a0  8      
  je .L_87600                          #  62    0x875a8  6      
  movl %ebx, %ebx                      #  63    0x875ae  2      
  orw $0x40, 0xc(%r15,%rbx,1)          #  64    0x875b0  7      
  nop                                  #  65    0x875b7  1      
.L_87600:                              #        0x875b8  0      
  leaq 0x5c(%r12), %rdi                #  66    0x875b8  5      
  nop                                  #  67    0x875bd  1      
  nop                                  #  68    0x875be  1      
  callq .__local_lock_close_recursive  #  69    0x875bf  5      
  movl %r14d, %eax                     #  70    0x875c4  3      
  movq 0x498(%rsp), %rbx               #  71    0x875c7  8      
  movq 0x4a0(%rsp), %r12               #  72    0x875cf  8      
  movq 0x4a8(%rsp), %r13               #  73    0x875d7  8      
  nop                                  #  74    0x875df  1      
  movq 0x4b0(%rsp), %r14               #  75    0x875e0  8      
  addl $0x4b8, %esp                    #  76    0x875e8  6      
  addq %r15, %rsp                      #  77    0x875ee  3      
  popq %r11                            #  78    0x875f1  3      
  andl $0xffffffe0, %r11d              #  79    0x875f4  7      
  addq %r15, %r11                      #  80    0x875fb  3      
  jmpq %r11                            #  81    0x875fe  3      
  nop                                  #  82    0x87601  1      
                                                                
.size __sbprintf, .-__sbprintf

