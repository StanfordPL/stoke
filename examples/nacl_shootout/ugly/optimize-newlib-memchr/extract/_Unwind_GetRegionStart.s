  .text
  .globl _Unwind_GetRegionStart
  .type _Unwind_GetRegionStart, @function

#! file-offset 0x14a460
#! rip-offset  0x10a460
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetRegionStart:        #        0x10a460  0      OPC=<label>         
  popq %r11                     #  1     0x10a460  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x10a462  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x10a464  2      OPC=movl_r32_r32    
  movl 0x5c(%r15,%rdi,1), %eax  #  4     0x10a466  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0x10a46b  7      OPC=andl_r32_imm32  
  nop                           #  6     0x10a472  1      OPC=nop             
  nop                           #  7     0x10a473  1      OPC=nop             
  nop                           #  8     0x10a474  1      OPC=nop             
  nop                           #  9     0x10a475  1      OPC=nop             
  addq %r15, %r11               #  10    0x10a476  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x10a479  3      OPC=jmpq_r64        
  nop                           #  12    0x10a47c  1      OPC=nop             
  nop                           #  13    0x10a47d  1      OPC=nop             
  nop                           #  14    0x10a47e  1      OPC=nop             
  nop                           #  15    0x10a47f  1      OPC=nop             
  nop                           #  16    0x10a480  1      OPC=nop             
  nop                           #  17    0x10a481  1      OPC=nop             
  nop                           #  18    0x10a482  1      OPC=nop             
  nop                           #  19    0x10a483  1      OPC=nop             
  nop                           #  20    0x10a484  1      OPC=nop             
  nop                           #  21    0x10a485  1      OPC=nop             
  nop                           #  22    0x10a486  1      OPC=nop             
                                                                              
.size _Unwind_GetRegionStart, .-_Unwind_GetRegionStart

