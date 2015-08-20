  .text
  .globl _ZNSsC1Ev
  .type _ZNSsC1Ev, @function

#! file-offset 0xea6c0
#! rip-offset  0xaa6c0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSsC1Ev:                        #        0xaa6c0  0      OPC=<label>         
  popq %r11                        #  1     0xaa6c0  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xaa6c2  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xaa6c4  2      OPC=movl_r32_r32    
  movl $0x1007358c, (%r15,%rdi,1)  #  4     0xaa6c6  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d          #  5     0xaa6ce  7      OPC=andl_r32_imm32  
  nop                              #  6     0xaa6d5  1      OPC=nop             
  nop                              #  7     0xaa6d6  1      OPC=nop             
  nop                              #  8     0xaa6d7  1      OPC=nop             
  nop                              #  9     0xaa6d8  1      OPC=nop             
  addq %r15, %r11                  #  10    0xaa6d9  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xaa6dc  3      OPC=jmpq_r64        
  nop                              #  12    0xaa6df  1      OPC=nop             
  nop                              #  13    0xaa6e0  1      OPC=nop             
  nop                              #  14    0xaa6e1  1      OPC=nop             
  nop                              #  15    0xaa6e2  1      OPC=nop             
  nop                              #  16    0xaa6e3  1      OPC=nop             
  nop                              #  17    0xaa6e4  1      OPC=nop             
  nop                              #  18    0xaa6e5  1      OPC=nop             
  nop                              #  19    0xaa6e6  1      OPC=nop             
                                                                                
.size _ZNSsC1Ev, .-_ZNSsC1Ev

