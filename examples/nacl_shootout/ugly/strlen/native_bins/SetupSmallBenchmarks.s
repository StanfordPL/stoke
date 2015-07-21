  .text
  .globl SetupSmallBenchmarks
  .type SetupSmallBenchmarks, @function

#! file-offset 0x70b3
#! rip-offset  0x4070b3
#! capacity    146 bytes

# Text                             #  Line  RIP       Bytes  Opcode    
.SetupSmallBenchmarks:             #        0x4070b3  0      OPC=0     
  subq $0x8, %rsp                  #  1     0x4070b3  4      OPC=2389  
  movl $0x7, %edi                  #  2     0x4070b7  5      OPC=1154  
  callq .malloc_plt                #  3     0x4070bc  5      OPC=260   
  testq %rax, %rax                 #  4     0x4070c1  3      OPC=2438  
  je .L_4070d6                     #  5     0x4070c4  6      OPC=893   
  nop                              #  6     0x4070ca  1      OPC=1343  
  nop                              #  7     0x4070cb  1      OPC=1343  
  movl $0x6c727473, (%rax)         #  8     0x4070cc  6      OPC=1135  
  movw $0x6e65, 0x4(%rax)          #  9     0x4070d2  6      OPC=1132  
  movb $0x0, 0x6(%rax)             #  10    0x4070d8  4      OPC=1140  
.L_4070d6:                         #        0x4070dc  0      OPC=0     
  movl 0x21e748(%rip), %ecx        #  11    0x4070dc  6      OPC=1156  
  cmpl $0x10, %ecx                 #  12    0x4070e2  3      OPC=470   
  je .L_407140                     #  13    0x4070e5  6      OPC=893   
  nop                              #  14    0x4070eb  1      OPC=1343  
  nop                              #  15    0x4070ec  1      OPC=1343  
  movslq %ecx, %rdx                #  16    0x4070ed  3      OPC=1289  
  leaq (%rdx,%rdx,4), %rdx         #  17    0x4070f0  4      OPC=1069  
  shlq $0x3, %rdx                  #  18    0x4070f4  4      OPC=2272  
  movq %rax, 0x6255a0(%rdx)        #  19    0x4070f8  7      OPC=1138  
  movq $0x406fc3, 0x6255a8(%rdx)   #  20    0x4070ff  11     OPC=1137  
  movq $0x0, 0x6255b0(%rdx)        #  21    0x40710a  11     OPC=1137  
  movq $0x0, 0x6255b8(%rdx)        #  22    0x407115  11     OPC=1137  
  movl $0x2dc6c0, 0x6255c0(%rdx)   #  23    0x407120  10     OPC=1135  
  movl $0xf4240, 0x6255c4(%rdx)    #  24    0x40712a  10     OPC=1135  
  addl $0x1, %ecx                  #  25    0x407134  3      OPC=65    
  movl %ecx, 0x21e6f3(%rip)        #  26    0x407137  6      OPC=1136  
  movl $0x0, 0x21e345(%rip)        #  27    0x40713d  10     OPC=1135  
  addq $0x8, %rsp                  #  28    0x407147  4      OPC=70    
  retq                             #  29    0x40714b  1      OPC=1978  
.L_407140:                         #        0x40714c  0      OPC=0     
  callq .RegisterBenchmark_part_0  #  30    0x40714c  5      OPC=260   
                                                                       
.size SetupSmallBenchmarks, .-SetupSmallBenchmarks

