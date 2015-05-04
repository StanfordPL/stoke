  .text
  .globl _fwrite_r
  .type _fwrite_r, @function

#! file-offset 0x695a0
#! rip-offset  0x695a0
#! capacity    608 bytes

# Text                                   #  Line  RIP      Bytes  
._fwrite_r:                              #        0x695a0  0      
  movq %rbx, -0x20(%rsp)                 #  1     0x695a0  5      
  movq %r12, -0x18(%rsp)                 #  2     0x695a5  5      
  movl %ecx, %r12d                       #  3     0x695aa  3      
  movq %r13, -0x10(%rsp)                 #  4     0x695ad  5      
  movq %r14, -0x8(%rsp)                  #  5     0x695b2  5      
  subl $0x58, %esp                       #  6     0x695b7  3      
  addq %r15, %rsp                        #  7     0x695ba  3      
  imull %edx, %ecx                       #  8     0x695bd  3      
  movl %edi, %r14d                       #  9     0x695c0  3      
  leal 0x20(%rsp), %eax                  #  10    0x695c3  4      
  testq %r14, %r14                       #  11    0x695c7  3      
  movl %edx, %ebx                        #  12    0x695ca  2      
  movl %r8d, %r13d                       #  13    0x695cc  3      
  movl %esi, 0x20(%rsp)                  #  14    0x695cf  4      
  movl %eax, 0x10(%rsp)                  #  15    0x695d3  4      
  movl %ecx, 0x24(%rsp)                  #  16    0x695d7  4      
  movl %ecx, 0x18(%rsp)                  #  17    0x695db  4      
  nop                                    #  18    0x695df  1      
  movl $0x1, 0x14(%rsp)                  #  19    0x695e0  8      
  je .L_69600                            #  20    0x695e8  6      
  movl %r14d, %r14d                      #  21    0x695ee  3      
  movl 0x38(%r15,%r14,1), %eax           #  22    0x695f1  5      
  testl %eax, %eax                       #  23    0x695f6  2      
  je .L_69740                            #  24    0x695f8  6      
  nop                                    #  25    0x695fe  1      
.L_69600:                                #        0x695ff  0      
  movl %r13d, %r13d                      #  26    0x695ff  3      
  movzwl 0xc(%r15,%r13,1), %edx          #  27    0x69602  6      
  movswl %dx, %eax                       #  28    0x69608  3      
  testb $0x2, %ah                        #  29    0x6960b  3      
  je .L_69700                            #  30    0x6960e  6      
  nop                                    #  31    0x69614  1      
.L_69620:                                #        0x69615  0      
  testb $0x20, %ah                       #  32    0x69615  3      
  jne .L_69640                           #  33    0x69618  6      
  movl %r13d, %r13d                      #  34    0x6961e  3      
  andl $0xffffdfff, 0x78(%r15,%r13,1)    #  35    0x69621  9      
  orb $0x20, %dh                         #  36    0x6962a  3      
  movl %r13d, %r13d                      #  37    0x6962d  3      
  movw %dx, 0xc(%r15,%r13,1)             #  38    0x69630  6      
  nop                                    #  39    0x69636  1      
.L_69640:                                #        0x69637  0      
  leal 0x10(%rsp), %edx                  #  40    0x69637  4      
  movl %r13d, %esi                       #  41    0x6963b  3      
  movl %r14d, %edi                       #  42    0x6963e  3      
  movl %ecx, 0x8(%rsp)                   #  43    0x69641  4      
  nop                                    #  44    0x69645  1      
  callq .__sfvwrite_r                    #  45    0x69646  5      
  testl %eax, %eax                       #  46    0x6964b  2      
  movl 0x8(%rsp), %ecx                   #  47    0x6964d  4      
  jne .L_696c0                           #  48    0x69651  6      
  movl %r13d, %r13d                      #  49    0x69657  3      
  testb $0x2, 0xd(%r15,%r13,1)           #  50    0x6965a  6      
  je .L_697c0                            #  51    0x69660  6      
  nop                                    #  52    0x69666  1      
