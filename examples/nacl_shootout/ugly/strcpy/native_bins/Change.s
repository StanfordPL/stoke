  .text
  .globl Change
  .type Change, @function

#! file-offset 0x6b48
#! rip-offset  0x406b48
#! capacity    88 bytes

# Text                              #  Line  RIP       Bytes  Opcode    
.Change:                            #        0x406b48  0      OPC=0     
  pushq %r13                        #  1     0x406b48  2      OPC=1861  
  pushq %r12                        #  2     0x406b4a  2      OPC=1861  
  pushq %rbp                        #  3     0x406b4c  1      OPC=1861  
  pushq %rbx                        #  4     0x406b4d  1      OPC=1861  
  subq $0x8, %rsp                   #  5     0x406b4e  4      OPC=2389  
  movq %rdi, %rbx                   #  6     0x406b52  3      OPC=1162  
  movq %rsi, %r13                   #  7     0x406b55  3      OPC=1162  
  movl $0x3, %esi                   #  8     0x406b58  5      OPC=1154  
  callq .EditC                      #  9     0x406b5d  5      OPC=260   
  movq %rax, %r12                   #  10    0x406b62  3      OPC=1162  
  movq %rax, %rdi                   #  11    0x406b65  3      OPC=1162  
  callq .ExtractPlanFromConstraint  #  12    0x406b68  5      OPC=260   
  movq %rax, %rbp                   #  13    0x406b6d  3      OPC=1162  
  movq %r13, (%rbx)                 #  14    0x406b70  3      OPC=1138  
  movl $0xa, %ebx                   #  15    0x406b73  5      OPC=1154  
.L_406b78:                          #        0x406b78  0      OPC=0     
  movq %rbp, %rdi                   #  16    0x406b78  3      OPC=1162  
  callq .ExecutePlan                #  17    0x406b7b  5      OPC=260   
  subq $0x1, %rbx                   #  18    0x406b80  4      OPC=2389  
  jne .L_406b78                     #  19    0x406b84  6      OPC=963   
  nop                               #  20    0x406b8a  1      OPC=1343  
  nop                               #  21    0x406b8b  1      OPC=1343  
  movq %rbp, %rdi                   #  22    0x406b8c  3      OPC=1162  
  callq .List_Destroy               #  23    0x406b8f  5      OPC=260   
  movq %r12, %rdi                   #  24    0x406b94  3      OPC=1162  
  addq $0x8, %rsp                   #  25    0x406b97  4      OPC=70    
  popq %rbx                         #  26    0x406b9b  1      OPC=1694  
  popq %rbp                         #  27    0x406b9c  1      OPC=1694  
  popq %r12                         #  28    0x406b9d  2      OPC=1694  
  popq %r13                         #  29    0x406b9f  2      OPC=1694  
  jmpq .DestroyConstraint           #  30    0x406ba1  5      OPC=930   
                                                                        
.size Change, .-Change

