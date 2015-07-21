  .text
  .globl RegisterBenchmark
  .type RegisterBenchmark, @function

#! file-offset 0x7010
#! rip-offset  0x407010
#! capacity    82 bytes

# Text                             #  Line  RIP       Bytes  Opcode    
.RegisterBenchmark:                #        0x407010  0      OPC=0     
  movl 0x21e80d(%rip), %r10d       #  1     0x407010  7      OPC=1156  
  cmpl $0x10, %r10d                #  2     0x407017  4      OPC=470   
  je .L_40705c                     #  3     0x40701b  6      OPC=893   
  nop                              #  4     0x407021  1      OPC=1343  
  nop                              #  5     0x407022  1      OPC=1343  
  movslq %r10d, %rax               #  6     0x407023  3      OPC=1289  
  leaq (%rax,%rax,4), %rax         #  7     0x407026  4      OPC=1069  
  shlq $0x3, %rax                  #  8     0x40702a  4      OPC=2272  
  movq %rdi, 0x6255a0(%rax)        #  9     0x40702e  7      OPC=1138  
  movq %rsi, 0x6255a8(%rax)        #  10    0x407035  7      OPC=1138  
  movq %r8, 0x6255b0(%rax)         #  11    0x40703c  7      OPC=1138  
  movq %r9, 0x6255b8(%rax)         #  12    0x407043  7      OPC=1138  
  movl %ecx, 0x6255c0(%rax)        #  13    0x40704a  6      OPC=1136  
  movl %edx, 0x6255c4(%rax)        #  14    0x407050  6      OPC=1136  
  addl $0x1, %r10d                 #  15    0x407056  4      OPC=65    
  movl %r10d, 0x21e7c9(%rip)       #  16    0x40705a  7      OPC=1136  
  retq                             #  17    0x407061  1      OPC=1978  
.L_40705c:                         #        0x407062  0      OPC=0     
  pushq %rax                       #  18    0x407062  1      OPC=1861  
  callq .RegisterBenchmark_part_0  #  19    0x407063  5      OPC=260   
                                                                       
.size RegisterBenchmark, .-RegisterBenchmark

