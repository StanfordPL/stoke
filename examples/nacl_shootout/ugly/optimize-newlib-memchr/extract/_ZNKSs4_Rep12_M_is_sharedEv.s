  .text
  .globl _ZNKSs4_Rep12_M_is_sharedEv
  .type _ZNKSs4_Rep12_M_is_sharedEv, @function

#! file-offset 0xeb320
#! rip-offset  0xab320
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSs4_Rep12_M_is_sharedEv:  #        0xab320  0      OPC=<label>         
  movl %edi, %edi              #  1     0xab320  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0xab322  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %r9d  #  3     0xab324  5      OPC=movl_r32_m32    
  popq %r11                    #  4     0xab329  2      OPC=popq_r64_1      
  testl %r9d, %r9d             #  5     0xab32b  3      OPC=testl_r32_r32   
  setg %al                     #  6     0xab32e  3      OPC=setg_r8         
  andl $0xffffffe0, %r11d      #  7     0xab331  7      OPC=andl_r32_imm32  
  nop                          #  8     0xab338  1      OPC=nop             
  nop                          #  9     0xab339  1      OPC=nop             
  nop                          #  10    0xab33a  1      OPC=nop             
  nop                          #  11    0xab33b  1      OPC=nop             
  addq %r15, %r11              #  12    0xab33c  3      OPC=addq_r64_r64    
  jmpq %r11                    #  13    0xab33f  3      OPC=jmpq_r64        
  nop                          #  14    0xab342  1      OPC=nop             
  nop                          #  15    0xab343  1      OPC=nop             
  nop                          #  16    0xab344  1      OPC=nop             
  nop                          #  17    0xab345  1      OPC=nop             
  nop                          #  18    0xab346  1      OPC=nop             
                                                                            
.size _ZNKSs4_Rep12_M_is_sharedEv, .-_ZNKSs4_Rep12_M_is_sharedEv

