  .text
  .globl _Unwind_GetIP
  .type _Unwind_GetIP, @function

#! file-offset 0x1499a0
#! rip-offset  0x1099a0
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetIP:                 #        0x1099a0  0      OPC=<label>         
  popq %r11                     #  1     0x1099a0  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x1099a2  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x1099a4  2      OPC=movl_r32_r32    
  movl 0x4c(%r15,%rdi,1), %eax  #  4     0x1099a6  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0x1099ab  7      OPC=andl_r32_imm32  
  nop                           #  6     0x1099b2  1      OPC=nop             
  nop                           #  7     0x1099b3  1      OPC=nop             
  nop                           #  8     0x1099b4  1      OPC=nop             
  nop                           #  9     0x1099b5  1      OPC=nop             
  addq %r15, %r11               #  10    0x1099b6  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x1099b9  3      OPC=jmpq_r64        
  nop                           #  12    0x1099bc  1      OPC=nop             
  nop                           #  13    0x1099bd  1      OPC=nop             
  nop                           #  14    0x1099be  1      OPC=nop             
  nop                           #  15    0x1099bf  1      OPC=nop             
  nop                           #  16    0x1099c0  1      OPC=nop             
  nop                           #  17    0x1099c1  1      OPC=nop             
  nop                           #  18    0x1099c2  1      OPC=nop             
  nop                           #  19    0x1099c3  1      OPC=nop             
  nop                           #  20    0x1099c4  1      OPC=nop             
  nop                           #  21    0x1099c5  1      OPC=nop             
  nop                           #  22    0x1099c6  1      OPC=nop             
                                                                              
.size _Unwind_GetIP, .-_Unwind_GetIP

