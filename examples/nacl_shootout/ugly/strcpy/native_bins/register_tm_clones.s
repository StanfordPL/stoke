  .text
  .globl register_tm_clones
  .type register_tm_clones, @function

#! file-offset 0x18d0
#! rip-offset  0x4018d0
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode    
.register_tm_clones:    #        0x4018d0  0      OPC=0     
  movl $0x6253a0, %esi  #  1     0x4018d0  5      OPC=1154  
  pushq %rbp            #  2     0x4018d5  1      OPC=1861  
  subq $0x6253a0, %rsi  #  3     0x4018d6  7      OPC=2388  
  sarq $0x3, %rsi       #  4     0x4018dd  4      OPC=2099  
  movq %rsp, %rbp       #  5     0x4018e1  3      OPC=1162  
  movq %rsi, %rax       #  6     0x4018e4  3      OPC=1162  
  shrq $0x3f, %rax      #  7     0x4018e7  4      OPC=2315  
  addq %rax, %rsi       #  8     0x4018eb  3      OPC=72    
  sarq $0x1, %rsi       #  9     0x4018ee  3      OPC=2100  
  je .L_401908          #  10    0x4018f1  6      OPC=893   
  nop                   #  11    0x4018f7  1      OPC=1343  
  nop                   #  12    0x4018f8  1      OPC=1343  
  movl $0x0, %eax       #  13    0x4018f9  5      OPC=1154  
  testq %rax, %rax      #  14    0x4018fe  3      OPC=2438  
  je .L_401908          #  15    0x401901  6      OPC=893   
  nop                   #  16    0x401907  1      OPC=1343  
  nop                   #  17    0x401908  1      OPC=1343  
  popq %rbp             #  18    0x401909  1      OPC=1694  
  movl $0x6253a0, %edi  #  19    0x40190a  5      OPC=1154  
  jmpq %rax             #  20    0x40190f  2      OPC=928   
  nop                   #  21    0x401911  1      OPC=1343  
  nop                   #  22    0x401912  1      OPC=1343  
  nop                   #  23    0x401913  1      OPC=1343  
.L_401908:              #        0x401914  0      OPC=0     
  popq %rbp             #  24    0x401914  1      OPC=1694  
  retq                  #  25    0x401915  1      OPC=1978  
  nop                   #  26    0x401916  1      OPC=1343  
  nop                   #  27    0x401917  1      OPC=1343  
  nop                   #  28    0x401918  1      OPC=1343  
  nop                   #  29    0x401919  1      OPC=1343  
  nop                   #  30    0x40191a  1      OPC=1343  
  nop                   #  31    0x40191b  1      OPC=1343  
                                                            
.size register_tm_clones, .-register_tm_clones

