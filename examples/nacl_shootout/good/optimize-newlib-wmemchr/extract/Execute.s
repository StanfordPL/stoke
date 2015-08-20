  .text
  .globl Execute
  .type Execute, @function

#! file-offset 0x661a0
#! rip-offset  0x261a0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.Execute:                   #        0x261a0  0      OPC=<label>         
  movl %edi, %edi           #  1     0x261a0  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0x261a2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx  #  3     0x261a4  4      OPC=movl_r32_m32    
  xorl %eax, %eax           #  4     0x261a8  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %edx    #  5     0x261aa  6      OPC=andl_r32_imm32  
  nop                       #  6     0x261b0  1      OPC=nop             
  nop                       #  7     0x261b1  1      OPC=nop             
  nop                       #  8     0x261b2  1      OPC=nop             
  addq %r15, %rdx           #  9     0x261b3  3      OPC=addq_r64_r64    
  jmpq %rdx                 #  10    0x261b6  2      OPC=jmpq_r64        
  nop                       #  11    0x261b8  1      OPC=nop             
  nop                       #  12    0x261b9  1      OPC=nop             
  nop                       #  13    0x261ba  1      OPC=nop             
  nop                       #  14    0x261bb  1      OPC=nop             
  nop                       #  15    0x261bc  1      OPC=nop             
  nop                       #  16    0x261bd  1      OPC=nop             
  nop                       #  17    0x261be  1      OPC=nop             
  nop                       #  18    0x261bf  1      OPC=nop             
  nop                       #  19    0x261c0  1      OPC=nop             
  nop                       #  20    0x261c1  1      OPC=nop             
  nop                       #  21    0x261c2  1      OPC=nop             
  nop                       #  22    0x261c3  1      OPC=nop             
  nop                       #  23    0x261c4  1      OPC=nop             
  nop                       #  24    0x261c5  1      OPC=nop             
                                                                         
.size Execute, .-Execute

