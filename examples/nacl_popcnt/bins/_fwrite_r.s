  .text
  .globl _fwrite_r
  .type _fwrite_r, @function

#! file-offset 0x69500
#! rip-offset  0x69500
#! capacity    608 bytes

# Text                                   #  Line  RIP      Bytes  
._fwrite_r:                              #        0x69500  0      
  movq %rbx, -0x20(%rsp)                 #  1     0x69500  5      
  movq %r12, -0x18(%rsp)                 #  2     0x69505  5      
  movl %ecx, %r12d                       #  3     0x6950a  3      
  movq %r13, -0x10(%rsp)                 #  4     0x6950d  5      
  movq %r14, -0x8(%rsp)                  #  5     0x69512  5      
  subl $0x58, %esp                       #  6     0x69517  3      
  addq %r15, %rsp                        #  7     0x6951a  3      
  imull %edx, %ecx                       #  8     0x6951d  3      
  movl %edi, %r14d                       #  9     0x69520  3      
  leal 0x20(%rsp), %eax                  #  10    0x69523  4      
  testq %r14, %r14                       #  11    0x69527  3      
  movl %edx, %ebx                        #  12    0x6952a  2      
  movl %r8d, %r13d                       #  13    0x6952c  3      
  movl %esi, 0x20(%rsp)                  #  14    0x6952f  4      
  movl %eax, 0x10(%rsp)                  #  15    0x69533  4      
  movl %ecx, 0x24(%rsp)                  #  16    0x69537  4      
  movl %ecx, 0x18(%rsp)                  #  17    0x6953b  4      
  nop                                    #  18    0x6953f  1      
  movl $0x1, 0x14(%rsp)                  #  19    0x69540  8      
  je .L_69560                            #  20    0x69548  6      
  movl %r14d, %r14d                      #  21    0x6954e  3      
  movl 0x38(%r15,%r14,1), %eax           #  22    0x69551  5      
  testl %eax, %eax                       #  23    0x69556  2      
  je .L_696a0                            #  24    0x69558  6      
  nop                                    #  25    0x6955e  1      
.L_69560:                                #        0x6955f  0      
  movl %r13d, %r13d                      #  26    0x6955f  3      
  movzwl 0xc(%r15,%r13,1), %edx          #  27    0x69562  6      
  movswl %dx, %eax                       #  28    0x69568  3      
  testb $0x2, %ah                        #  29    0x6956b  3      
  je .L_69660                            #  30    0x6956e  6      
  nop                                    #  31    0x69574  1      
.L_69580:                                #        0x69575  0      
  testb $0x20, %ah                       #  32    0x69575  3      
  jne .L_695a0                           #  33    0x69578  6      
  movl %r13d, %r13d                      #  34    0x6957e  3      
  andl $0xffffdfff, 0x78(%r15,%r13,1)    #  35    0x69581  9      
  orb $0x20, %dh                         #  36    0x6958a  3      
  movl %r13d, %r13d                      #  37    0x6958d  3      
  movw %dx, 0xc(%r15,%r13,1)             #  38    0x69590  6      
  nop                                    #  39    0x69596  1      
.L_695a0:                                #        0x69597  0      
  leal 0x10(%rsp), %edx                  #  40    0x69597  4      
  movl %r13d, %esi                       #  41    0x6959b  3      
  movl %r14d, %edi                       #  42    0x6959e  3      
  movl %ecx, 0x8(%rsp)                   #  43    0x695a1  4      
  nop                                    #  44    0x695a5  1      
  callq .__sfvwrite_r                    #  45    0x695a6  5      
  testl %eax, %eax                       #  46    0x695ab  2      
  movl 0x8(%rsp), %ecx                   #  47    0x695ad  4      
  jne .L_69620                           #  48    0x695b1  6      
  movl %r13d, %r13d                      #  49    0x695b7  3      
  testb $0x2, 0xd(%r15,%r13,1)           #  50    0x695ba  6      
  je .L_69720                            #  51    0x695c0  6      
  nop                                    #  52    0x695c6  1      
