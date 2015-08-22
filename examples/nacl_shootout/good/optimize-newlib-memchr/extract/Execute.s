  .text
  .globl Execute
  .type Execute, @function

#! file-offset 0x66700
#! rip-offset  0x26700
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.Execute:                   #        0x26700  0      OPC=<label>         
  movl %edi, %edi           #  1     0x26700  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0x26702  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx  #  3     0x26704  4      OPC=movl_r32_m32    
  xorl %eax, %eax           #  4     0x26708  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %edx    #  5     0x2670a  6      OPC=andl_r32_imm32  
  nop                       #  6     0x26710  1      OPC=nop             
  nop                       #  7     0x26711  1      OPC=nop             
  nop                       #  8     0x26712  1      OPC=nop             
  addq %r15, %rdx           #  9     0x26713  3      OPC=addq_r64_r64    
  jmpq %rdx                 #  10    0x26716  2      OPC=jmpq_r64        
  nop                       #  11    0x26718  1      OPC=nop             
  nop                       #  12    0x26719  1      OPC=nop             
  nop                       #  13    0x2671a  1      OPC=nop             
  nop                       #  14    0x2671b  1      OPC=nop             
  nop                       #  15    0x2671c  1      OPC=nop             
  nop                       #  16    0x2671d  1      OPC=nop             
  nop                       #  17    0x2671e  1      OPC=nop             
  nop                       #  18    0x2671f  1      OPC=nop             
  nop                       #  19    0x26720  1      OPC=nop             
  nop                       #  20    0x26721  1      OPC=nop             
  nop                       #  21    0x26722  1      OPC=nop             
  nop                       #  22    0x26723  1      OPC=nop             
  nop                       #  23    0x26724  1      OPC=nop             
  nop                       #  24    0x26725  1      OPC=nop             
                                                                         
.size Execute, .-Execute

