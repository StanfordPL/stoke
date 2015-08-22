  .text
  .globl _Unwind_GetIP
  .type _Unwind_GetIP, @function

#! file-offset 0x14a3c0
#! rip-offset  0x10a3c0
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetIP:                 #        0x10a3c0  0      OPC=<label>         
  popq %r11                     #  1     0x10a3c0  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x10a3c2  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x10a3c4  2      OPC=movl_r32_r32    
  movl 0x4c(%r15,%rdi,1), %eax  #  4     0x10a3c6  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0x10a3cb  7      OPC=andl_r32_imm32  
  nop                           #  6     0x10a3d2  1      OPC=nop             
  nop                           #  7     0x10a3d3  1      OPC=nop             
  nop                           #  8     0x10a3d4  1      OPC=nop             
  nop                           #  9     0x10a3d5  1      OPC=nop             
  addq %r15, %r11               #  10    0x10a3d6  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x10a3d9  3      OPC=jmpq_r64        
  nop                           #  12    0x10a3dc  1      OPC=nop             
  nop                           #  13    0x10a3dd  1      OPC=nop             
  nop                           #  14    0x10a3de  1      OPC=nop             
  nop                           #  15    0x10a3df  1      OPC=nop             
  nop                           #  16    0x10a3e0  1      OPC=nop             
  nop                           #  17    0x10a3e1  1      OPC=nop             
  nop                           #  18    0x10a3e2  1      OPC=nop             
  nop                           #  19    0x10a3e3  1      OPC=nop             
  nop                           #  20    0x10a3e4  1      OPC=nop             
  nop                           #  21    0x10a3e5  1      OPC=nop             
  nop                           #  22    0x10a3e6  1      OPC=nop             
                                                                              
.size _Unwind_GetIP, .-_Unwind_GetIP

