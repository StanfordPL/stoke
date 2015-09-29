  .text
  .globl _fseek_r
  .type _fseek_r, @function

#! file-offset 0x15c7e0
#! rip-offset  0x11c7e0
#! capacity    32 bytes

# Text               #  Line  RIP       Bytes  Opcode              
._fseek_r:           #        0x11c7e0  0      OPC=<label>         
  movl %edi, %edi    #  1     0x11c7e0  2      OPC=movl_r32_r32    
  movl %esi, %esi    #  2     0x11c7e2  2      OPC=movl_r32_r32    
  movslq %edx, %rdx  #  3     0x11c7e4  3      OPC=movslq_r64_r32  
  jmpq ._fseeko_r    #  4     0x11c7e7  5      OPC=jmpq_label_1    
  nop                #  5     0x11c7ec  1      OPC=nop             
  nop                #  6     0x11c7ed  1      OPC=nop             
  nop                #  7     0x11c7ee  1      OPC=nop             
  nop                #  8     0x11c7ef  1      OPC=nop             
  nop                #  9     0x11c7f0  1      OPC=nop             
  nop                #  10    0x11c7f1  1      OPC=nop             
  nop                #  11    0x11c7f2  1      OPC=nop             
  nop                #  12    0x11c7f3  1      OPC=nop             
  nop                #  13    0x11c7f4  1      OPC=nop             
  nop                #  14    0x11c7f5  1      OPC=nop             
  nop                #  15    0x11c7f6  1      OPC=nop             
  nop                #  16    0x11c7f7  1      OPC=nop             
  nop                #  17    0x11c7f8  1      OPC=nop             
  nop                #  18    0x11c7f9  1      OPC=nop             
  nop                #  19    0x11c7fa  1      OPC=nop             
  nop                #  20    0x11c7fb  1      OPC=nop             
  nop                #  21    0x11c7fc  1      OPC=nop             
  nop                #  22    0x11c7fd  1      OPC=nop             
  nop                #  23    0x11c7fe  1      OPC=nop             
  nop                #  24    0x11c7ff  1      OPC=nop             
                                                                   
.size _fseek_r, .-_fseek_r

