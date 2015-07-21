  .text
  .globl CollectSatisfiedInputs
  .type CollectSatisfiedInputs, @function

#! file-offset 0x661e0
#! rip-offset  0x261e0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.CollectSatisfiedInputs:       #        0x261e0  0      OPC=0     
  movl %edi, %edi              #  1     0x261e0  2      OPC=1157  
  movl %edi, %edi              #  2     0x261e2  2      OPC=1157  
  movl 0x4(%r15,%rdi,1), %edi  #  3     0x261e4  5      OPC=1156  
  movl $0x27420, %esi          #  4     0x261e9  5      OPC=1154  
  jmpq .List_Do                #  5     0x261ee  5      OPC=930   
  nop                          #  6     0x261f3  1      OPC=1343  
  nop                          #  7     0x261f4  1      OPC=1343  
  nop                          #  8     0x261f5  1      OPC=1343  
  nop                          #  9     0x261f6  1      OPC=1343  
  nop                          #  10    0x261f7  1      OPC=1343  
  nop                          #  11    0x261f8  1      OPC=1343  
  nop                          #  12    0x261f9  1      OPC=1343  
  nop                          #  13    0x261fa  1      OPC=1343  
  nop                          #  14    0x261fb  1      OPC=1343  
  nop                          #  15    0x261fc  1      OPC=1343  
  nop                          #  16    0x261fd  1      OPC=1343  
  nop                          #  17    0x261fe  1      OPC=1343  
  nop                          #  18    0x261ff  1      OPC=1343  
                                                                  
.size CollectSatisfiedInputs, .-CollectSatisfiedInputs