.L_69680:                                #        0x69667  0      
  movl %r12d, %eax                       #  53    0x69667  3      
  movq 0x38(%rsp), %rbx                  #  54    0x6966a  5      
  movq 0x40(%rsp), %r12                  #  55    0x6966f  5      
  movq 0x48(%rsp), %r13                  #  56    0x69674  5      
  movq 0x50(%rsp), %r14                  #  57    0x69679  5      
  addl $0x58, %esp                       #  58    0x6967e  3      
  addq %r15, %rsp                        #  59    0x69681  3      
  popq %r11                              #  60    0x69684  3      
  nop                                    #  61    0x69687  1      
  andl $0xffffffe0, %r11d                #  62    0x69688  7      
  addq %r15, %r11                        #  63    0x6968f  3      
  jmpq %r11                              #  64    0x69692  3      
  nop                                    #  65    0x69695  1      
  nop                                    #  66    0x69696  1      
.L_696c0:                                #        0x69697  0      
  movl %r13d, %r13d                      #  67    0x69697  3      
  testb $0x2, 0xd(%r15,%r13,1)           #  68    0x6969a  6      
  je .L_69780                            #  69    0x696a0  6      
  xchgw %ax, %ax                         #  70    0x696a6  3      
  nop                                    #  71    0x696a9  1      
.L_696e0:                                #        0x696aa  0      
  movl %ecx, %r12d                       #  72    0x696aa  3      
  subl 0x18(%rsp), %r12d                 #  73    0x696ad  5      
  xorl %edx, %edx                        #  74    0x696b2  2      
  movl %r12d, %eax                       #  75    0x696b4  3      
  divl %ebx                              #  76    0x696b7  2      
  movl %eax, %r12d                       #  77    0x696b9  3      
  jmpq .L_69680                          #  78    0x696bc  5      
  nop                                    #  79    0x696c1  1      
.L_69700:                                #        0x696c2  0      
  leal 0x5c(%r13), %edi                  #  80    0x696c2  4      
  movl %ecx, 0x8(%rsp)                   #  81    0x696c6  4      
  nop                                    #  82    0x696ca  1      
  nop                                    #  83    0x696cb  1      
  callq .__local_lock_acquire_recursive  #  84    0x696cc  5      
  movl %r13d, %r13d                      #  85    0x696d1  3      
  movzwl 0xc(%r15,%r13,1), %edx          #  86    0x696d4  6      
  movl 0x8(%rsp), %ecx                   #  87    0x696da  4      
  movswl %dx, %eax                       #  88    0x696de  3      
  jmpq .L_69620                          #  89    0x696e1  5      
  nop                                    #  90    0x696e6  1      
.L_69740:                                #        0x696e7  0      
  movl %r14d, %edi                       #  91    0x696e7  3      
  movl %ecx, 0x8(%rsp)                   #  92    0x696ea  4      
  nop                                    #  93    0x696ee  1      
  nop                                    #  94    0x696ef  1      
  callq .__sinit                         #  95    0x696f0  5      
  movl 0x8(%rsp), %ecx                   #  96    0x696f5  4      
  jmpq .L_69600                          #  97    0x696f9  5      
  nop                                    #  98    0x696fe  1      
  nop                                    #  99    0x696ff  1      
.L_69780:                                #        0x69700  0      
  leal 0x5c(%r13), %edi                  #  100   0x69700  4      
  movl %ecx, 0x8(%rsp)                   #  101   0x69704  4      
  nop                                    #  102   0x69708  1      
  nop                                    #  103   0x69709  1      
  callq .__local_lock_release_recursive  #  104   0x6970a  5      
  movl 0x8(%rsp), %ecx                   #  105   0x6970f  4      
  jmpq .L_696e0                          #  106   0x69713  5      
  nop                                    #  107   0x69718  1      
  nop                                    #  108   0x69719  1      
.L_697c0:                                #        0x6971a  0      
  leal 0x5c(%r13), %edi                  #  109   0x6971a  4      
  nop                                    #  110   0x6971e  1      
  nop                                    #  111   0x6971f  1      
  callq .__local_lock_release_recursive  #  112   0x69720  5      
  jmpq .L_69680                          #  113   0x69725  5      
  nop                                    #  114   0x6972a  1      
  nop                                    #  115   0x6972b  1      
                                                                  
.size _fwrite_r, .-_fwrite_r

