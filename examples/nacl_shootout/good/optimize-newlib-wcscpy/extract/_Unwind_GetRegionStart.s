  .text
  .globl _Unwind_GetRegionStart
  .type _Unwind_GetRegionStart, @function

#! file-offset 0x149a40
#! rip-offset  0x109a40
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetRegionStart:        #        0x109a40  0      OPC=<label>         
  popq %r11                     #  1     0x109a40  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x109a42  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x109a44  2      OPC=movl_r32_r32    
  movl 0x5c(%r15,%rdi,1), %eax  #  4     0x109a46  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0x109a4b  7      OPC=andl_r32_imm32  
  nop                           #  6     0x109a52  1      OPC=nop             
  nop                           #  7     0x109a53  1      OPC=nop             
  nop                           #  8     0x109a54  1      OPC=nop             
  nop                           #  9     0x109a55  1      OPC=nop             
  addq %r15, %r11               #  10    0x109a56  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x109a59  3      OPC=jmpq_r64        
  nop                           #  12    0x109a5c  1      OPC=nop             
  nop                           #  13    0x109a5d  1      OPC=nop             
  nop                           #  14    0x109a5e  1      OPC=nop             
  nop                           #  15    0x109a5f  1      OPC=nop             
  nop                           #  16    0x109a60  1      OPC=nop             
  nop                           #  17    0x109a61  1      OPC=nop             
  nop                           #  18    0x109a62  1      OPC=nop             
  nop                           #  19    0x109a63  1      OPC=nop             
  nop                           #  20    0x109a64  1      OPC=nop             
  nop                           #  21    0x109a65  1      OPC=nop             
  nop                           #  22    0x109a66  1      OPC=nop             
                                                                              
.size _Unwind_GetRegionStart, .-_Unwind_GetRegionStart

