  .text
  .globl RegisterBenchmark
  .type RegisterBenchmark, @function

#! file-offset 0x6fb0
#! rip-offset  0x406fb0
#! capacity    82 bytes

# Text                             #  Line  RIP       Bytes  Opcode    
.RegisterBenchmark:                #        0x406fb0  0      OPC=0     
  movl 0x21e86d(%rip), %r10d       #  1     0x406fb0  7      OPC=1156  
  cmpl $0x10, %r10d                #  2     0x406fb7  4      OPC=470   
  je .L_406ffc                     #  3     0x406fbb  6      OPC=893   
  nop                              #  4     0x406fc1  1      OPC=1343  
  nop                              #  5     0x406fc2  1      OPC=1343  
  movslq %r10d, %rax               #  6     0x406fc3  3      OPC=1289  
  leaq (%rax,%rax,4), %rax         #  7     0x406fc6  4      OPC=1069  
  shlq $0x3, %rax                  #  8     0x406fca  4      OPC=2272  
  movq %rdi, 0x6255a0(%rax)        #  9     0x406fce  7      OPC=1138  
  movq %rsi, 0x6255a8(%rax)        #  10    0x406fd5  7      OPC=1138  
  movq %r8, 0x6255b0(%rax)         #  11    0x406fdc  7      OPC=1138  
  movq %r9, 0x6255b8(%rax)         #  12    0x406fe3  7      OPC=1138  
  movl %ecx, 0x6255c0(%rax)        #  13    0x406fea  6      OPC=1136  
  movl %edx, 0x6255c4(%rax)        #  14    0x406ff0  6      OPC=1136  
  addl $0x1, %r10d                 #  15    0x406ff6  4      OPC=65    
  movl %r10d, 0x21e829(%rip)       #  16    0x406ffa  7      OPC=1136  
  retq                             #  17    0x407001  1      OPC=1978  
.L_406ffc:                         #        0x407002  0      OPC=0     
  pushq %rax                       #  18    0x407002  1      OPC=1861  
  callq .RegisterBenchmark_part_0  #  19    0x407003  5      OPC=260   
                                                                       
.size RegisterBenchmark, .-RegisterBenchmark

