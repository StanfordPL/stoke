  .text
  .globl _fwrite_r
  .type _fwrite_r, @function

#! file-offset 0x69520
#! rip-offset  0x69520
#! capacity    608 bytes

# Text                                   #  Line  RIP      Bytes  
._fwrite_r:                              #        0x69520  0      
  movq %rbx, -0x20(%rsp)                 #  1     0x69520  5      
  movq %r12, -0x18(%rsp)                 #  2     0x69525  5      
  movl %ecx, %r12d                       #  3     0x6952a  3      
  movq %r13, -0x10(%rsp)                 #  4     0x6952d  5      
  movq %r14, -0x8(%rsp)                  #  5     0x69532  5      
  subl $0x58, %esp                       #  6     0x69537  3      
  addq %r15, %rsp                        #  7     0x6953a  3      
  imull %edx, %ecx                       #  8     0x6953d  3      
  movl %edi, %r14d                       #  9     0x69540  3      
  leal 0x20(%rsp), %eax                  #  10    0x69543  4      
  testq %r14, %r14                       #  11    0x69547  3      
  movl %edx, %ebx                        #  12    0x6954a  2      
  movl %r8d, %r13d                       #  13    0x6954c  3      
  movl %esi, 0x20(%rsp)                  #  14    0x6954f  4      
  movl %eax, 0x10(%rsp)                  #  15    0x69553  4      
  movl %ecx, 0x24(%rsp)                  #  16    0x69557  4      
  movl %ecx, 0x18(%rsp)                  #  17    0x6955b  4      
  nop                                    #  18    0x6955f  1      
  movl $0x1, 0x14(%rsp)                  #  19    0x69560  8      
  je .L_69580                            #  20    0x69568  6      
  movl %r14d, %r14d                      #  21    0x6956e  3      
  movl 0x38(%r15,%r14,1), %eax           #  22    0x69571  5      
  testl %eax, %eax                       #  23    0x69576  2      
  je .L_696c0                            #  24    0x69578  6      
  nop                                    #  25    0x6957e  1      
.L_69580:                                #        0x6957f  0      
  movl %r13d, %r13d                      #  26    0x6957f  3      
  movzwl 0xc(%r15,%r13,1), %edx          #  27    0x69582  6      
  movswl %dx, %eax                       #  28    0x69588  3      
  testb $0x2, %ah                        #  29    0x6958b  3      
  je .L_69680                            #  30    0x6958e  6      
  nop                                    #  31    0x69594  1      
.L_695a0:                                #        0x69595  0      
  testb $0x20, %ah                       #  32    0x69595  3      
  jne .L_695c0                           #  33    0x69598  6      
  movl %r13d, %r13d                      #  34    0x6959e  3      
  andl $0xffffdfff, 0x78(%r15,%r13,1)    #  35    0x695a1  9      
  orb $0x20, %dh                         #  36    0x695aa  3      
  movl %r13d, %r13d                      #  37    0x695ad  3      
  movw %dx, 0xc(%r15,%r13,1)             #  38    0x695b0  6      
  nop                                    #  39    0x695b6  1      
.L_695c0:                                #        0x695b7  0      
  leal 0x10(%rsp), %edx                  #  40    0x695b7  4      
  movl %r13d, %esi                       #  41    0x695bb  3      
  movl %r14d, %edi                       #  42    0x695be  3      
  movl %ecx, 0x8(%rsp)                   #  43    0x695c1  4      
  nop                                    #  44    0x695c5  1      
  callq .__sfvwrite_r                    #  45    0x695c6  5      
  testl %eax, %eax                       #  46    0x695cb  2      
  movl 0x8(%rsp), %ecx                   #  47    0x695cd  4      
  jne .L_69640                           #  48    0x695d1  6      
  movl %r13d, %r13d                      #  49    0x695d7  3      
  testb $0x2, 0xd(%r15,%r13,1)           #  50    0x695da  6      
  je .L_69740                            #  51    0x695e0  6      
  nop                                    #  52    0x695e6  1      
