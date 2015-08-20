  .text
  .globl round_by
  .type round_by, @function

#! file-offset 0x61180
#! rip-offset  0x21180
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.round_by:                 #        0x21180  0      OPC=<label>         
  movl %edi, %eax          #  1     0x21180  2      OPC=movl_r32_r32    
  xorl %edx, %edx          #  2     0x21182  2      OPC=xorl_r32_r32    
  divl %esi                #  3     0x21184  2      OPC=divl_r32        
  movl %edi, %eax          #  4     0x21186  2      OPC=movl_r32_r32    
  subl %edx, %eax          #  5     0x21188  2      OPC=subl_r32_r32    
  popq %r11                #  6     0x2118a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  7     0x2118c  7      OPC=andl_r32_imm32  
  nop                      #  8     0x21193  1      OPC=nop             
  nop                      #  9     0x21194  1      OPC=nop             
  nop                      #  10    0x21195  1      OPC=nop             
  nop                      #  11    0x21196  1      OPC=nop             
  addq %r15, %r11          #  12    0x21197  3      OPC=addq_r64_r64    
  jmpq %r11                #  13    0x2119a  3      OPC=jmpq_r64        
  nop                      #  14    0x2119d  1      OPC=nop             
  nop                      #  15    0x2119e  1      OPC=nop             
  nop                      #  16    0x2119f  1      OPC=nop             
  nop                      #  17    0x211a0  1      OPC=nop             
  nop                      #  18    0x211a1  1      OPC=nop             
  nop                      #  19    0x211a2  1      OPC=nop             
  nop                      #  20    0x211a3  1      OPC=nop             
  nop                      #  21    0x211a4  1      OPC=nop             
  nop                      #  22    0x211a5  1      OPC=nop             
  nop                      #  23    0x211a6  1      OPC=nop             
                                                                        
.size round_by, .-round_by

