  .text
  .globl arrayfile_set_keep_output
  .type arrayfile_set_keep_output, @function

#! file-offset 0x6aec0
#! rip-offset  0x2aec0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.arrayfile_set_keep_output:     #        0x2aec0  0      OPC=<label>         
  movl %edi, %edi               #  1     0x2aec0  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0x2aec2  2      OPC=movl_r32_r32    
  movl %esi, 0x14(%r15,%rdi,1)  #  3     0x2aec4  5      OPC=movl_m32_r32    
  popq %r11                     #  4     0x2aec9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  5     0x2aecb  7      OPC=andl_r32_imm32  
  nop                           #  6     0x2aed2  1      OPC=nop             
  nop                           #  7     0x2aed3  1      OPC=nop             
  nop                           #  8     0x2aed4  1      OPC=nop             
  nop                           #  9     0x2aed5  1      OPC=nop             
  addq %r15, %r11               #  10    0x2aed6  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0x2aed9  3      OPC=jmpq_r64        
  nop                           #  12    0x2aedc  1      OPC=nop             
  nop                           #  13    0x2aedd  1      OPC=nop             
  nop                           #  14    0x2aede  1      OPC=nop             
  nop                           #  15    0x2aedf  1      OPC=nop             
  nop                           #  16    0x2aee0  1      OPC=nop             
  nop                           #  17    0x2aee1  1      OPC=nop             
  nop                           #  18    0x2aee2  1      OPC=nop             
  nop                           #  19    0x2aee3  1      OPC=nop             
  nop                           #  20    0x2aee4  1      OPC=nop             
  nop                           #  21    0x2aee5  1      OPC=nop             
  nop                           #  22    0x2aee6  1      OPC=nop             
                                                                             
.size arrayfile_set_keep_output, .-arrayfile_set_keep_output

