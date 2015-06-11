  .text
  .globl deregister_tm_clones
  .type deregister_tm_clones, @function

#! file-offset 0x4d0
#! rip-offset  0x4004d0
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode    
.deregister_tm_clones:  #        0x4004d0  0      OPC=0     
  movl $0x601047, %eax  #  1     0x4004d0  5      OPC=1154  
  pushq %rbp            #  2     0x4004d5  1      OPC=1861  
  subq $0x601040, %rax  #  3     0x4004d6  6      OPC=2399  
  cmpq $0xe, %rax       #  4     0x4004dc  4      OPC=475   
  movq %rsp, %rbp       #  5     0x4004e0  3      OPC=1162  
  jbe .L_400500         #  6     0x4004e3  6      OPC=881   
  nop                   #  7     0x4004e9  1      OPC=1343  
  nop                   #  8     0x4004ea  1      OPC=1343  
  movl $0x0, %eax       #  9     0x4004eb  5      OPC=1154  
  testq %rax, %rax      #  10    0x4004f0  3      OPC=2438  
  je .L_400500          #  11    0x4004f3  6      OPC=893   
  nop                   #  12    0x4004f9  1      OPC=1343  
  nop                   #  13    0x4004fa  1      OPC=1343  
  popq %rbp             #  14    0x4004fb  1      OPC=1694  
  movl $0x601040, %edi  #  15    0x4004fc  5      OPC=1154  
  jmpq %rax             #  16    0x400501  2      OPC=928   
  nop                   #  17    0x400503  1      OPC=1343  
  nop                   #  18    0x400504  1      OPC=1343  
  nop                   #  19    0x400505  1      OPC=1343  
  nop                   #  20    0x400506  1      OPC=1343  
  nop                   #  21    0x400507  1      OPC=1343  
  nop                   #  22    0x400508  1      OPC=1343  
  nop                   #  23    0x400509  1      OPC=1343  
  nop                   #  24    0x40050a  1      OPC=1343  
  nop                   #  25    0x40050b  1      OPC=1343  
.L_400500:              #        0x40050c  0      OPC=0     
  popq %rbp             #  26    0x40050c  1      OPC=1694  
  retq                  #  27    0x40050d  1      OPC=1978  
  nop                   #  28    0x40050e  1      OPC=1343  
  nop                   #  29    0x40050f  1      OPC=1343  
  nop                   #  30    0x400510  1      OPC=1343  
  nop                   #  31    0x400511  1      OPC=1343  
  nop                   #  32    0x400512  1      OPC=1343  
  nop                   #  33    0x400513  1      OPC=1343  
  nop                   #  34    0x400514  1      OPC=1343  
  nop                   #  35    0x400515  1      OPC=1343  
  nop                   #  36    0x400516  1      OPC=1343  
  nop                   #  37    0x400517  1      OPC=1343  
  nop                   #  38    0x400518  1      OPC=1343  
  nop                   #  39    0x400519  1      OPC=1343  
  nop                   #  40    0x40051a  1      OPC=1343  
  nop                   #  41    0x40051b  1      OPC=1343  
                                                            
.size deregister_tm_clones, .-deregister_tm_clones

