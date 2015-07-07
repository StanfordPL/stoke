  .text
  .globl AddC
  .type AddC, @function

#! file-offset 0x68a9
#! rip-offset  0x4068a9
#! capacity    91 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.AddC:                      #        0x4068a9  0      OPC=0     
  pushq %r13                #  1     0x4068a9  2      OPC=1861  
  pushq %r12                #  2     0x4068ab  2      OPC=1861  
  pushq %rbp                #  3     0x4068ad  1      OPC=1861  
  pushq %rbx                #  4     0x4068ae  1      OPC=1861  
  subq $0x8, %rsp           #  5     0x4068af  4      OPC=2389  
  movq %rdi, %r12           #  6     0x4068b3  3      OPC=1162  
  movq %rsi, %rbp           #  7     0x4068b6  3      OPC=1162  
  movq %rdx, %r13           #  8     0x4068b9  3      OPC=1162  
  movl %ecx, %esi           #  9     0x4068bc  2      OPC=1157  
  movl $0x3, %edi           #  10    0x4068be  5      OPC=1154  
  callq .Constraint_Create  #  11    0x4068c3  5      OPC=260   
  movq %rax, %rbx           #  12    0x4068c8  3      OPC=1162  
  movq $0x40579c, (%rax)    #  13    0x4068cb  7      OPC=1137  
  movq %r12, 0x20(%rax)     #  14    0x4068d2  4      OPC=1138  
  movq %rbp, 0x28(%rax)     #  15    0x4068d6  4      OPC=1138  
  movq %r13, 0x30(%rax)     #  16    0x4068da  4      OPC=1138  
  movb $0x3, 0x11(%rax)     #  17    0x4068de  4      OPC=1140  
  movb $0x2, 0x13(%rax)     #  18    0x4068e2  4      OPC=1140  
  movb $0x1, 0x14(%rax)     #  19    0x4068e6  4      OPC=1140  
  movb $0x0, 0x15(%rax)     #  20    0x4068ea  4      OPC=1140  
  movq %rax, %rdi           #  21    0x4068ee  3      OPC=1162  
  callq .AddConstraint      #  22    0x4068f1  5      OPC=260   
  movq %rbx, %rax           #  23    0x4068f6  3      OPC=1162  
  addq $0x8, %rsp           #  24    0x4068f9  4      OPC=70    
  popq %rbx                 #  25    0x4068fd  1      OPC=1694  
  popq %rbp                 #  26    0x4068fe  1      OPC=1694  
  popq %r12                 #  27    0x4068ff  2      OPC=1694  
  popq %r13                 #  28    0x406901  2      OPC=1694  
  retq                      #  29    0x406903  1      OPC=1978  
                                                                
.size AddC, .-AddC

