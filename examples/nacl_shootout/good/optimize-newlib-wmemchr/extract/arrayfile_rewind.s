  .text
  .globl arrayfile_rewind
  .type arrayfile_rewind, @function

#! file-offset 0x6b0a0
#! rip-offset  0x2b0a0
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.arrayfile_rewind:              #        0x2b0a0  0      OPC=<label>         
  movl %edi, %edi               #  1     0x2b0a0  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0x2b0a2  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdi,1)      #  3     0x2b0a4  8      OPC=movl_m32_imm32  
  movl %edi, %edi               #  4     0x2b0ac  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rdi,1), %edx  #  5     0x2b0ae  5      OPC=movl_r32_m32    
  shll $0x2, %edx               #  6     0x2b0b3  3      OPC=shll_r32_imm8   
  movl %edi, %edi               #  7     0x2b0b6  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %edi   #  8     0x2b0b8  5      OPC=movl_r32_m32    
  xorl %esi, %esi               #  9     0x2b0bd  2      OPC=xorl_r32_r32    
  nop                           #  10    0x2b0bf  1      OPC=nop             
  jmpq .memset                  #  11    0x2b0c0  5      OPC=jmpq_label_1    
  nop                           #  12    0x2b0c5  1      OPC=nop             
  nop                           #  13    0x2b0c6  1      OPC=nop             
  nop                           #  14    0x2b0c7  1      OPC=nop             
  nop                           #  15    0x2b0c8  1      OPC=nop             
  nop                           #  16    0x2b0c9  1      OPC=nop             
  nop                           #  17    0x2b0ca  1      OPC=nop             
  nop                           #  18    0x2b0cb  1      OPC=nop             
  nop                           #  19    0x2b0cc  1      OPC=nop             
  nop                           #  20    0x2b0cd  1      OPC=nop             
  nop                           #  21    0x2b0ce  1      OPC=nop             
  nop                           #  22    0x2b0cf  1      OPC=nop             
  nop                           #  23    0x2b0d0  1      OPC=nop             
  nop                           #  24    0x2b0d1  1      OPC=nop             
  nop                           #  25    0x2b0d2  1      OPC=nop             
  nop                           #  26    0x2b0d3  1      OPC=nop             
  nop                           #  27    0x2b0d4  1      OPC=nop             
  nop                           #  28    0x2b0d5  1      OPC=nop             
  nop                           #  29    0x2b0d6  1      OPC=nop             
  nop                           #  30    0x2b0d7  1      OPC=nop             
  nop                           #  31    0x2b0d8  1      OPC=nop             
  nop                           #  32    0x2b0d9  1      OPC=nop             
  nop                           #  33    0x2b0da  1      OPC=nop             
  nop                           #  34    0x2b0db  1      OPC=nop             
  nop                           #  35    0x2b0dc  1      OPC=nop             
  nop                           #  36    0x2b0dd  1      OPC=nop             
  nop                           #  37    0x2b0de  1      OPC=nop             
  nop                           #  38    0x2b0df  1      OPC=nop             
                                                                             
.size arrayfile_rewind, .-arrayfile_rewind

