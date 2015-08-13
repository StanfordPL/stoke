  .text
  .globl _ZNKSs4_Rep12_M_is_leakedEv
  .type _ZNKSs4_Rep12_M_is_leakedEv, @function

#! file-offset 0xea8e0
#! rip-offset  0xaa8e0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSs4_Rep12_M_is_leakedEv:  #        0xaa8e0  0      OPC=<label>         
  movl %edi, %edi              #  1     0xaa8e0  2      OPC=movl_r32_r32    
  popq %r11                    #  2     0xaa8e2  2      OPC=popq_r64_1      
  movl %edi, %edi              #  3     0xaa8e4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax  #  4     0xaa8e6  5      OPC=movl_r32_m32    
  shrl $0x1f, %eax             #  5     0xaa8eb  3      OPC=shrl_r32_imm8   
  andl $0xffffffe0, %r11d      #  6     0xaa8ee  7      OPC=andl_r32_imm32  
  nop                          #  7     0xaa8f5  1      OPC=nop             
  nop                          #  8     0xaa8f6  1      OPC=nop             
  nop                          #  9     0xaa8f7  1      OPC=nop             
  nop                          #  10    0xaa8f8  1      OPC=nop             
  addq %r15, %r11              #  11    0xaa8f9  3      OPC=addq_r64_r64    
  jmpq %r11                    #  12    0xaa8fc  3      OPC=jmpq_r64        
  nop                          #  13    0xaa8ff  1      OPC=nop             
  nop                          #  14    0xaa900  1      OPC=nop             
  nop                          #  15    0xaa901  1      OPC=nop             
  nop                          #  16    0xaa902  1      OPC=nop             
  nop                          #  17    0xaa903  1      OPC=nop             
  nop                          #  18    0xaa904  1      OPC=nop             
  nop                          #  19    0xaa905  1      OPC=nop             
  nop                          #  20    0xaa906  1      OPC=nop             
                                                                            
.size _ZNKSs4_Rep12_M_is_leakedEv, .-_ZNKSs4_Rep12_M_is_leakedEv

