  .text
  .globl SetupSmallBenchmarks
  .type SetupSmallBenchmarks, @function

#! file-offset 0x7053
#! rip-offset  0x407053
#! capacity    146 bytes

# Text                             #  Line  RIP       Bytes  Opcode    
.SetupSmallBenchmarks:             #        0x407053  0      OPC=0     
  subq $0x8, %rsp                  #  1     0x407053  4      OPC=2389  
  movl $0x7, %edi                  #  2     0x407057  5      OPC=1154  
  callq .malloc_plt                #  3     0x40705c  5      OPC=260   
  testq %rax, %rax                 #  4     0x407061  3      OPC=2438  
  je .L_407076                     #  5     0x407064  6      OPC=893   
  nop                              #  6     0x40706a  1      OPC=1343  
  nop                              #  7     0x40706b  1      OPC=1343  
  movl $0x63727473, (%rax)         #  8     0x40706c  6      OPC=1135  
  movw $0x7970, 0x4(%rax)          #  9     0x407072  6      OPC=1132  
  movb $0x0, 0x6(%rax)             #  10    0x407078  4      OPC=1140  
.L_407076:                         #        0x40707c  0      OPC=0     
  movl 0x21e7a8(%rip), %ecx        #  11    0x40707c  6      OPC=1156  
  cmpl $0x10, %ecx                 #  12    0x407082  3      OPC=470   
  je .L_4070e0                     #  13    0x407085  6      OPC=893   
  nop                              #  14    0x40708b  1      OPC=1343  
  nop                              #  15    0x40708c  1      OPC=1343  
  movslq %ecx, %rdx                #  16    0x40708d  3      OPC=1289  
  leaq (%rdx,%rdx,4), %rdx         #  17    0x407090  4      OPC=1069  
  shlq $0x3, %rdx                  #  18    0x407094  4      OPC=2272  
  movq %rax, 0x6255a0(%rdx)        #  19    0x407098  7      OPC=1138  
  movq $0x406f34, 0x6255a8(%rdx)   #  20    0x40709f  11     OPC=1137  
  movq $0x0, 0x6255b0(%rdx)        #  21    0x4070aa  11     OPC=1137  
  movq $0x0, 0x6255b8(%rdx)        #  22    0x4070b5  11     OPC=1137  
  movl $0x2dc6c0, 0x6255c0(%rdx)   #  23    0x4070c0  10     OPC=1135  
  movl $0xf4240, 0x6255c4(%rdx)    #  24    0x4070ca  10     OPC=1135  
  addl $0x1, %ecx                  #  25    0x4070d4  3      OPC=65    
  movl %ecx, 0x21e753(%rip)        #  26    0x4070d7  6      OPC=1136  
  movl $0x0, 0x21e3a5(%rip)        #  27    0x4070dd  10     OPC=1135  
  addq $0x8, %rsp                  #  28    0x4070e7  4      OPC=70    
  retq                             #  29    0x4070eb  1      OPC=1978  
.L_4070e0:                         #        0x4070ec  0      OPC=0     
  callq .RegisterBenchmark_part_0  #  30    0x4070ec  5      OPC=260   
                                                                       
.size SetupSmallBenchmarks, .-SetupSmallBenchmarks

