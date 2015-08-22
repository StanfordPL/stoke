  .text
  .globl _ZNSs12_S_empty_repEv
  .type _ZNSs12_S_empty_repEv, @function

#! file-offset 0xeada0
#! rip-offset  0xaada0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZNSs12_S_empty_repEv:    #        0xaada0  0      OPC=<label>         
  popq %r11                #  1     0xaada0  2      OPC=popq_r64_1      
  movl $0x10073580, %eax   #  2     0xaada2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0xaada7  7      OPC=andl_r32_imm32  
  nop                      #  4     0xaadae  1      OPC=nop             
  nop                      #  5     0xaadaf  1      OPC=nop             
  nop                      #  6     0xaadb0  1      OPC=nop             
  nop                      #  7     0xaadb1  1      OPC=nop             
  addq %r15, %r11          #  8     0xaadb2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0xaadb5  3      OPC=jmpq_r64        
  nop                      #  10    0xaadb8  1      OPC=nop             
  nop                      #  11    0xaadb9  1      OPC=nop             
  nop                      #  12    0xaadba  1      OPC=nop             
  nop                      #  13    0xaadbb  1      OPC=nop             
  nop                      #  14    0xaadbc  1      OPC=nop             
  nop                      #  15    0xaadbd  1      OPC=nop             
  nop                      #  16    0xaadbe  1      OPC=nop             
  nop                      #  17    0xaadbf  1      OPC=nop             
  nop                      #  18    0xaadc0  1      OPC=nop             
  nop                      #  19    0xaadc1  1      OPC=nop             
  nop                      #  20    0xaadc2  1      OPC=nop             
  nop                      #  21    0xaadc3  1      OPC=nop             
  nop                      #  22    0xaadc4  1      OPC=nop             
  nop                      #  23    0xaadc5  1      OPC=nop             
  nop                      #  24    0xaadc6  1      OPC=nop             
                                                                        
.size _ZNSs12_S_empty_repEv, .-_ZNSs12_S_empty_repEv

