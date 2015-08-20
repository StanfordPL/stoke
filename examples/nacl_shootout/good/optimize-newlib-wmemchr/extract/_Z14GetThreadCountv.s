  .text
  .globl _Z14GetThreadCountv
  .type _Z14GetThreadCountv, @function

#! file-offset 0x61c00
#! rip-offset  0x21c00
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._Z14GetThreadCountv:      #        0x21c00  0      OPC=<label>         
  movl $0x1, %eax          #  1     0x21c00  5      OPC=movl_r32_imm32  
  popq %r11                #  2     0x21c05  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  3     0x21c07  7      OPC=andl_r32_imm32  
  nop                      #  4     0x21c0e  1      OPC=nop             
  nop                      #  5     0x21c0f  1      OPC=nop             
  nop                      #  6     0x21c10  1      OPC=nop             
  nop                      #  7     0x21c11  1      OPC=nop             
  addq %r15, %r11          #  8     0x21c12  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x21c15  3      OPC=jmpq_r64        
  nop                      #  10    0x21c18  1      OPC=nop             
  nop                      #  11    0x21c19  1      OPC=nop             
  nop                      #  12    0x21c1a  1      OPC=nop             
  nop                      #  13    0x21c1b  1      OPC=nop             
  nop                      #  14    0x21c1c  1      OPC=nop             
  nop                      #  15    0x21c1d  1      OPC=nop             
  nop                      #  16    0x21c1e  1      OPC=nop             
  nop                      #  17    0x21c1f  1      OPC=nop             
  nop                      #  18    0x21c20  1      OPC=nop             
  nop                      #  19    0x21c21  1      OPC=nop             
  nop                      #  20    0x21c22  1      OPC=nop             
  nop                      #  21    0x21c23  1      OPC=nop             
  nop                      #  22    0x21c24  1      OPC=nop             
  nop                      #  23    0x21c25  1      OPC=nop             
  nop                      #  24    0x21c26  1      OPC=nop             
                                                                        
.size _Z14GetThreadCountv, .-_Z14GetThreadCountv