.L_695e0:                                #        0x695c7  0      
  movl %r12d, %eax                       #  53    0x695c7  3      
  movq 0x38(%rsp), %rbx                  #  54    0x695ca  5      
  movq 0x40(%rsp), %r12                  #  55    0x695cf  5      
  movq 0x48(%rsp), %r13                  #  56    0x695d4  5      
  movq 0x50(%rsp), %r14                  #  57    0x695d9  5      
  addl $0x58, %esp                       #  58    0x695de  3      
  addq %r15, %rsp                        #  59    0x695e1  3      
  popq %r11                              #  60    0x695e4  3      
  nop                                    #  61    0x695e7  1      
  andl $0xffffffe0, %r11d                #  62    0x695e8  7      
  addq %r15, %r11                        #  63    0x695ef  3      
  jmpq %r11                              #  64    0x695f2  3      
  nop                                    #  65    0x695f5  1      
  nop                                    #  66    0x695f6  1      
.L_69620:                                #        0x695f7  0      
  movl %r13d, %r13d                      #  67    0x695f7  3      
  testb $0x2, 0xd(%r15,%r13,1)           #  68    0x695fa  6      
  je .L_696e0                            #  69    0x69600  6      
  xchgw %ax, %ax                         #  70    0x69606  3      
  nop                                    #  71    0x69609  1      
.L_69640:                                #        0x6960a  0      
  movl %ecx, %r12d                       #  72    0x6960a  3      
  subl 0x18(%rsp), %r12d                 #  73    0x6960d  5      
  xorl %edx, %edx                        #  74    0x69612  2      
  movl %r12d, %eax                       #  75    0x69614  3      
  divl %ebx                              #  76    0x69617  2      
  movl %eax, %r12d                       #  77    0x69619  3      
  jmpq .L_695e0                          #  78    0x6961c  5      
  nop                                    #  79    0x69621  1      
.L_69660:                                #        0x69622  0      
  leal 0x5c(%r13), %edi                  #  80    0x69622  4      
  movl %ecx, 0x8(%rsp)                   #  81    0x69626  4      
  nop                                    #  82    0x6962a  1      
  nop                                    #  83    0x6962b  1      
  callq .__local_lock_acquire_recursive  #  84    0x6962c  5      
  movl %r13d, %r13d                      #  85    0x69631  3      
  movzwl 0xc(%r15,%r13,1), %edx          #  86    0x69634  6      
  movl 0x8(%rsp), %ecx                   #  87    0x6963a  4      
  movswl %dx, %eax                       #  88    0x6963e  3      
  jmpq .L_69580                          #  89    0x69641  5      
  nop                                    #  90    0x69646  1      
.L_696a0:                                #        0x69647  0      
  movl %r14d, %edi                       #  91    0x69647  3      
  movl %ecx, 0x8(%rsp)                   #  92    0x6964a  4      
  nop                                    #  93    0x6964e  1      
  nop                                    #  94    0x6964f  1      
  callq .__sinit                         #  95    0x69650  5      
  movl 0x8(%rsp), %ecx                   #  96    0x69655  4      
  jmpq .L_69560                          #  97    0x69659  5      
  nop                                    #  98    0x6965e  1      
  nop                                    #  99    0x6965f  1      
.L_696e0:                                #        0x69660  0      
  leal 0x5c(%r13), %edi                  #  100   0x69660  4      
  movl %ecx, 0x8(%rsp)                   #  101   0x69664  4      
  nop                                    #  102   0x69668  1      
  nop                                    #  103   0x69669  1      
  callq .__local_lock_release_recursive  #  104   0x6966a  5      
  movl 0x8(%rsp), %ecx                   #  105   0x6966f  4      
  jmpq .L_69640                          #  106   0x69673  5      
  nop                                    #  107   0x69678  1      
  nop                                    #  108   0x69679  1      
.L_69720:                                #        0x6967a  0      
  leal 0x5c(%r13), %edi                  #  109   0x6967a  4      
  nop                                    #  110   0x6967e  1      
  nop                                    #  111   0x6967f  1      
  callq .__local_lock_release_recursive  #  112   0x69680  5      
  jmpq .L_695e0                          #  113   0x69685  5      
  nop                                    #  114   0x6968a  1      
  nop                                    #  115   0x6968b  1      
                                                                  
.size _fwrite_r, .-_fwrite_r

