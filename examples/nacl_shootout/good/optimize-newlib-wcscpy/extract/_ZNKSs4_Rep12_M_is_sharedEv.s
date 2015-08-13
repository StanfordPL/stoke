  .text
  .globl _ZNKSs4_Rep12_M_is_sharedEv
  .type _ZNKSs4_Rep12_M_is_sharedEv, @function

#! file-offset 0xea900
#! rip-offset  0xaa900
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSs4_Rep12_M_is_sharedEv:  #        0xaa900  0      OPC=<label>         
  movl %edi, %edi              #  1     0xaa900  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0xaa902  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %r9d  #  3     0xaa904  5      OPC=movl_r32_m32    
  popq %r11                    #  4     0xaa909  2      OPC=popq_r64_1      
  testl %r9d, %r9d             #  5     0xaa90b  3      OPC=testl_r32_r32   
  setg %al                     #  6     0xaa90e  3      OPC=setg_r8         
  andl $0xffffffe0, %r11d      #  7     0xaa911  7      OPC=andl_r32_imm32  
  nop                          #  8     0xaa918  1      OPC=nop             
  nop                          #  9     0xaa919  1      OPC=nop             
  nop                          #  10    0xaa91a  1      OPC=nop             
  nop                          #  11    0xaa91b  1      OPC=nop             
  addq %r15, %r11              #  12    0xaa91c  3      OPC=addq_r64_r64    
  jmpq %r11                    #  13    0xaa91f  3      OPC=jmpq_r64        
  nop                          #  14    0xaa922  1      OPC=nop             
  nop                          #  15    0xaa923  1      OPC=nop             
  nop                          #  16    0xaa924  1      OPC=nop             
  nop                          #  17    0xaa925  1      OPC=nop             
  nop                          #  18    0xaa926  1      OPC=nop             
                                                                            
.size _ZNKSs4_Rep12_M_is_sharedEv, .-_ZNKSs4_Rep12_M_is_sharedEv

