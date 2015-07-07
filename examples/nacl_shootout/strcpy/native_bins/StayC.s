  .text
  .globl StayC
  .type StayC, @function

#! file-offset 0x67f6
#! rip-offset  0x4067f6
#! capacity    52 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.StayC:                     #        0x4067f6  0      OPC=0     
  pushq %rbp                #  1     0x4067f6  1      OPC=1861  
  pushq %rbx                #  2     0x4067f7  1      OPC=1861  
  subq $0x8, %rsp           #  3     0x4067f8  4      OPC=2389  
  movq %rdi, %rbp           #  4     0x4067fc  3      OPC=1162  
  movl $0x1, %edi           #  5     0x4067ff  5      OPC=1154  
  callq .Constraint_Create  #  6     0x406804  5      OPC=260   
  movq %rax, %rbx           #  7     0x406809  3      OPC=1162  
  movq %rbp, 0x20(%rax)     #  8     0x40680c  4      OPC=1138  
  movb $0x1, 0x11(%rax)     #  9     0x406810  4      OPC=1140  
  movb $0x0, 0x13(%rax)     #  10    0x406814  4      OPC=1140  
  movq %rax, %rdi           #  11    0x406818  3      OPC=1162  
  callq .AddConstraint      #  12    0x40681b  5      OPC=260   
  movq %rbx, %rax           #  13    0x406820  3      OPC=1162  
  addq $0x8, %rsp           #  14    0x406823  4      OPC=70    
  popq %rbx                 #  15    0x406827  1      OPC=1694  
  popq %rbp                 #  16    0x406828  1      OPC=1694  
  retq                      #  17    0x406829  1      OPC=1978  
                                                                
.size StayC, .-StayC

