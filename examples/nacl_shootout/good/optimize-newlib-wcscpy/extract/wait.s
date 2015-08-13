  .text
  .globl wait
  .type wait, @function

#! file-offset 0x650e0
#! rip-offset  0x250e0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.wait:                         #        0x250e0  0      OPC=<label>         
  movl 0x100540c2(%rip), %eax  #  1     0x250e0  6      OPC=movl_r32_m32    
  movl %eax, %eax              #  2     0x250e6  2      OPC=movl_r32_r32    
  orl $0x2, 0x10(%r15,%rax,1)  #  3     0x250e8  6      OPC=orl_m32_imm8    
  popq %r11                    #  4     0x250ee  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  5     0x250f0  7      OPC=andl_r32_imm32  
  nop                          #  6     0x250f7  1      OPC=nop             
  nop                          #  7     0x250f8  1      OPC=nop             
  nop                          #  8     0x250f9  1      OPC=nop             
  nop                          #  9     0x250fa  1      OPC=nop             
  addq %r15, %r11              #  10    0x250fb  3      OPC=addq_r64_r64    
  jmpq %r11                    #  11    0x250fe  3      OPC=jmpq_r64        
  nop                          #  12    0x25101  1      OPC=nop             
  nop                          #  13    0x25102  1      OPC=nop             
  nop                          #  14    0x25103  1      OPC=nop             
  nop                          #  15    0x25104  1      OPC=nop             
  nop                          #  16    0x25105  1      OPC=nop             
  nop                          #  17    0x25106  1      OPC=nop             
                                                                            
.size wait, .-wait

