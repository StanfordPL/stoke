  .text
  .globl _ZNKSs4_Rep12_M_is_leakedEv
  .type _ZNKSs4_Rep12_M_is_leakedEv, @function

#! file-offset 0xeb300
#! rip-offset  0xab300
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSs4_Rep12_M_is_leakedEv:  #        0xab300  0      OPC=<label>         
  movl %edi, %edi              #  1     0xab300  2      OPC=movl_r32_r32    
  popq %r11                    #  2     0xab302  2      OPC=popq_r64_1      
  movl %edi, %edi              #  3     0xab304  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax  #  4     0xab306  5      OPC=movl_r32_m32    
  shrl $0x1f, %eax             #  5     0xab30b  3      OPC=shrl_r32_imm8   
  andl $0xffffffe0, %r11d      #  6     0xab30e  7      OPC=andl_r32_imm32  
  nop                          #  7     0xab315  1      OPC=nop             
  nop                          #  8     0xab316  1      OPC=nop             
  nop                          #  9     0xab317  1      OPC=nop             
  nop                          #  10    0xab318  1      OPC=nop             
  addq %r15, %r11              #  11    0xab319  3      OPC=addq_r64_r64    
  jmpq %r11                    #  12    0xab31c  3      OPC=jmpq_r64        
  nop                          #  13    0xab31f  1      OPC=nop             
  nop                          #  14    0xab320  1      OPC=nop             
  nop                          #  15    0xab321  1      OPC=nop             
  nop                          #  16    0xab322  1      OPC=nop             
  nop                          #  17    0xab323  1      OPC=nop             
  nop                          #  18    0xab324  1      OPC=nop             
  nop                          #  19    0xab325  1      OPC=nop             
  nop                          #  20    0xab326  1      OPC=nop             
                                                                            
.size _ZNKSs4_Rep12_M_is_leakedEv, .-_ZNKSs4_Rep12_M_is_leakedEv

