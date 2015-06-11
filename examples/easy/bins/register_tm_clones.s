  .text
  .globl register_tm_clones
  .type register_tm_clones, @function

#! file-offset 0x510
#! rip-offset  0x400510
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode    
.register_tm_clones:    #        0x400510  0      OPC=0     
  movl $0x601040, %esi  #  1     0x400510  5      OPC=1154  
  pushq %rbp            #  2     0x400515  1      OPC=1861  
  subq $0x601040, %rsi  #  3     0x400516  7      OPC=2388  
  sarq $0x3, %rsi       #  4     0x40051d  4      OPC=2099  
  movq %rsp, %rbp       #  5     0x400521  3      OPC=1162  
  movq %rsi, %rax       #  6     0x400524  3      OPC=1162  
  shrq $0x3f, %rax      #  7     0x400527  4      OPC=2315  
  addq %rax, %rsi       #  8     0x40052b  3      OPC=72    
  sarq $0x1, %rsi       #  9     0x40052e  3      OPC=2100  
  je .L_400548          #  10    0x400531  6      OPC=893   
  nop                   #  11    0x400537  1      OPC=1343  
  nop                   #  12    0x400538  1      OPC=1343  
  movl $0x0, %eax       #  13    0x400539  5      OPC=1154  
  testq %rax, %rax      #  14    0x40053e  3      OPC=2438  
  je .L_400548          #  15    0x400541  6      OPC=893   
  nop                   #  16    0x400547  1      OPC=1343  
  nop                   #  17    0x400548  1      OPC=1343  
  popq %rbp             #  18    0x400549  1      OPC=1694  
  movl $0x601040, %edi  #  19    0x40054a  5      OPC=1154  
  jmpq %rax             #  20    0x40054f  2      OPC=928   
  nop                   #  21    0x400551  1      OPC=1343  
  nop                   #  22    0x400552  1      OPC=1343  
  nop                   #  23    0x400553  1      OPC=1343  
.L_400548:              #        0x400554  0      OPC=0     
  popq %rbp             #  24    0x400554  1      OPC=1694  
  retq                  #  25    0x400555  1      OPC=1978  
  nop                   #  26    0x400556  1      OPC=1343  
  nop                   #  27    0x400557  1      OPC=1343  
  nop                   #  28    0x400558  1      OPC=1343  
  nop                   #  29    0x400559  1      OPC=1343  
  nop                   #  30    0x40055a  1      OPC=1343  
  nop                   #  31    0x40055b  1      OPC=1343  
                                                            
.size register_tm_clones, .-register_tm_clones

