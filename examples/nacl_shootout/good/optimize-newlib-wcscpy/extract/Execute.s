  .text
  .globl Execute
  .type Execute, @function

#! file-offset 0x66180
#! rip-offset  0x26180
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.Execute:                   #        0x26180  0      OPC=<label>         
  movl %edi, %edi           #  1     0x26180  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0x26182  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx  #  3     0x26184  4      OPC=movl_r32_m32    
  xorl %eax, %eax           #  4     0x26188  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %edx    #  5     0x2618a  6      OPC=andl_r32_imm32  
  nop                       #  6     0x26190  1      OPC=nop             
  nop                       #  7     0x26191  1      OPC=nop             
  nop                       #  8     0x26192  1      OPC=nop             
  addq %r15, %rdx           #  9     0x26193  3      OPC=addq_r64_r64    
  jmpq %rdx                 #  10    0x26196  2      OPC=jmpq_r64        
  nop                       #  11    0x26198  1      OPC=nop             
  nop                       #  12    0x26199  1      OPC=nop             
  nop                       #  13    0x2619a  1      OPC=nop             
  nop                       #  14    0x2619b  1      OPC=nop             
  nop                       #  15    0x2619c  1      OPC=nop             
  nop                       #  16    0x2619d  1      OPC=nop             
  nop                       #  17    0x2619e  1      OPC=nop             
  nop                       #  18    0x2619f  1      OPC=nop             
  nop                       #  19    0x261a0  1      OPC=nop             
  nop                       #  20    0x261a1  1      OPC=nop             
  nop                       #  21    0x261a2  1      OPC=nop             
  nop                       #  22    0x261a3  1      OPC=nop             
  nop                       #  23    0x261a4  1      OPC=nop             
  nop                       #  24    0x261a5  1      OPC=nop             
                                                                         
.size Execute, .-Execute

