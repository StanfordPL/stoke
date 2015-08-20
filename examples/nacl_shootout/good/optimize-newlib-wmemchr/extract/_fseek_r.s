  .text
  .globl _fseek_r
  .type _fseek_r, @function

#! file-offset 0x15c0c0
#! rip-offset  0x11c0c0
#! capacity    32 bytes

# Text               #  Line  RIP       Bytes  Opcode              
._fseek_r:           #        0x11c0c0  0      OPC=<label>         
  movl %edi, %edi    #  1     0x11c0c0  2      OPC=movl_r32_r32    
  movl %esi, %esi    #  2     0x11c0c2  2      OPC=movl_r32_r32    
  movslq %edx, %rdx  #  3     0x11c0c4  3      OPC=movslq_r64_r32  
  jmpq ._fseeko_r    #  4     0x11c0c7  5      OPC=jmpq_label_1    
  nop                #  5     0x11c0cc  1      OPC=nop             
  nop                #  6     0x11c0cd  1      OPC=nop             
  nop                #  7     0x11c0ce  1      OPC=nop             
  nop                #  8     0x11c0cf  1      OPC=nop             
  nop                #  9     0x11c0d0  1      OPC=nop             
  nop                #  10    0x11c0d1  1      OPC=nop             
  nop                #  11    0x11c0d2  1      OPC=nop             
  nop                #  12    0x11c0d3  1      OPC=nop             
  nop                #  13    0x11c0d4  1      OPC=nop             
  nop                #  14    0x11c0d5  1      OPC=nop             
  nop                #  15    0x11c0d6  1      OPC=nop             
  nop                #  16    0x11c0d7  1      OPC=nop             
  nop                #  17    0x11c0d8  1      OPC=nop             
  nop                #  18    0x11c0d9  1      OPC=nop             
  nop                #  19    0x11c0da  1      OPC=nop             
  nop                #  20    0x11c0db  1      OPC=nop             
  nop                #  21    0x11c0dc  1      OPC=nop             
  nop                #  22    0x11c0dd  1      OPC=nop             
  nop                #  23    0x11c0de  1      OPC=nop             
  nop                #  24    0x11c0df  1      OPC=nop             
                                                                   
.size _fseek_r, .-_fseek_r

