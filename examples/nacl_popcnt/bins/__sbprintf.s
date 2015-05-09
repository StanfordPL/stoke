  .text
  .globl __sbprintf
  .type __sbprintf, @function

#! file-offset 0x87400
#! rip-offset  0x87400
#! capacity    448 bytes

# Text                                 #  Line  RIP      Bytes  
.__sbprintf:                           #        0x87400  0      
  movq %rbx, -0x20(%rsp)               #  1     0x87400  5      
  movl %esi, %ebx                      #  2     0x87405  2      
  movq %r12, -0x18(%rsp)               #  3     0x87407  5      
  movq %r13, -0x10(%rsp)               #  4     0x8740c  5      
  movq %r14, -0x8(%rsp)                #  5     0x87411  5      
  subl $0x4b8, %esp                    #  6     0x87416  6      
  addq %r15, %rsp                      #  7     0x8741c  3      
  nop                                  #  8     0x8741f  1      
  movl %ebx, %ebx                      #  9     0x87420  2      
  movzwl 0xc(%r15,%rbx,1), %eax        #  10    0x87422  6      
  leal 0x410(%rsp), %r12d              #  11    0x87428  8      
  movl %edi, %r13d                     #  12    0x87430  3      
  movl %ecx, %ecx                      #  13    0x87433  2      
  movl %edx, %r14d                     #  14    0x87435  3      
  nop                                  #  15    0x87438  1      
  movl $0x400, 0x418(%rsp)             #  16    0x87439  11     
  leaq 0x5c(%r12), %rdi                #  17    0x87444  5      
  movq %rcx, 0x8(%rsp)                 #  18    0x87449  5      
  movl $0x400, 0x424(%rsp)             #  19    0x8744e  11     
  movl $0x0, 0x428(%rsp)               #  20    0x87459  11     
  andl $0xfffffffd, %eax               #  21    0x87464  5      
  movw %ax, 0x41c(%rsp)                #  22    0x87469  8      
  movl %ebx, %ebx                      #  23    0x87471  2      
  movl 0x78(%r15,%rbx,1), %eax         #  24    0x87473  5      
  nop                                  #  25    0x87478  1      
  movl %eax, 0x488(%rsp)               #  26    0x87479  7      
  movl %ebx, %ebx                      #  27    0x87480  2      
  movzwl 0xe(%r15,%rbx,1), %eax        #  28    0x87482  6      
  movw %ax, 0x41e(%rsp)                #  29    0x87488  8      
  movl %ebx, %ebx                      #  30    0x87490  2      
  movl 0x1c(%r15,%rbx,1), %eax         #  31    0x87492  5      
  xchgw %ax, %ax                       #  32    0x87497  3      
  movl %eax, 0x42c(%rsp)               #  33    0x8749a  7      
  movl %ebx, %ebx                      #  34    0x874a1  2      
  movl 0x24(%r15,%rbx,1), %eax         #  35    0x874a3  5      
  movl %eax, 0x434(%rsp)               #  36    0x874a8  7      
  leal 0x10(%rsp), %eax                #  37    0x874af  4      
  movl %eax, 0x410(%rsp)               #  38    0x874b3  7      
  movl %eax, 0x420(%rsp)               #  39    0x874ba  7      
  nop                                  #  40    0x874c1  1      
  nop                                  #  41    0x874c2  1      
  callq .__local_lock_init_recursive   #  42    0x874c3  5      
  movq 0x8(%rsp), %rcx                 #  43    0x874c8  5      
  movl %r14d, %edx                     #  44    0x874cd  3      
  movl %r12d, %esi                     #  45    0x874d0  3      
  movl %r13d, %edi                     #  46    0x874d3  3      
  nop                                  #  47    0x874d6  1      
  callq ._vfiprintf_r                  #  48    0x874d7  5      
  testl %eax, %eax                     #  49    0x874dc  2      
  movl %eax, %r14d                     #  50    0x874de  3      
  js .L_87540                          #  51    0x874e1  6      
  movl %r12d, %esi                     #  52    0x874e7  3      
  movl %r13d, %edi                     #  53    0x874ea  3      
  nop                                  #  54    0x874ed  1      
  callq ._fflush_r                     #  55    0x874ee  5      
  testl %eax, %eax                     #  56    0x874f3  2      
  movl $0xffffffff, %eax               #  57    0x874f5  5      
  cmovnel %eax, %r14d                  #  58    0x874fa  4      
  nop                                  #  59    0x874fe  1      
  nop                                  #  60    0x874ff  1      
.L_87540:                              #        0x87500  0      
  testb $0x40, 0x41c(%rsp)             #  61    0x87500  8      
  je .L_87560                          #  62    0x87508  6      
  movl %ebx, %ebx                      #  63    0x8750e  2      
  orw $0x40, 0xc(%r15,%rbx,1)          #  64    0x87510  7      
  nop                                  #  65    0x87517  1      
.L_87560:                              #        0x87518  0      
  leaq 0x5c(%r12), %rdi                #  66    0x87518  5      
  nop                                  #  67    0x8751d  1      
  nop                                  #  68    0x8751e  1      
  callq .__local_lock_close_recursive  #  69    0x8751f  5      
  movl %r14d, %eax                     #  70    0x87524  3      
  movq 0x498(%rsp), %rbx               #  71    0x87527  8      
  movq 0x4a0(%rsp), %r12               #  72    0x8752f  8      
  movq 0x4a8(%rsp), %r13               #  73    0x87537  8      
  nop                                  #  74    0x8753f  1      
  movq 0x4b0(%rsp), %r14               #  75    0x87540  8      
  addl $0x4b8, %esp                    #  76    0x87548  6      
  addq %r15, %rsp                      #  77    0x8754e  3      
  popq %r11                            #  78    0x87551  3      
  andl $0xffffffe0, %r11d              #  79    0x87554  7      
  addq %r15, %r11                      #  80    0x8755b  3      
  jmpq %r11                            #  81    0x8755e  3      
  nop                                  #  82    0x87561  1      
                                                                
.size __sbprintf, .-__sbprintf

