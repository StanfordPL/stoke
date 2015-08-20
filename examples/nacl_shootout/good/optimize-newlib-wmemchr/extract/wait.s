  .text
  .globl wait
  .type wait, @function

#! file-offset 0x65100
#! rip-offset  0x25100
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.wait:                         #        0x25100  0      OPC=<label>         
  movl 0x100540a2(%rip), %eax  #  1     0x25100  6      OPC=movl_r32_m32    
  movl %eax, %eax              #  2     0x25106  2      OPC=movl_r32_r32    
  orl $0x2, 0x10(%r15,%rax,1)  #  3     0x25108  6      OPC=orl_m32_imm8    
  popq %r11                    #  4     0x2510e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  5     0x25110  7      OPC=andl_r32_imm32  
  nop                          #  6     0x25117  1      OPC=nop             
  nop                          #  7     0x25118  1      OPC=nop             
  nop                          #  8     0x25119  1      OPC=nop             
  nop                          #  9     0x2511a  1      OPC=nop             
  addq %r15, %r11              #  10    0x2511b  3      OPC=addq_r64_r64    
  jmpq %r11                    #  11    0x2511e  3      OPC=jmpq_r64        
  nop                          #  12    0x25121  1      OPC=nop             
  nop                          #  13    0x25122  1      OPC=nop             
  nop                          #  14    0x25123  1      OPC=nop             
  nop                          #  15    0x25124  1      OPC=nop             
  nop                          #  16    0x25125  1      OPC=nop             
  nop                          #  17    0x25126  1      OPC=nop             
                                                                            
.size wait, .-wait

