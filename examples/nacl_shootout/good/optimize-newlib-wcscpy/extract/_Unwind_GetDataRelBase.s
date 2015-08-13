  .text
  .globl _Unwind_GetDataRelBase
  .type _Unwind_GetDataRelBase, @function

#! file-offset 0x149a60
#! rip-offset  0x109a60
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetDataRelBase:        #        0x109a60  0      OPC=<label>         
  popq %r11                     #  1     0x109a60  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x109a62  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x109a64  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rdi,1), %eax  #  4     0x109a66  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0x109a6b  7      OPC=andl_r32_imm32  
  nop                           #  6     0x109a72  1      OPC=nop             
  nop                           #  7     0x109a73  1      OPC=nop             
  nop                           #  8     0x109a74  1      OPC=nop             
  nop                           #  9     0x109a75  1      OPC=nop             
  addq %r15, %r11               #  10    0x109a76  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x109a79  3      OPC=jmpq_r64        
  nop                           #  12    0x109a7c  1      OPC=nop             
  nop                           #  13    0x109a7d  1      OPC=nop             
  nop                           #  14    0x109a7e  1      OPC=nop             
  nop                           #  15    0x109a7f  1      OPC=nop             
  nop                           #  16    0x109a80  1      OPC=nop             
  nop                           #  17    0x109a81  1      OPC=nop             
  nop                           #  18    0x109a82  1      OPC=nop             
  nop                           #  19    0x109a83  1      OPC=nop             
  nop                           #  20    0x109a84  1      OPC=nop             
  nop                           #  21    0x109a85  1      OPC=nop             
  nop                           #  22    0x109a86  1      OPC=nop             
                                                                              
.size _Unwind_GetDataRelBase, .-_Unwind_GetDataRelBase

