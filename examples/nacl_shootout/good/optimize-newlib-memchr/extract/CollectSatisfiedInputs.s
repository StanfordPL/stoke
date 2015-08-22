  .text
  .globl CollectSatisfiedInputs
  .type CollectSatisfiedInputs, @function

#! file-offset 0x66760
#! rip-offset  0x26760
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.CollectSatisfiedInputs:       #        0x26760  0      OPC=<label>         
  movl %edi, %edi              #  1     0x26760  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x26762  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %edi  #  3     0x26764  5      OPC=movl_r32_m32    
  movl $0x279a0, %esi          #  4     0x26769  5      OPC=movl_r32_imm32  
  jmpq .List_Do                #  5     0x2676e  5      OPC=jmpq_label_1    
  nop                          #  6     0x26773  1      OPC=nop             
  nop                          #  7     0x26774  1      OPC=nop             
  nop                          #  8     0x26775  1      OPC=nop             
  nop                          #  9     0x26776  1      OPC=nop             
  nop                          #  10    0x26777  1      OPC=nop             
  nop                          #  11    0x26778  1      OPC=nop             
  nop                          #  12    0x26779  1      OPC=nop             
  nop                          #  13    0x2677a  1      OPC=nop             
  nop                          #  14    0x2677b  1      OPC=nop             
  nop                          #  15    0x2677c  1      OPC=nop             
  nop                          #  16    0x2677d  1      OPC=nop             
  nop                          #  17    0x2677e  1      OPC=nop             
  nop                          #  18    0x2677f  1      OPC=nop             
                                                                            
.size CollectSatisfiedInputs, .-CollectSatisfiedInputs

