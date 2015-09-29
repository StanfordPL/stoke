  .text
  .globl _Unwind_GetDataRelBase
  .type _Unwind_GetDataRelBase, @function

#! file-offset 0x14a480
#! rip-offset  0x10a480
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetDataRelBase:        #        0x10a480  0      OPC=<label>         
  popq %r11                     #  1     0x10a480  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x10a482  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x10a484  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rdi,1), %eax  #  4     0x10a486  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0x10a48b  7      OPC=andl_r32_imm32  
  nop                           #  6     0x10a492  1      OPC=nop             
  nop                           #  7     0x10a493  1      OPC=nop             
  nop                           #  8     0x10a494  1      OPC=nop             
  nop                           #  9     0x10a495  1      OPC=nop             
  addq %r15, %r11               #  10    0x10a496  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x10a499  3      OPC=jmpq_r64        
  nop                           #  12    0x10a49c  1      OPC=nop             
  nop                           #  13    0x10a49d  1      OPC=nop             
  nop                           #  14    0x10a49e  1      OPC=nop             
  nop                           #  15    0x10a49f  1      OPC=nop             
  nop                           #  16    0x10a4a0  1      OPC=nop             
  nop                           #  17    0x10a4a1  1      OPC=nop             
  nop                           #  18    0x10a4a2  1      OPC=nop             
  nop                           #  19    0x10a4a3  1      OPC=nop             
  nop                           #  20    0x10a4a4  1      OPC=nop             
  nop                           #  21    0x10a4a5  1      OPC=nop             
  nop                           #  22    0x10a4a6  1      OPC=nop             
                                                                              
.size _Unwind_GetDataRelBase, .-_Unwind_GetDataRelBase

