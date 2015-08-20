  .text
  .globl _Unwind_GetIP
  .type _Unwind_GetIP, @function

#! file-offset 0x149ca0
#! rip-offset  0x109ca0
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetIP:                 #        0x109ca0  0      OPC=<label>         
  popq %r11                     #  1     0x109ca0  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x109ca2  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x109ca4  2      OPC=movl_r32_r32    
  movl 0x4c(%r15,%rdi,1), %eax  #  4     0x109ca6  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0x109cab  7      OPC=andl_r32_imm32  
  nop                           #  6     0x109cb2  1      OPC=nop             
  nop                           #  7     0x109cb3  1      OPC=nop             
  nop                           #  8     0x109cb4  1      OPC=nop             
  nop                           #  9     0x109cb5  1      OPC=nop             
  addq %r15, %r11               #  10    0x109cb6  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x109cb9  3      OPC=jmpq_r64        
  nop                           #  12    0x109cbc  1      OPC=nop             
  nop                           #  13    0x109cbd  1      OPC=nop             
  nop                           #  14    0x109cbe  1      OPC=nop             
  nop                           #  15    0x109cbf  1      OPC=nop             
  nop                           #  16    0x109cc0  1      OPC=nop             
  nop                           #  17    0x109cc1  1      OPC=nop             
  nop                           #  18    0x109cc2  1      OPC=nop             
  nop                           #  19    0x109cc3  1      OPC=nop             
  nop                           #  20    0x109cc4  1      OPC=nop             
  nop                           #  21    0x109cc5  1      OPC=nop             
  nop                           #  22    0x109cc6  1      OPC=nop             
                                                                              
.size _Unwind_GetIP, .-_Unwind_GetIP

