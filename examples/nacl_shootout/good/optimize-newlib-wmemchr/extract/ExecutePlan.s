  .text
  .globl ExecutePlan
  .type ExecutePlan, @function

#! file-offset 0x661e0
#! rip-offset  0x261e0
#! capacity    32 bytes

# Text                 #  Line  RIP      Bytes  Opcode              
.ExecutePlan:          #        0x261e0  0      OPC=<label>         
  movl %edi, %edi      #  1     0x261e0  2      OPC=movl_r32_r32    
  movl $0x261a0, %esi  #  2     0x261e2  5      OPC=movl_r32_imm32  
  jmpq .List_Do        #  3     0x261e7  5      OPC=jmpq_label_1    
  nop                  #  4     0x261ec  1      OPC=nop             
  nop                  #  5     0x261ed  1      OPC=nop             
  nop                  #  6     0x261ee  1      OPC=nop             
  nop                  #  7     0x261ef  1      OPC=nop             
  nop                  #  8     0x261f0  1      OPC=nop             
  nop                  #  9     0x261f1  1      OPC=nop             
  nop                  #  10    0x261f2  1      OPC=nop             
  nop                  #  11    0x261f3  1      OPC=nop             
  nop                  #  12    0x261f4  1      OPC=nop             
  nop                  #  13    0x261f5  1      OPC=nop             
  nop                  #  14    0x261f6  1      OPC=nop             
  nop                  #  15    0x261f7  1      OPC=nop             
  nop                  #  16    0x261f8  1      OPC=nop             
  nop                  #  17    0x261f9  1      OPC=nop             
  nop                  #  18    0x261fa  1      OPC=nop             
  nop                  #  19    0x261fb  1      OPC=nop             
  nop                  #  20    0x261fc  1      OPC=nop             
  nop                  #  21    0x261fd  1      OPC=nop             
  nop                  #  22    0x261fe  1      OPC=nop             
  nop                  #  23    0x261ff  1      OPC=nop             
                                                                    
.size ExecutePlan, .-ExecutePlan

