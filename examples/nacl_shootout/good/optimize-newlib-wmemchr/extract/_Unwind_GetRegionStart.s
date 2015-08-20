  .text
  .globl _Unwind_GetRegionStart
  .type _Unwind_GetRegionStart, @function

#! file-offset 0x149d40
#! rip-offset  0x109d40
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetRegionStart:        #        0x109d40  0      OPC=<label>         
  popq %r11                     #  1     0x109d40  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x109d42  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x109d44  2      OPC=movl_r32_r32    
  movl 0x5c(%r15,%rdi,1), %eax  #  4     0x109d46  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0x109d4b  7      OPC=andl_r32_imm32  
  nop                           #  6     0x109d52  1      OPC=nop             
  nop                           #  7     0x109d53  1      OPC=nop             
  nop                           #  8     0x109d54  1      OPC=nop             
  nop                           #  9     0x109d55  1      OPC=nop             
  addq %r15, %r11               #  10    0x109d56  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x109d59  3      OPC=jmpq_r64        
  nop                           #  12    0x109d5c  1      OPC=nop             
  nop                           #  13    0x109d5d  1      OPC=nop             
  nop                           #  14    0x109d5e  1      OPC=nop             
  nop                           #  15    0x109d5f  1      OPC=nop             
  nop                           #  16    0x109d60  1      OPC=nop             
  nop                           #  17    0x109d61  1      OPC=nop             
  nop                           #  18    0x109d62  1      OPC=nop             
  nop                           #  19    0x109d63  1      OPC=nop             
  nop                           #  20    0x109d64  1      OPC=nop             
  nop                           #  21    0x109d65  1      OPC=nop             
  nop                           #  22    0x109d66  1      OPC=nop             
                                                                              
.size _Unwind_GetRegionStart, .-_Unwind_GetRegionStart

