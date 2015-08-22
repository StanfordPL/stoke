  .text
  .globl _ZNSsC2Ev
  .type _ZNSsC2Ev, @function

#! file-offset 0xeadc0
#! rip-offset  0xaadc0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSsC2Ev:                        #        0xaadc0  0      OPC=<label>         
  popq %r11                        #  1     0xaadc0  2      OPC=popq_r64_1      
  movl %edi, %edi                  #  2     0xaadc2  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  3     0xaadc4  2      OPC=movl_r32_r32    
  movl $0x1007358c, (%r15,%rdi,1)  #  4     0xaadc6  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d          #  5     0xaadce  7      OPC=andl_r32_imm32  
  nop                              #  6     0xaadd5  1      OPC=nop             
  nop                              #  7     0xaadd6  1      OPC=nop             
  nop                              #  8     0xaadd7  1      OPC=nop             
  nop                              #  9     0xaadd8  1      OPC=nop             
  addq %r15, %r11                  #  10    0xaadd9  3      OPC=addq_r64_r64    
  jmpq %r11                        #  11    0xaaddc  3      OPC=jmpq_r64        
  nop                              #  12    0xaaddf  1      OPC=nop             
  nop                              #  13    0xaade0  1      OPC=nop             
  nop                              #  14    0xaade1  1      OPC=nop             
  nop                              #  15    0xaade2  1      OPC=nop             
  nop                              #  16    0xaade3  1      OPC=nop             
  nop                              #  17    0xaade4  1      OPC=nop             
  nop                              #  18    0xaade5  1      OPC=nop             
  nop                              #  19    0xaade6  1      OPC=nop             
                                                                                
.size _ZNSsC2Ev, .-_ZNSsC2Ev

