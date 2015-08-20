  .text
  .globl _ZNKSs4_Rep12_M_is_leakedEv
  .type _ZNKSs4_Rep12_M_is_leakedEv, @function

#! file-offset 0xeabe0
#! rip-offset  0xaabe0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSs4_Rep12_M_is_leakedEv:  #        0xaabe0  0      OPC=<label>         
  movl %edi, %edi              #  1     0xaabe0  2      OPC=movl_r32_r32    
  popq %r11                    #  2     0xaabe2  2      OPC=popq_r64_1      
  movl %edi, %edi              #  3     0xaabe4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax  #  4     0xaabe6  5      OPC=movl_r32_m32    
  shrl $0x1f, %eax             #  5     0xaabeb  3      OPC=shrl_r32_imm8   
  andl $0xffffffe0, %r11d      #  6     0xaabee  7      OPC=andl_r32_imm32  
  nop                          #  7     0xaabf5  1      OPC=nop             
  nop                          #  8     0xaabf6  1      OPC=nop             
  nop                          #  9     0xaabf7  1      OPC=nop             
  nop                          #  10    0xaabf8  1      OPC=nop             
  addq %r15, %r11              #  11    0xaabf9  3      OPC=addq_r64_r64    
  jmpq %r11                    #  12    0xaabfc  3      OPC=jmpq_r64        
  nop                          #  13    0xaabff  1      OPC=nop             
  nop                          #  14    0xaac00  1      OPC=nop             
  nop                          #  15    0xaac01  1      OPC=nop             
  nop                          #  16    0xaac02  1      OPC=nop             
  nop                          #  17    0xaac03  1      OPC=nop             
  nop                          #  18    0xaac04  1      OPC=nop             
  nop                          #  19    0xaac05  1      OPC=nop             
  nop                          #  20    0xaac06  1      OPC=nop             
                                                                            
.size _ZNKSs4_Rep12_M_is_leakedEv, .-_ZNKSs4_Rep12_M_is_leakedEv

