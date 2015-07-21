  .text
  .globl EqualsC
  .type EqualsC, @function

#! file-offset 0x6865
#! rip-offset  0x406865
#! capacity    68 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.EqualsC:                   #        0x406865  0      OPC=0     
  pushq %r12                #  1     0x406865  2      OPC=1861  
  pushq %rbp                #  2     0x406867  1      OPC=1861  
  pushq %rbx                #  3     0x406868  1      OPC=1861  
  movq %rdi, %r12           #  4     0x406869  3      OPC=1162  
  movq %rsi, %rbp           #  5     0x40686c  3      OPC=1162  
  movl %edx, %esi           #  6     0x40686f  2      OPC=1157  
  movl $0x2, %edi           #  7     0x406871  5      OPC=1154  
  callq .Constraint_Create  #  8     0x406876  5      OPC=260   
  movq %rax, %rbx           #  9     0x40687b  3      OPC=1162  
  movq $0x405771, (%rax)    #  10    0x40687e  7      OPC=1137  
  movq %r12, 0x20(%rax)     #  11    0x406885  4      OPC=1138  
  movq %rbp, 0x28(%rax)     #  12    0x406889  4      OPC=1138  
  movb $0x2, 0x11(%rax)     #  13    0x40688d  4      OPC=1140  
  movb $0x0, 0x13(%rax)     #  14    0x406891  4      OPC=1140  
  movb $0x1, 0x14(%rax)     #  15    0x406895  4      OPC=1140  
  movq %rax, %rdi           #  16    0x406899  3      OPC=1162  
  callq .AddConstraint      #  17    0x40689c  5      OPC=260   
  movq %rbx, %rax           #  18    0x4068a1  3      OPC=1162  
  popq %rbx                 #  19    0x4068a4  1      OPC=1694  
  popq %rbp                 #  20    0x4068a5  1      OPC=1694  
  popq %r12                 #  21    0x4068a6  2      OPC=1694  
  retq                      #  22    0x4068a8  1      OPC=1978  
                                                                
.size EqualsC, .-EqualsC

