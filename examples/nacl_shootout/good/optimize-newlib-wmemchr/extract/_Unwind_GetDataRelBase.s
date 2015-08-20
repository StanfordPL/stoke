  .text
  .globl _Unwind_GetDataRelBase
  .type _Unwind_GetDataRelBase, @function

#! file-offset 0x149d60
#! rip-offset  0x109d60
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetDataRelBase:        #        0x109d60  0      OPC=<label>         
  popq %r11                     #  1     0x109d60  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x109d62  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x109d64  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rdi,1), %eax  #  4     0x109d66  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0x109d6b  7      OPC=andl_r32_imm32  
  nop                           #  6     0x109d72  1      OPC=nop             
  nop                           #  7     0x109d73  1      OPC=nop             
  nop                           #  8     0x109d74  1      OPC=nop             
  nop                           #  9     0x109d75  1      OPC=nop             
  addq %r15, %r11               #  10    0x109d76  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x109d79  3      OPC=jmpq_r64        
  nop                           #  12    0x109d7c  1      OPC=nop             
  nop                           #  13    0x109d7d  1      OPC=nop             
  nop                           #  14    0x109d7e  1      OPC=nop             
  nop                           #  15    0x109d7f  1      OPC=nop             
  nop                           #  16    0x109d80  1      OPC=nop             
  nop                           #  17    0x109d81  1      OPC=nop             
  nop                           #  18    0x109d82  1      OPC=nop             
  nop                           #  19    0x109d83  1      OPC=nop             
  nop                           #  20    0x109d84  1      OPC=nop             
  nop                           #  21    0x109d85  1      OPC=nop             
  nop                           #  22    0x109d86  1      OPC=nop             
                                                                              
.size _Unwind_GetDataRelBase, .-_Unwind_GetDataRelBase

