  .text
  .globl _ZNSs12_S_empty_repEv
  .type _ZNSs12_S_empty_repEv, @function

#! file-offset 0xea380
#! rip-offset  0xaa380
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZNSs12_S_empty_repEv:    #        0xaa380  0      OPC=<label>         
  popq %r11                #  1     0xaa380  2      OPC=popq_r64_1      
  movl $0x10073580, %eax   #  2     0xaa382  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0xaa387  7      OPC=andl_r32_imm32  
  nop                      #  4     0xaa38e  1      OPC=nop             
  nop                      #  5     0xaa38f  1      OPC=nop             
  nop                      #  6     0xaa390  1      OPC=nop             
  nop                      #  7     0xaa391  1      OPC=nop             
  addq %r15, %r11          #  8     0xaa392  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0xaa395  3      OPC=jmpq_r64        
  nop                      #  10    0xaa398  1      OPC=nop             
  nop                      #  11    0xaa399  1      OPC=nop             
  nop                      #  12    0xaa39a  1      OPC=nop             
  nop                      #  13    0xaa39b  1      OPC=nop             
  nop                      #  14    0xaa39c  1      OPC=nop             
  nop                      #  15    0xaa39d  1      OPC=nop             
  nop                      #  16    0xaa39e  1      OPC=nop             
  nop                      #  17    0xaa39f  1      OPC=nop             
  nop                      #  18    0xaa3a0  1      OPC=nop             
  nop                      #  19    0xaa3a1  1      OPC=nop             
  nop                      #  20    0xaa3a2  1      OPC=nop             
  nop                      #  21    0xaa3a3  1      OPC=nop             
  nop                      #  22    0xaa3a4  1      OPC=nop             
  nop                      #  23    0xaa3a5  1      OPC=nop             
  nop                      #  24    0xaa3a6  1      OPC=nop             
                                                                        
.size _ZNSs12_S_empty_repEv, .-_ZNSs12_S_empty_repEv

