  .text
  .globl _Unwind_GetTextRelBase
  .type _Unwind_GetTextRelBase, @function

#! file-offset 0x14a4a0
#! rip-offset  0x10a4a0
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetTextRelBase:        #        0x10a4a0  0      OPC=<label>         
  popq %r11                     #  1     0x10a4a0  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x10a4a2  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x10a4a4  2      OPC=movl_r32_r32    
  movl 0x54(%r15,%rdi,1), %eax  #  4     0x10a4a6  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0x10a4ab  7      OPC=andl_r32_imm32  
  nop                           #  6     0x10a4b2  1      OPC=nop             
  nop                           #  7     0x10a4b3  1      OPC=nop             
  nop                           #  8     0x10a4b4  1      OPC=nop             
  nop                           #  9     0x10a4b5  1      OPC=nop             
  addq %r15, %r11               #  10    0x10a4b6  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x10a4b9  3      OPC=jmpq_r64        
  nop                           #  12    0x10a4bc  1      OPC=nop             
  nop                           #  13    0x10a4bd  1      OPC=nop             
  nop                           #  14    0x10a4be  1      OPC=nop             
  nop                           #  15    0x10a4bf  1      OPC=nop             
  nop                           #  16    0x10a4c0  1      OPC=nop             
  nop                           #  17    0x10a4c1  1      OPC=nop             
  nop                           #  18    0x10a4c2  1      OPC=nop             
  nop                           #  19    0x10a4c3  1      OPC=nop             
  nop                           #  20    0x10a4c4  1      OPC=nop             
  nop                           #  21    0x10a4c5  1      OPC=nop             
  nop                           #  22    0x10a4c6  1      OPC=nop             
                                                                              
.size _Unwind_GetTextRelBase, .-_Unwind_GetTextRelBase

