  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function

#! file-offset 0x5b0
#! rip-offset  0x4005b0
#! capacity    112 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.__libc_csu_init:            #        0x4005b0  0      OPC=0     
  pushq %r15                 #  1     0x4005b0  2      OPC=1861  
  movl %edi, %r15d           #  2     0x4005b2  3      OPC=1157  
  pushq %r14                 #  3     0x4005b5  2      OPC=1861  
  movq %rsi, %r14            #  4     0x4005b7  3      OPC=1162  
  pushq %r13                 #  5     0x4005ba  2      OPC=1861  
  movq %rdx, %r13            #  6     0x4005bc  3      OPC=1162  
  pushq %r12                 #  7     0x4005bf  2      OPC=1861  
  leaq 0x200848(%rip), %r12  #  8     0x4005c1  7      OPC=1069  
  pushq %rbp                 #  9     0x4005c8  1      OPC=1861  
  leaq 0x200848(%rip), %rbp  #  10    0x4005c9  7      OPC=1069  
  pushq %rbx                 #  11    0x4005d0  1      OPC=1861  
  subq %r12, %rbp            #  12    0x4005d1  3      OPC=2391  
  xorl %ebx, %ebx            #  13    0x4005d4  2      OPC=3758  
  sarq $0x3, %rbp            #  14    0x4005d6  4      OPC=2099  
  subq $0x8, %rsp            #  15    0x4005da  4      OPC=2389  
  callq ._init               #  16    0x4005de  5      OPC=260   
  testq %rbp, %rbp           #  17    0x4005e3  3      OPC=2438  
  je .L_400606               #  18    0x4005e6  6      OPC=893   
  nop                        #  19    0x4005ec  1      OPC=1343  
  nop                        #  20    0x4005ed  1      OPC=1343  
  nop                        #  21    0x4005ee  1      OPC=1343  
  nop                        #  22    0x4005ef  1      OPC=1343  
  nop                        #  23    0x4005f0  1      OPC=1343  
  nop                        #  24    0x4005f1  1      OPC=1343  
  nop                        #  25    0x4005f2  1      OPC=1343  
  nop                        #  26    0x4005f3  1      OPC=1343  
  nop                        #  27    0x4005f4  1      OPC=1343  
  nop                        #  28    0x4005f5  1      OPC=1343  
.L_4005f0:                   #        0x4005f6  0      OPC=0     
  movq %r13, %rdx            #  29    0x4005f6  3      OPC=1162  
  movq %r14, %rsi            #  30    0x4005f9  3      OPC=1162  
  movl %r15d, %edi           #  31    0x4005fc  3      OPC=1157  
  callq (%r12,%rbx,8)        #  32    0x4005ff  4      OPC=257   
  addq $0x1, %rbx            #  33    0x400603  4      OPC=70    
  cmpq %rbp, %rbx            #  34    0x400607  3      OPC=477   
  jne .L_4005f0              #  35    0x40060a  6      OPC=963   
  nop                        #  36    0x400610  1      OPC=1343  
  nop                        #  37    0x400611  1      OPC=1343  
.L_400606:                   #        0x400612  0      OPC=0     
  addq $0x8, %rsp            #  38    0x400612  4      OPC=70    
  popq %rbx                  #  39    0x400616  1      OPC=1694  
  popq %rbp                  #  40    0x400617  1      OPC=1694  
  popq %r12                  #  41    0x400618  2      OPC=1694  
  popq %r13                  #  42    0x40061a  2      OPC=1694  
  popq %r14                  #  43    0x40061c  2      OPC=1694  
  popq %r15                  #  44    0x40061e  2      OPC=1694  
  retq                       #  45    0x400620  1      OPC=1978  
  nop                        #  46    0x400621  1      OPC=1343  
  nop                        #  47    0x400622  1      OPC=1343  
  nop                        #  48    0x400623  1      OPC=1343  
  nop                        #  49    0x400624  1      OPC=1343  
  nop                        #  50    0x400625  1      OPC=1343  
  nop                        #  51    0x400626  1      OPC=1343  
  nop                        #  52    0x400627  1      OPC=1343  
  nop                        #  53    0x400628  1      OPC=1343  
  nop                        #  54    0x400629  1      OPC=1343  
  nop                        #  55    0x40062a  1      OPC=1343  
  nop                        #  56    0x40062b  1      OPC=1343  
                                                                 
.size __libc_csu_init, .-__libc_csu_init

