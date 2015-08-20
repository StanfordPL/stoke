  .text
  .globl _Unwind_GetCFA
  .type _Unwind_GetCFA, @function

#! file-offset 0x149c80
#! rip-offset  0x109c80
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetCFA:                #        0x109c80  0      OPC=<label>         
  popq %r11                     #  1     0x109c80  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x109c82  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x109c84  2      OPC=movl_r32_r32    
  movl 0x48(%r15,%rdi,1), %eax  #  4     0x109c86  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0x109c8b  7      OPC=andl_r32_imm32  
  nop                           #  6     0x109c92  1      OPC=nop             
  nop                           #  7     0x109c93  1      OPC=nop             
  nop                           #  8     0x109c94  1      OPC=nop             
  nop                           #  9     0x109c95  1      OPC=nop             
  addq %r15, %r11               #  10    0x109c96  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x109c99  3      OPC=jmpq_r64        
  nop                           #  12    0x109c9c  1      OPC=nop             
  nop                           #  13    0x109c9d  1      OPC=nop             
  nop                           #  14    0x109c9e  1      OPC=nop             
  nop                           #  15    0x109c9f  1      OPC=nop             
  nop                           #  16    0x109ca0  1      OPC=nop             
  nop                           #  17    0x109ca1  1      OPC=nop             
  nop                           #  18    0x109ca2  1      OPC=nop             
  nop                           #  19    0x109ca3  1      OPC=nop             
  nop                           #  20    0x109ca4  1      OPC=nop             
  nop                           #  21    0x109ca5  1      OPC=nop             
  nop                           #  22    0x109ca6  1      OPC=nop             
                                                                              
.size _Unwind_GetCFA, .-_Unwind_GetCFA

