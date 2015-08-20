  .text
  .globl _Unwind_GetTextRelBase
  .type _Unwind_GetTextRelBase, @function

#! file-offset 0x149d80
#! rip-offset  0x109d80
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetTextRelBase:        #        0x109d80  0      OPC=<label>         
  popq %r11                     #  1     0x109d80  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x109d82  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x109d84  2      OPC=movl_r32_r32    
  movl 0x54(%r15,%rdi,1), %eax  #  4     0x109d86  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0x109d8b  7      OPC=andl_r32_imm32  
  nop                           #  6     0x109d92  1      OPC=nop             
  nop                           #  7     0x109d93  1      OPC=nop             
  nop                           #  8     0x109d94  1      OPC=nop             
  nop                           #  9     0x109d95  1      OPC=nop             
  addq %r15, %r11               #  10    0x109d96  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x109d99  3      OPC=jmpq_r64        
  nop                           #  12    0x109d9c  1      OPC=nop             
  nop                           #  13    0x109d9d  1      OPC=nop             
  nop                           #  14    0x109d9e  1      OPC=nop             
  nop                           #  15    0x109d9f  1      OPC=nop             
  nop                           #  16    0x109da0  1      OPC=nop             
  nop                           #  17    0x109da1  1      OPC=nop             
  nop                           #  18    0x109da2  1      OPC=nop             
  nop                           #  19    0x109da3  1      OPC=nop             
  nop                           #  20    0x109da4  1      OPC=nop             
  nop                           #  21    0x109da5  1      OPC=nop             
  nop                           #  22    0x109da6  1      OPC=nop             
                                                                              
.size _Unwind_GetTextRelBase, .-_Unwind_GetTextRelBase

