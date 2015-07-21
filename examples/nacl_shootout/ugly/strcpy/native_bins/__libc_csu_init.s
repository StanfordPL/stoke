  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function

#! file-offset 0x8130
#! rip-offset  0x408130
#! capacity    112 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.__libc_csu_init:            #        0x408130  0      OPC=0     
  pushq %r15                 #  1     0x408130  2      OPC=1861  
  movl %edi, %r15d           #  2     0x408132  3      OPC=1157  
  pushq %r14                 #  3     0x408135  2      OPC=1861  
  movq %rsi, %r14            #  4     0x408137  3      OPC=1162  
  pushq %r13                 #  5     0x40813a  2      OPC=1861  
  movq %rdx, %r13            #  6     0x40813c  3      OPC=1162  
  pushq %r12                 #  7     0x40813f  2      OPC=1861  
  leaq 0x21cc80(%rip), %r12  #  8     0x408141  7      OPC=1069  
  pushq %rbp                 #  9     0x408148  1      OPC=1861  
  leaq 0x21cc88(%rip), %rbp  #  10    0x408149  7      OPC=1069  
  pushq %rbx                 #  11    0x408150  1      OPC=1861  
  subq %r12, %rbp            #  12    0x408151  3      OPC=2391  
  xorl %ebx, %ebx            #  13    0x408154  2      OPC=3758  
  sarq $0x3, %rbp            #  14    0x408156  4      OPC=2099  
  subq $0x8, %rsp            #  15    0x40815a  4      OPC=2389  
  callq ._init               #  16    0x40815e  5      OPC=260   
  testq %rbp, %rbp           #  17    0x408163  3      OPC=2438  
  je .L_408186               #  18    0x408166  6      OPC=893   
  nop                        #  19    0x40816c  1      OPC=1343  
  nop                        #  20    0x40816d  1      OPC=1343  
  nop                        #  21    0x40816e  1      OPC=1343  
  nop                        #  22    0x40816f  1      OPC=1343  
  nop                        #  23    0x408170  1      OPC=1343  
  nop                        #  24    0x408171  1      OPC=1343  
  nop                        #  25    0x408172  1      OPC=1343  
  nop                        #  26    0x408173  1      OPC=1343  
  nop                        #  27    0x408174  1      OPC=1343  
  nop                        #  28    0x408175  1      OPC=1343  
.L_408170:                   #        0x408176  0      OPC=0     
  movq %r13, %rdx            #  29    0x408176  3      OPC=1162  
  movq %r14, %rsi            #  30    0x408179  3      OPC=1162  
  movl %r15d, %edi           #  31    0x40817c  3      OPC=1157  
  callq (%r12,%rbx,8)        #  32    0x40817f  4      OPC=257   
  addq $0x1, %rbx            #  33    0x408183  4      OPC=70    
  cmpq %rbp, %rbx            #  34    0x408187  3      OPC=477   
  jne .L_408170              #  35    0x40818a  6      OPC=963   
  nop                        #  36    0x408190  1      OPC=1343  
  nop                        #  37    0x408191  1      OPC=1343  
.L_408186:                   #        0x408192  0      OPC=0     
  addq $0x8, %rsp            #  38    0x408192  4      OPC=70    
  popq %rbx                  #  39    0x408196  1      OPC=1694  
  popq %rbp                  #  40    0x408197  1      OPC=1694  
  popq %r12                  #  41    0x408198  2      OPC=1694  
  popq %r13                  #  42    0x40819a  2      OPC=1694  
  popq %r14                  #  43    0x40819c  2      OPC=1694  
  popq %r15                  #  44    0x40819e  2      OPC=1694  
  retq                       #  45    0x4081a0  1      OPC=1978  
  nop                        #  46    0x4081a1  1      OPC=1343  
  nop                        #  47    0x4081a2  1      OPC=1343  
  nop                        #  48    0x4081a3  1      OPC=1343  
  nop                        #  49    0x4081a4  1      OPC=1343  
  nop                        #  50    0x4081a5  1      OPC=1343  
  nop                        #  51    0x4081a6  1      OPC=1343  
  nop                        #  52    0x4081a7  1      OPC=1343  
  nop                        #  53    0x4081a8  1      OPC=1343  
  nop                        #  54    0x4081a9  1      OPC=1343  
  nop                        #  55    0x4081aa  1      OPC=1343  
  nop                        #  56    0x4081ab  1      OPC=1343  
                                                                 
.size __libc_csu_init, .-__libc_csu_init

