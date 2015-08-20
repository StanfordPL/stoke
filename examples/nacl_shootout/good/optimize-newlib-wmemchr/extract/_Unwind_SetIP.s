  .text
  .globl _Unwind_SetIP
  .type _Unwind_SetIP, @function

#! file-offset 0x149d00
#! rip-offset  0x109d00
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_SetIP:                 #        0x109d00  0      OPC=<label>         
  popq %r11                     #  1     0x109d00  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x109d02  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x109d04  2      OPC=movl_r32_r32    
  movl %esi, 0x4c(%r15,%rdi,1)  #  4     0x109d06  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d       #  5     0x109d0b  7      OPC=andl_r32_imm32  
  nop                           #  6     0x109d12  1      OPC=nop             
  nop                           #  7     0x109d13  1      OPC=nop             
  nop                           #  8     0x109d14  1      OPC=nop             
  nop                           #  9     0x109d15  1      OPC=nop             
  addq %r15, %r11               #  10    0x109d16  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x109d19  3      OPC=jmpq_r64        
  nop                           #  12    0x109d1c  1      OPC=nop             
  nop                           #  13    0x109d1d  1      OPC=nop             
  nop                           #  14    0x109d1e  1      OPC=nop             
  nop                           #  15    0x109d1f  1      OPC=nop             
  nop                           #  16    0x109d20  1      OPC=nop             
  nop                           #  17    0x109d21  1      OPC=nop             
  nop                           #  18    0x109d22  1      OPC=nop             
  nop                           #  19    0x109d23  1      OPC=nop             
  nop                           #  20    0x109d24  1      OPC=nop             
  nop                           #  21    0x109d25  1      OPC=nop             
  nop                           #  22    0x109d26  1      OPC=nop             
                                                                              
.size _Unwind_SetIP, .-_Unwind_SetIP

