  .text
  .globl Constraint_Destroy
  .type Constraint_Destroy, @function

#! file-offset 0x5cb5
#! rip-offset  0x405cb5
#! capacity    29 bytes

# Text                  #  Line  RIP       Bytes  Opcode    
.Constraint_Destroy:    #        0x405cb5  0      OPC=0     
  cmpq $0x0, (%rdi)     #  1     0x405cb5  4      OPC=459   
  je .L_405cc7          #  2     0x405cb9  6      OPC=893   
  nop                   #  3     0x405cbf  1      OPC=1343  
  nop                   #  4     0x405cc0  1      OPC=1343  
  movq $0x0, (%rdi)     #  5     0x405cc1  7      OPC=1137  
  jmpq .free_plt        #  6     0x405cc8  5      OPC=930   
.L_405cc7:              #        0x405ccd  0      OPC=0     
  pushq %rax            #  7     0x405ccd  1      OPC=1861  
  movl $0x408c40, %edi  #  8     0x405cce  5      OPC=1154  
  callq .Error          #  9     0x405cd3  5      OPC=260   
                                                            
.size Constraint_Destroy, .-Constraint_Destroy

