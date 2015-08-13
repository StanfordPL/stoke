  .text
  .globl _ZNSsC1Ev
  .type _ZNSsC1Ev, @function

#! file-offset 0xea3c0
#! rip-offset  0xaa3c0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSsC1Ev:                        #        0xaa3c0  0      OPC=<label>         
  popq %r11                        #  1     0xaa3c0  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xaa3c2  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xaa3c4  2      OPC=movl_r32_r32    
  movl $0x1007358c, (%r15,%rdi,1)  #  4     0xaa3c6  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d          #  5     0xaa3ce  7      OPC=andl_r32_imm32  
  nop                              #  6     0xaa3d5  1      OPC=nop             
  nop                              #  7     0xaa3d6  1      OPC=nop             
  nop                              #  8     0xaa3d7  1      OPC=nop             
  nop                              #  9     0xaa3d8  1      OPC=nop             
  addq %r15, %r11                  #  10    0xaa3d9  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xaa3dc  3      OPC=jmpq_r64        
  nop                              #  12    0xaa3df  1      OPC=nop             
  nop                              #  13    0xaa3e0  1      OPC=nop             
  nop                              #  14    0xaa3e1  1      OPC=nop             
  nop                              #  15    0xaa3e2  1      OPC=nop             
  nop                              #  16    0xaa3e3  1      OPC=nop             
  nop                              #  17    0xaa3e4  1      OPC=nop             
  nop                              #  18    0xaa3e5  1      OPC=nop             
  nop                              #  19    0xaa3e6  1      OPC=nop             
                                                                                
.size _ZNSsC1Ev, .-_ZNSsC1Ev

