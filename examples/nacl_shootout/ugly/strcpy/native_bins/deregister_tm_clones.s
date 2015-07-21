  .text
  .globl deregister_tm_clones
  .type deregister_tm_clones, @function

#! file-offset 0x1890
#! rip-offset  0x401890
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode    
.deregister_tm_clones:  #        0x401890  0      OPC=0     
  movl $0x6253a7, %eax  #  1     0x401890  5      OPC=1154  
  pushq %rbp            #  2     0x401895  1      OPC=1861  
  subq $0x6253a0, %rax  #  3     0x401896  6      OPC=2399  
  cmpq $0xe, %rax       #  4     0x40189c  4      OPC=475   
  movq %rsp, %rbp       #  5     0x4018a0  3      OPC=1162  
  jbe .L_4018c0         #  6     0x4018a3  6      OPC=881   
  nop                   #  7     0x4018a9  1      OPC=1343  
  nop                   #  8     0x4018aa  1      OPC=1343  
  movl $0x0, %eax       #  9     0x4018ab  5      OPC=1154  
  testq %rax, %rax      #  10    0x4018b0  3      OPC=2438  
  je .L_4018c0          #  11    0x4018b3  6      OPC=893   
  nop                   #  12    0x4018b9  1      OPC=1343  
  nop                   #  13    0x4018ba  1      OPC=1343  
  popq %rbp             #  14    0x4018bb  1      OPC=1694  
  movl $0x6253a0, %edi  #  15    0x4018bc  5      OPC=1154  
  jmpq %rax             #  16    0x4018c1  2      OPC=928   
  nop                   #  17    0x4018c3  1      OPC=1343  
  nop                   #  18    0x4018c4  1      OPC=1343  
  nop                   #  19    0x4018c5  1      OPC=1343  
  nop                   #  20    0x4018c6  1      OPC=1343  
  nop                   #  21    0x4018c7  1      OPC=1343  
  nop                   #  22    0x4018c8  1      OPC=1343  
  nop                   #  23    0x4018c9  1      OPC=1343  
  nop                   #  24    0x4018ca  1      OPC=1343  
  nop                   #  25    0x4018cb  1      OPC=1343  
.L_4018c0:              #        0x4018cc  0      OPC=0     
  popq %rbp             #  26    0x4018cc  1      OPC=1694  
  retq                  #  27    0x4018cd  1      OPC=1978  
  nop                   #  28    0x4018ce  1      OPC=1343  
  nop                   #  29    0x4018cf  1      OPC=1343  
  nop                   #  30    0x4018d0  1      OPC=1343  
  nop                   #  31    0x4018d1  1      OPC=1343  
  nop                   #  32    0x4018d2  1      OPC=1343  
  nop                   #  33    0x4018d3  1      OPC=1343  
  nop                   #  34    0x4018d4  1      OPC=1343  
  nop                   #  35    0x4018d5  1      OPC=1343  
  nop                   #  36    0x4018d6  1      OPC=1343  
  nop                   #  37    0x4018d7  1      OPC=1343  
  nop                   #  38    0x4018d8  1      OPC=1343  
  nop                   #  39    0x4018d9  1      OPC=1343  
  nop                   #  40    0x4018da  1      OPC=1343  
  nop                   #  41    0x4018db  1      OPC=1343  
                                                            
.size deregister_tm_clones, .-deregister_tm_clones

