  .text
  .globl holdself
  .type holdself, @function

#! file-offset 0x65100
#! rip-offset  0x25100
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.holdself:                     #        0x25100  0      OPC=<label>         
  addl $0x1, 0x1004c02d(%rip)  #  1     0x25100  7      OPC=addl_m32_imm8   
  movl 0x1005409b(%rip), %eax  #  2     0x25107  6      OPC=movl_r32_m32    
  movl %eax, %eax              #  3     0x2510d  2      OPC=movl_r32_r32    
  orl $0x4, 0x10(%r15,%rax,1)  #  4     0x2510f  6      OPC=orl_m32_imm8    
  movl %eax, %eax              #  5     0x25115  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax     #  6     0x25117  4      OPC=movl_r32_m32    
  popq %r11                    #  7     0x2511b  2      OPC=popq_r64_1      
  nop                          #  8     0x2511d  1      OPC=nop             
  nop                          #  9     0x2511e  1      OPC=nop             
  nop                          #  10    0x2511f  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  11    0x25120  7      OPC=andl_r32_imm32  
  nop                          #  12    0x25127  1      OPC=nop             
  nop                          #  13    0x25128  1      OPC=nop             
  nop                          #  14    0x25129  1      OPC=nop             
  nop                          #  15    0x2512a  1      OPC=nop             
  addq %r15, %r11              #  16    0x2512b  3      OPC=addq_r64_r64    
  jmpq %r11                    #  17    0x2512e  3      OPC=jmpq_r64        
  nop                          #  18    0x25131  1      OPC=nop             
  nop                          #  19    0x25132  1      OPC=nop             
  nop                          #  20    0x25133  1      OPC=nop             
  nop                          #  21    0x25134  1      OPC=nop             
  nop                          #  22    0x25135  1      OPC=nop             
  nop                          #  23    0x25136  1      OPC=nop             
  nop                          #  24    0x25137  1      OPC=nop             
  nop                          #  25    0x25138  1      OPC=nop             
  nop                          #  26    0x25139  1      OPC=nop             
  nop                          #  27    0x2513a  1      OPC=nop             
  nop                          #  28    0x2513b  1      OPC=nop             
  nop                          #  29    0x2513c  1      OPC=nop             
  nop                          #  30    0x2513d  1      OPC=nop             
  nop                          #  31    0x2513e  1      OPC=nop             
  nop                          #  32    0x2513f  1      OPC=nop             
  nop                          #  33    0x25140  1      OPC=nop             
  nop                          #  34    0x25141  1      OPC=nop             
  nop                          #  35    0x25142  1      OPC=nop             
  nop                          #  36    0x25143  1      OPC=nop             
  nop                          #  37    0x25144  1      OPC=nop             
  nop                          #  38    0x25145  1      OPC=nop             
  nop                          #  39    0x25146  1      OPC=nop             
                                                                            
.size holdself, .-holdself

