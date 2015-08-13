  .text
  .globl _Z14GetThreadCountv
  .type _Z14GetThreadCountv, @function

#! file-offset 0x61be0
#! rip-offset  0x21be0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._Z14GetThreadCountv:      #        0x21be0  0      OPC=<label>         
  movl $0x1, %eax          #  1     0x21be0  5      OPC=movl_r32_imm32  
  popq %r11                #  2     0x21be5  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  3     0x21be7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x21bee  1      OPC=nop             
  nop                      #  5     0x21bef  1      OPC=nop             
  nop                      #  6     0x21bf0  1      OPC=nop             
  nop                      #  7     0x21bf1  1      OPC=nop             
  addq %r15, %r11          #  8     0x21bf2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x21bf5  3      OPC=jmpq_r64        
  nop                      #  10    0x21bf8  1      OPC=nop             
  nop                      #  11    0x21bf9  1      OPC=nop             
  nop                      #  12    0x21bfa  1      OPC=nop             
  nop                      #  13    0x21bfb  1      OPC=nop             
  nop                      #  14    0x21bfc  1      OPC=nop             
  nop                      #  15    0x21bfd  1      OPC=nop             
  nop                      #  16    0x21bfe  1      OPC=nop             
  nop                      #  17    0x21bff  1      OPC=nop             
  nop                      #  18    0x21c00  1      OPC=nop             
  nop                      #  19    0x21c01  1      OPC=nop             
  nop                      #  20    0x21c02  1      OPC=nop             
  nop                      #  21    0x21c03  1      OPC=nop             
  nop                      #  22    0x21c04  1      OPC=nop             
  nop                      #  23    0x21c05  1      OPC=nop             
  nop                      #  24    0x21c06  1      OPC=nop             
                                                                        
.size _Z14GetThreadCountv, .-_Z14GetThreadCountv

