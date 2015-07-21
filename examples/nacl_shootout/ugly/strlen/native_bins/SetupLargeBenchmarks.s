  .text
  .globl SetupLargeBenchmarks
  .type SetupLargeBenchmarks, @function

#! file-offset 0x7145
#! rip-offset  0x407145
#! capacity    146 bytes

# Text                             #  Line  RIP       Bytes  Opcode    
.SetupLargeBenchmarks:             #        0x407145  0      OPC=0     
  subq $0x8, %rsp                  #  1     0x407145  4      OPC=2389  
  movl $0x7, %edi                  #  2     0x407149  5      OPC=1154  
  callq .malloc_plt                #  3     0x40714e  5      OPC=260   
  testq %rax, %rax                 #  4     0x407153  3      OPC=2438  
  je .L_407168                     #  5     0x407156  6      OPC=893   
  nop                              #  6     0x40715c  1      OPC=1343  
  nop                              #  7     0x40715d  1      OPC=1343  
  movl $0x6c727473, (%rax)         #  8     0x40715e  6      OPC=1135  
  movw $0x6e65, 0x4(%rax)          #  9     0x407164  6      OPC=1132  
  movb $0x0, 0x6(%rax)             #  10    0x40716a  4      OPC=1140  
.L_407168:                         #        0x40716e  0      OPC=0     
  movl 0x21e6b6(%rip), %ecx        #  11    0x40716e  6      OPC=1156  
  cmpl $0x10, %ecx                 #  12    0x407174  3      OPC=470   
  je .L_4071d2                     #  13    0x407177  6      OPC=893   
  nop                              #  14    0x40717d  1      OPC=1343  
  nop                              #  15    0x40717e  1      OPC=1343  
  movslq %ecx, %rdx                #  16    0x40717f  3      OPC=1289  
  leaq (%rdx,%rdx,4), %rdx         #  17    0x407182  4      OPC=1069  
  shlq $0x3, %rdx                  #  18    0x407186  4      OPC=2272  
  movq %rax, 0x6255a0(%rdx)        #  19    0x40718a  7      OPC=1138  
  movq $0x406fc3, 0x6255a8(%rdx)   #  20    0x407191  11     OPC=1137  
  movq $0x0, 0x6255b0(%rdx)        #  21    0x40719c  11     OPC=1137  
  movq $0x0, 0x6255b8(%rdx)        #  22    0x4071a7  11     OPC=1137  
  movl $0x1c9c380, 0x6255c0(%rdx)  #  23    0x4071b2  10     OPC=1135  
  movl $0x989680, 0x6255c4(%rdx)   #  24    0x4071bc  10     OPC=1135  
  addl $0x1, %ecx                  #  25    0x4071c6  3      OPC=65    
  movl %ecx, 0x21e661(%rip)        #  26    0x4071c9  6      OPC=1136  
  movl $0x1, 0x21e2b3(%rip)        #  27    0x4071cf  10     OPC=1135  
  addq $0x8, %rsp                  #  28    0x4071d9  4      OPC=70    
  retq                             #  29    0x4071dd  1      OPC=1978  
.L_4071d2:                         #        0x4071de  0      OPC=0     
  callq .RegisterBenchmark_part_0  #  30    0x4071de  5      OPC=260   
                                                                       
.size SetupLargeBenchmarks, .-SetupLargeBenchmarks

