  .text
  .globl holdself
  .type holdself, @function

#! file-offset 0x65680
#! rip-offset  0x25680
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.holdself:                     #        0x25680  0      OPC=<label>         
  addl $0x1, 0x1004baad(%rip)  #  1     0x25680  7      OPC=addl_m32_imm8   
  movl 0x10053b1b(%rip), %eax  #  2     0x25687  6      OPC=movl_r32_m32    
  movl %eax, %eax              #  3     0x2568d  2      OPC=movl_r32_r32    
  orl $0x4, 0x10(%r15,%rax,1)  #  4     0x2568f  6      OPC=orl_m32_imm8    
  movl %eax, %eax              #  5     0x25695  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax     #  6     0x25697  4      OPC=movl_r32_m32    
  popq %r11                    #  7     0x2569b  2      OPC=popq_r64_1      
  nop                          #  8     0x2569d  1      OPC=nop             
  nop                          #  9     0x2569e  1      OPC=nop             
  nop                          #  10    0x2569f  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  11    0x256a0  7      OPC=andl_r32_imm32  
  nop                          #  12    0x256a7  1      OPC=nop             
  nop                          #  13    0x256a8  1      OPC=nop             
  nop                          #  14    0x256a9  1      OPC=nop             
  nop                          #  15    0x256aa  1      OPC=nop             
  addq %r15, %r11              #  16    0x256ab  3      OPC=addq_r64_r64    
  jmpq %r11                    #  17    0x256ae  3      OPC=jmpq_r64        
  nop                          #  18    0x256b1  1      OPC=nop             
  nop                          #  19    0x256b2  1      OPC=nop             
  nop                          #  20    0x256b3  1      OPC=nop             
  nop                          #  21    0x256b4  1      OPC=nop             
  nop                          #  22    0x256b5  1      OPC=nop             
  nop                          #  23    0x256b6  1      OPC=nop             
  nop                          #  24    0x256b7  1      OPC=nop             
  nop                          #  25    0x256b8  1      OPC=nop             
  nop                          #  26    0x256b9  1      OPC=nop             
  nop                          #  27    0x256ba  1      OPC=nop             
  nop                          #  28    0x256bb  1      OPC=nop             
  nop                          #  29    0x256bc  1      OPC=nop             
  nop                          #  30    0x256bd  1      OPC=nop             
  nop                          #  31    0x256be  1      OPC=nop             
  nop                          #  32    0x256bf  1      OPC=nop             
  nop                          #  33    0x256c0  1      OPC=nop             
  nop                          #  34    0x256c1  1      OPC=nop             
  nop                          #  35    0x256c2  1      OPC=nop             
  nop                          #  36    0x256c3  1      OPC=nop             
  nop                          #  37    0x256c4  1      OPC=nop             
  nop                          #  38    0x256c5  1      OPC=nop             
  nop                          #  39    0x256c6  1      OPC=nop             
                                                                            
.size holdself, .-holdself

