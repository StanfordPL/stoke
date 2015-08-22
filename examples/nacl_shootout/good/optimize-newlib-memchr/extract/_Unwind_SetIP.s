  .text
  .globl _Unwind_SetIP
  .type _Unwind_SetIP, @function

#! file-offset 0x14a420
#! rip-offset  0x10a420
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_SetIP:                 #        0x10a420  0      OPC=<label>         
  popq %r11                     #  1     0x10a420  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x10a422  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x10a424  2      OPC=movl_r32_r32    
  movl %esi, 0x4c(%r15,%rdi,1)  #  4     0x10a426  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d       #  5     0x10a42b  7      OPC=andl_r32_imm32  
  nop                           #  6     0x10a432  1      OPC=nop             
  nop                           #  7     0x10a433  1      OPC=nop             
  nop                           #  8     0x10a434  1      OPC=nop             
  nop                           #  9     0x10a435  1      OPC=nop             
  addq %r15, %r11               #  10    0x10a436  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x10a439  3      OPC=jmpq_r64        
  nop                           #  12    0x10a43c  1      OPC=nop             
  nop                           #  13    0x10a43d  1      OPC=nop             
  nop                           #  14    0x10a43e  1      OPC=nop             
  nop                           #  15    0x10a43f  1      OPC=nop             
  nop                           #  16    0x10a440  1      OPC=nop             
  nop                           #  17    0x10a441  1      OPC=nop             
  nop                           #  18    0x10a442  1      OPC=nop             
  nop                           #  19    0x10a443  1      OPC=nop             
  nop                           #  20    0x10a444  1      OPC=nop             
  nop                           #  21    0x10a445  1      OPC=nop             
  nop                           #  22    0x10a446  1      OPC=nop             
                                                                              
.size _Unwind_SetIP, .-_Unwind_SetIP

