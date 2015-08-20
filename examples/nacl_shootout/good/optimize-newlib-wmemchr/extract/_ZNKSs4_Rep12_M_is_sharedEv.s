  .text
  .globl _ZNKSs4_Rep12_M_is_sharedEv
  .type _ZNKSs4_Rep12_M_is_sharedEv, @function

#! file-offset 0xeac00
#! rip-offset  0xaac00
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSs4_Rep12_M_is_sharedEv:  #        0xaac00  0      OPC=<label>         
  movl %edi, %edi              #  1     0xaac00  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0xaac02  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %r9d  #  3     0xaac04  5      OPC=movl_r32_m32    
  popq %r11                    #  4     0xaac09  2      OPC=popq_r64_1      
  testl %r9d, %r9d             #  5     0xaac0b  3      OPC=testl_r32_r32   
  setg %al                     #  6     0xaac0e  3      OPC=setg_r8         
  andl $0xffffffe0, %r11d      #  7     0xaac11  7      OPC=andl_r32_imm32  
  nop                          #  8     0xaac18  1      OPC=nop             
  nop                          #  9     0xaac19  1      OPC=nop             
  nop                          #  10    0xaac1a  1      OPC=nop             
  nop                          #  11    0xaac1b  1      OPC=nop             
  addq %r15, %r11              #  12    0xaac1c  3      OPC=addq_r64_r64    
  jmpq %r11                    #  13    0xaac1f  3      OPC=jmpq_r64        
  nop                          #  14    0xaac22  1      OPC=nop             
  nop                          #  15    0xaac23  1      OPC=nop             
  nop                          #  16    0xaac24  1      OPC=nop             
  nop                          #  17    0xaac25  1      OPC=nop             
  nop                          #  18    0xaac26  1      OPC=nop             
                                                                            
.size _ZNKSs4_Rep12_M_is_sharedEv, .-_ZNKSs4_Rep12_M_is_sharedEv

