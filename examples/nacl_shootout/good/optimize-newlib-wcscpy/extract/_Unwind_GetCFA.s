  .text
  .globl _Unwind_GetCFA
  .type _Unwind_GetCFA, @function

#! file-offset 0x149980
#! rip-offset  0x109980
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetCFA:                #        0x109980  0      OPC=<label>         
  popq %r11                     #  1     0x109980  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0x109982  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x109984  2      OPC=movl_r32_r32    
  movl 0x48(%r15,%rdi,1), %eax  #  4     0x109986  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0x10998b  7      OPC=andl_r32_imm32  
  nop                           #  6     0x109992  1      OPC=nop             
  nop                           #  7     0x109993  1      OPC=nop             
  nop                           #  8     0x109994  1      OPC=nop             
  nop                           #  9     0x109995  1      OPC=nop             
  addq %r15, %r11               #  10    0x109996  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x109999  3      OPC=jmpq_r64        
  nop                           #  12    0x10999c  1      OPC=nop             
  nop                           #  13    0x10999d  1      OPC=nop             
  nop                           #  14    0x10999e  1      OPC=nop             
  nop                           #  15    0x10999f  1      OPC=nop             
  nop                           #  16    0x1099a0  1      OPC=nop             
  nop                           #  17    0x1099a1  1      OPC=nop             
  nop                           #  18    0x1099a2  1      OPC=nop             
  nop                           #  19    0x1099a3  1      OPC=nop             
  nop                           #  20    0x1099a4  1      OPC=nop             
  nop                           #  21    0x1099a5  1      OPC=nop             
  nop                           #  22    0x1099a6  1      OPC=nop             
                                                                              
.size _Unwind_GetCFA, .-_Unwind_GetCFA

