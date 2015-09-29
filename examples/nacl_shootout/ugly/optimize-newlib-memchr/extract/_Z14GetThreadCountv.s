  .text
  .globl _Z14GetThreadCountv
  .type _Z14GetThreadCountv, @function

#! file-offset 0x62160
#! rip-offset  0x22160
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._Z14GetThreadCountv:      #        0x22160  0      OPC=<label>         
  movl $0x1, %eax          #  1     0x22160  5      OPC=movl_r32_imm32  
  popq %r11                #  2     0x22165  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  3     0x22167  7      OPC=andl_r32_imm32  
  nop                      #  4     0x2216e  1      OPC=nop             
  nop                      #  5     0x2216f  1      OPC=nop             
  nop                      #  6     0x22170  1      OPC=nop             
  nop                      #  7     0x22171  1      OPC=nop             
  addq %r15, %r11          #  8     0x22172  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x22175  3      OPC=jmpq_r64        
  nop                      #  10    0x22178  1      OPC=nop             
  nop                      #  11    0x22179  1      OPC=nop             
  nop                      #  12    0x2217a  1      OPC=nop             
  nop                      #  13    0x2217b  1      OPC=nop             
  nop                      #  14    0x2217c  1      OPC=nop             
  nop                      #  15    0x2217d  1      OPC=nop             
  nop                      #  16    0x2217e  1      OPC=nop             
  nop                      #  17    0x2217f  1      OPC=nop             
  nop                      #  18    0x22180  1      OPC=nop             
  nop                      #  19    0x22181  1      OPC=nop             
  nop                      #  20    0x22182  1      OPC=nop             
  nop                      #  21    0x22183  1      OPC=nop             
  nop                      #  22    0x22184  1      OPC=nop             
  nop                      #  23    0x22185  1      OPC=nop             
  nop                      #  24    0x22186  1      OPC=nop             
                                                                        
.size _Z14GetThreadCountv, .-_Z14GetThreadCountv