.L_69600:                                #        0x695e7  0      
  movl %r12d, %eax                       #  53    0x695e7  3      
  movq 0x38(%rsp), %rbx                  #  54    0x695ea  5      
  movq 0x40(%rsp), %r12                  #  55    0x695ef  5      
  movq 0x48(%rsp), %r13                  #  56    0x695f4  5      
  movq 0x50(%rsp), %r14                  #  57    0x695f9  5      
  addl $0x58, %esp                       #  58    0x695fe  3      
  addq %r15, %rsp                        #  59    0x69601  3      
  popq %r11                              #  60    0x69604  3      
  nop                                    #  61    0x69607  1      
  andl $0xffffffe0, %r11d                #  62    0x69608  7      
  addq %r15, %r11                        #  63    0x6960f  3      
  jmpq %r11                              #  64    0x69612  3      
  nop                                    #  65    0x69615  1      
  nop                                    #  66    0x69616  1      
.L_69640:                                #        0x69617  0      
  movl %r13d, %r13d                      #  67    0x69617  3      
  testb $0x2, 0xd(%r15,%r13,1)           #  68    0x6961a  6      
  je .L_69700                            #  69    0x69620  6      
  xchgw %ax, %ax                         #  70    0x69626  3      
  nop                                    #  71    0x69629  1      
.L_69660:                                #        0x6962a  0      
  movl %ecx, %r12d                       #  72    0x6962a  3      
  subl 0x18(%rsp), %r12d                 #  73    0x6962d  5      
  xorl %edx, %edx                        #  74    0x69632  2      
  movl %r12d, %eax                       #  75    0x69634  3      
  divl %ebx                              #  76    0x69637  2      
  movl %eax, %r12d                       #  77    0x69639  3      
  jmpq .L_69600                          #  78    0x6963c  5      
  nop                                    #  79    0x69641  1      
.L_69680:                                #        0x69642  0      
  leal 0x5c(%r13), %edi                  #  80    0x69642  4      
  movl %ecx, 0x8(%rsp)                   #  81    0x69646  4      
  nop                                    #  82    0x6964a  1      
  nop                                    #  83    0x6964b  1      
  callq .__local_lock_acquire_recursive  #  84    0x6964c  5      
  movl %r13d, %r13d                      #  85    0x69651  3      
  movzwl 0xc(%r15,%r13,1), %edx          #  86    0x69654  6      
  movl 0x8(%rsp), %ecx                   #  87    0x6965a  4      
  movswl %dx, %eax                       #  88    0x6965e  3      
  jmpq .L_695a0                          #  89    0x69661  5      
  nop                                    #  90    0x69666  1      
.L_696c0:                                #        0x69667  0      
  movl %r14d, %edi                       #  91    0x69667  3      
  movl %ecx, 0x8(%rsp)                   #  92    0x6966a  4      
  nop                                    #  93    0x6966e  1      
  nop                                    #  94    0x6966f  1      
  callq .__sinit                         #  95    0x69670  5      
  movl 0x8(%rsp), %ecx                   #  96    0x69675  4      
  jmpq .L_69580                          #  97    0x69679  5      
  nop                                    #  98    0x6967e  1      
  nop                                    #  99    0x6967f  1      
.L_69700:                                #        0x69680  0      
  leal 0x5c(%r13), %edi                  #  100   0x69680  4      
  movl %ecx, 0x8(%rsp)                   #  101   0x69684  4      
  nop                                    #  102   0x69688  1      
  nop                                    #  103   0x69689  1      
  callq .__local_lock_release_recursive  #  104   0x6968a  5      
  movl 0x8(%rsp), %ecx                   #  105   0x6968f  4      
  jmpq .L_69660                          #  106   0x69693  5      
  nop                                    #  107   0x69698  1      
  nop                                    #  108   0x69699  1      
.L_69740:                                #        0x6969a  0      
  leal 0x5c(%r13), %edi                  #  109   0x6969a  4      
  nop                                    #  110   0x6969e  1      
  nop                                    #  111   0x6969f  1      
  callq .__local_lock_release_recursive  #  112   0x696a0  5      
  jmpq .L_69600                          #  113   0x696a5  5      
  nop                                    #  114   0x696aa  1      
  nop                                    #  115   0x696ab  1      
                                                                  
.size _fwrite_r, .-_fwrite_r

