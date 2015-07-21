  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function

#! file-offset 0x8190
#! rip-offset  0x408190
#! capacity    112 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.__libc_csu_init:            #        0x408190  0      OPC=0     
  pushq %r15                 #  1     0x408190  2      OPC=1861  
  movl %edi, %r15d           #  2     0x408192  3      OPC=1157  
  pushq %r14                 #  3     0x408195  2      OPC=1861  
  movq %rsi, %r14            #  4     0x408197  3      OPC=1162  
  pushq %r13                 #  5     0x40819a  2      OPC=1861  
  movq %rdx, %r13            #  6     0x40819c  3      OPC=1162  
  pushq %r12                 #  7     0x40819f  2      OPC=1861  
  leaq 0x21cc20(%rip), %r12  #  8     0x4081a1  7      OPC=1069  
  pushq %rbp                 #  9     0x4081a8  1      OPC=1861  
  leaq 0x21cc28(%rip), %rbp  #  10    0x4081a9  7      OPC=1069  
  pushq %rbx                 #  11    0x4081b0  1      OPC=1861  
  subq %r12, %rbp            #  12    0x4081b1  3      OPC=2391  
  xorl %ebx, %ebx            #  13    0x4081b4  2      OPC=3758  
  sarq $0x3, %rbp            #  14    0x4081b6  4      OPC=2099  
  subq $0x8, %rsp            #  15    0x4081ba  4      OPC=2389  
  callq ._init               #  16    0x4081be  5      OPC=260   
  testq %rbp, %rbp           #  17    0x4081c3  3      OPC=2438  
  je .L_4081e6               #  18    0x4081c6  6      OPC=893   
  nop                        #  19    0x4081cc  1      OPC=1343  
  nop                        #  20    0x4081cd  1      OPC=1343  
  nop                        #  21    0x4081ce  1      OPC=1343  
  nop                        #  22    0x4081cf  1      OPC=1343  
  nop                        #  23    0x4081d0  1      OPC=1343  
  nop                        #  24    0x4081d1  1      OPC=1343  
  nop                        #  25    0x4081d2  1      OPC=1343  
  nop                        #  26    0x4081d3  1      OPC=1343  
  nop                        #  27    0x4081d4  1      OPC=1343  
  nop                        #  28    0x4081d5  1      OPC=1343  
.L_4081d0:                   #        0x4081d6  0      OPC=0     
  movq %r13, %rdx            #  29    0x4081d6  3      OPC=1162  
  movq %r14, %rsi            #  30    0x4081d9  3      OPC=1162  
  movl %r15d, %edi           #  31    0x4081dc  3      OPC=1157  
  callq (%r12,%rbx,8)        #  32    0x4081df  4      OPC=257   
  addq $0x1, %rbx            #  33    0x4081e3  4      OPC=70    
  cmpq %rbp, %rbx            #  34    0x4081e7  3      OPC=477   
  jne .L_4081d0              #  35    0x4081ea  6      OPC=963   
  nop                        #  36    0x4081f0  1      OPC=1343  
  nop                        #  37    0x4081f1  1      OPC=1343  
.L_4081e6:                   #        0x4081f2  0      OPC=0     
  addq $0x8, %rsp            #  38    0x4081f2  4      OPC=70    
  popq %rbx                  #  39    0x4081f6  1      OPC=1694  
  popq %rbp                  #  40    0x4081f7  1      OPC=1694  
  popq %r12                  #  41    0x4081f8  2      OPC=1694  
  popq %r13                  #  42    0x4081fa  2      OPC=1694  
  popq %r14                  #  43    0x4081fc  2      OPC=1694  
  popq %r15                  #  44    0x4081fe  2      OPC=1694  
  retq                       #  45    0x408200  1      OPC=1978  
  nop                        #  46    0x408201  1      OPC=1343  
  nop                        #  47    0x408202  1      OPC=1343  
  nop                        #  48    0x408203  1      OPC=1343  
  nop                        #  49    0x408204  1      OPC=1343  
  nop                        #  50    0x408205  1      OPC=1343  
  nop                        #  51    0x408206  1      OPC=1343  
  nop                        #  52    0x408207  1      OPC=1343  
  nop                        #  53    0x408208  1      OPC=1343  
  nop                        #  54    0x408209  1      OPC=1343  
  nop                        #  55    0x40820a  1      OPC=1343  
  nop                        #  56    0x40820b  1      OPC=1343  
                                                                 
.size __libc_csu_init, .-__libc_csu_init

