  .text
  .globl holdself
  .type holdself, @function

#! file-offset 0x65120
#! rip-offset  0x25120
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.holdself:                     #        0x25120  0      OPC=<label>         
  addl $0x1, 0x1004c00d(%rip)  #  1     0x25120  7      OPC=addl_m32_imm8   
  movl 0x1005407b(%rip), %eax  #  2     0x25127  6      OPC=movl_r32_m32    
  movl %eax, %eax              #  3     0x2512d  2      OPC=movl_r32_r32    
  orl $0x4, 0x10(%r15,%rax,1)  #  4     0x2512f  6      OPC=orl_m32_imm8    
  movl %eax, %eax              #  5     0x25135  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax     #  6     0x25137  4      OPC=movl_r32_m32    
  popq %r11                    #  7     0x2513b  2      OPC=popq_r64_1      
  nop                          #  8     0x2513d  1      OPC=nop             
  nop                          #  9     0x2513e  1      OPC=nop             
  nop                          #  10    0x2513f  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  11    0x25140  7      OPC=andl_r32_imm32  
  nop                          #  12    0x25147  1      OPC=nop             
  nop                          #  13    0x25148  1      OPC=nop             
  nop                          #  14    0x25149  1      OPC=nop             
  nop                          #  15    0x2514a  1      OPC=nop             
  addq %r15, %r11              #  16    0x2514b  3      OPC=addq_r64_r64    
  jmpq %r11                    #  17    0x2514e  3      OPC=jmpq_r64        
  nop                          #  18    0x25151  1      OPC=nop             
  nop                          #  19    0x25152  1      OPC=nop             
  nop                          #  20    0x25153  1      OPC=nop             
  nop                          #  21    0x25154  1      OPC=nop             
  nop                          #  22    0x25155  1      OPC=nop             
  nop                          #  23    0x25156  1      OPC=nop             
  nop                          #  24    0x25157  1      OPC=nop             
  nop                          #  25    0x25158  1      OPC=nop             
  nop                          #  26    0x25159  1      OPC=nop             
  nop                          #  27    0x2515a  1      OPC=nop             
  nop                          #  28    0x2515b  1      OPC=nop             
  nop                          #  29    0x2515c  1      OPC=nop             
  nop                          #  30    0x2515d  1      OPC=nop             
  nop                          #  31    0x2515e  1      OPC=nop             
  nop                          #  32    0x2515f  1      OPC=nop             
  nop                          #  33    0x25160  1      OPC=nop             
  nop                          #  34    0x25161  1      OPC=nop             
  nop                          #  35    0x25162  1      OPC=nop             
  nop                          #  36    0x25163  1      OPC=nop             
  nop                          #  37    0x25164  1      OPC=nop             
  nop                          #  38    0x25165  1      OPC=nop             
  nop                          #  39    0x25166  1      OPC=nop             
                                                                            
.size holdself, .-holdself

