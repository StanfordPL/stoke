  .text
  .globl EditC
  .type EditC, @function

#! file-offset 0x682a
#! rip-offset  0x40682a
#! capacity    59 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.EditC:                     #        0x40682a  0      OPC=0     
  pushq %rbp                #  1     0x40682a  1      OPC=1861  
  pushq %rbx                #  2     0x40682b  1      OPC=1861  
  subq $0x8, %rsp           #  3     0x40682c  4      OPC=2389  
  movq %rdi, %rbp           #  4     0x406830  3      OPC=1162  
  movl $0x1, %edi           #  5     0x406833  5      OPC=1154  
  callq .Constraint_Create  #  6     0x406838  5      OPC=260   
  movq %rax, %rbx           #  7     0x40683d  3      OPC=1162  
  movl $0x1, 0x8(%rax)      #  8     0x406840  7      OPC=1135  
  movq %rbp, 0x20(%rax)     #  9     0x406847  4      OPC=1138  
  movb $0x1, 0x11(%rax)     #  10    0x40684b  4      OPC=1140  
  movb $0x0, 0x13(%rax)     #  11    0x40684f  4      OPC=1140  
  movq %rax, %rdi           #  12    0x406853  3      OPC=1162  
  callq .AddConstraint      #  13    0x406856  5      OPC=260   
  movq %rbx, %rax           #  14    0x40685b  3      OPC=1162  
  addq $0x8, %rsp           #  15    0x40685e  4      OPC=70    
  popq %rbx                 #  16    0x406862  1      OPC=1694  
  popq %rbp                 #  17    0x406863  1      OPC=1694  
  retq                      #  18    0x406864  1      OPC=1978  
                                                                
.size EditC, .-EditC

