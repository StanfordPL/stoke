  .text
  .globl _ZNSt16invalid_argumentC2ERKSs
  .type _ZNSt16invalid_argumentC2ERKSs, @function

#! file-offset 0x1296c0
#! rip-offset  0xe96c0
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNSt16invalid_argumentC2ERKSs:    #        0xe96c0  0      OPC=<label>         
  pushq %rbx                        #  1     0xe96c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                   #  2     0xe96c1  2      OPC=movl_r32_r32    
  movl %esi, %esi                   #  3     0xe96c3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                   #  4     0xe96c5  2      OPC=movl_r32_r32    
  nop                               #  5     0xe96c7  1      OPC=nop             
  nop                               #  6     0xe96c8  1      OPC=nop             
  nop                               #  7     0xe96c9  1      OPC=nop             
  nop                               #  8     0xe96ca  1      OPC=nop             
  nop                               #  9     0xe96cb  1      OPC=nop             
  nop                               #  10    0xe96cc  1      OPC=nop             
  nop                               #  11    0xe96cd  1      OPC=nop             
  nop                               #  12    0xe96ce  1      OPC=nop             
  nop                               #  13    0xe96cf  1      OPC=nop             
  nop                               #  14    0xe96d0  1      OPC=nop             
  nop                               #  15    0xe96d1  1      OPC=nop             
  nop                               #  16    0xe96d2  1      OPC=nop             
  nop                               #  17    0xe96d3  1      OPC=nop             
  nop                               #  18    0xe96d4  1      OPC=nop             
  nop                               #  19    0xe96d5  1      OPC=nop             
  nop                               #  20    0xe96d6  1      OPC=nop             
  nop                               #  21    0xe96d7  1      OPC=nop             
  nop                               #  22    0xe96d8  1      OPC=nop             
  nop                               #  23    0xe96d9  1      OPC=nop             
  nop                               #  24    0xe96da  1      OPC=nop             
  callq ._ZNSt11logic_errorC2ERKSs  #  25    0xe96db  5      OPC=callq_label     
  movl %ebx, %ebx                   #  26    0xe96e0  2      OPC=movl_r32_r32    
  movl $0x1003d808, (%r15,%rbx,1)   #  27    0xe96e2  8      OPC=movl_m32_imm32  
  popq %rbx                         #  28    0xe96ea  1      OPC=popq_r64_1      
  popq %r11                         #  29    0xe96eb  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  30    0xe96ed  7      OPC=andl_r32_imm32  
  nop                               #  31    0xe96f4  1      OPC=nop             
  nop                               #  32    0xe96f5  1      OPC=nop             
  nop                               #  33    0xe96f6  1      OPC=nop             
  nop                               #  34    0xe96f7  1      OPC=nop             
  addq %r15, %r11                   #  35    0xe96f8  3      OPC=addq_r64_r64    
  jmpq %r11                         #  36    0xe96fb  3      OPC=jmpq_r64        
  nop                               #  37    0xe96fe  1      OPC=nop             
  nop                               #  38    0xe96ff  1      OPC=nop             
  nop                               #  39    0xe9700  1      OPC=nop             
  nop                               #  40    0xe9701  1      OPC=nop             
  nop                               #  41    0xe9702  1      OPC=nop             
  nop                               #  42    0xe9703  1      OPC=nop             
  nop                               #  43    0xe9704  1      OPC=nop             
  nop                               #  44    0xe9705  1      OPC=nop             
  nop                               #  45    0xe9706  1      OPC=nop             
                                                                                 
.size _ZNSt16invalid_argumentC2ERKSs, .-_ZNSt16invalid_argumentC2ERKSs

