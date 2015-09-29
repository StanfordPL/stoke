  .text
  .globl arrayfile_rewind
  .type arrayfile_rewind, @function

#! file-offset 0x6b7c0
#! rip-offset  0x2b7c0
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.arrayfile_rewind:              #        0x2b7c0  0      OPC=<label>         
  movl %edi, %edi               #  1     0x2b7c0  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0x2b7c2  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdi,1)      #  3     0x2b7c4  8      OPC=movl_m32_imm32  
  movl %edi, %edi               #  4     0x2b7cc  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rdi,1), %edx  #  5     0x2b7ce  5      OPC=movl_r32_m32    
  shll $0x2, %edx               #  6     0x2b7d3  3      OPC=shll_r32_imm8   
  movl %edi, %edi               #  7     0x2b7d6  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %edi   #  8     0x2b7d8  5      OPC=movl_r32_m32    
  xorl %esi, %esi               #  9     0x2b7dd  2      OPC=xorl_r32_r32    
  nop                           #  10    0x2b7df  1      OPC=nop             
  jmpq .memset                  #  11    0x2b7e0  5      OPC=jmpq_label_1    
  nop                           #  12    0x2b7e5  1      OPC=nop             
  nop                           #  13    0x2b7e6  1      OPC=nop             
  nop                           #  14    0x2b7e7  1      OPC=nop             
  nop                           #  15    0x2b7e8  1      OPC=nop             
  nop                           #  16    0x2b7e9  1      OPC=nop             
  nop                           #  17    0x2b7ea  1      OPC=nop             
  nop                           #  18    0x2b7eb  1      OPC=nop             
  nop                           #  19    0x2b7ec  1      OPC=nop             
  nop                           #  20    0x2b7ed  1      OPC=nop             
  nop                           #  21    0x2b7ee  1      OPC=nop             
  nop                           #  22    0x2b7ef  1      OPC=nop             
  nop                           #  23    0x2b7f0  1      OPC=nop             
  nop                           #  24    0x2b7f1  1      OPC=nop             
  nop                           #  25    0x2b7f2  1      OPC=nop             
  nop                           #  26    0x2b7f3  1      OPC=nop             
  nop                           #  27    0x2b7f4  1      OPC=nop             
  nop                           #  28    0x2b7f5  1      OPC=nop             
  nop                           #  29    0x2b7f6  1      OPC=nop             
  nop                           #  30    0x2b7f7  1      OPC=nop             
  nop                           #  31    0x2b7f8  1      OPC=nop             
  nop                           #  32    0x2b7f9  1      OPC=nop             
  nop                           #  33    0x2b7fa  1      OPC=nop             
  nop                           #  34    0x2b7fb  1      OPC=nop             
  nop                           #  35    0x2b7fc  1      OPC=nop             
  nop                           #  36    0x2b7fd  1      OPC=nop             
  nop                           #  37    0x2b7fe  1      OPC=nop             
  nop                           #  38    0x2b7ff  1      OPC=nop             
                                                                             
.size arrayfile_rewind, .-arrayfile_rewind

