  .text
  .globl quadword_aligned
  .type quadword_aligned, @function

#! file-offset 0x1634af
#! rip-offset  0x1234af
#! capacity    49 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.quadword_aligned:              #        0x1234af  0      OPC=<label>         
  movq $0x101010101010101, %r8  #  1     0x1234af  10     OPC=movq_r64_imm64  
  movzbl %sil, %eax             #  2     0x1234b9  4      OPC=movzbl_r32_r8   
  nop                           #  3     0x1234bd  1      OPC=nop             
  nop                           #  4     0x1234be  1      OPC=nop             
  nop                           #  5     0x1234bf  1      OPC=nop             
  imulq %r8, %rax               #  6     0x1234c0  4      OPC=imulq_r64_r64   
  cmpl $0x100, %edx             #  7     0x1234c4  6      OPC=cmpl_r32_imm32  
  jb .quadword_set              #  8     0x1234ca  6      OPC=jb_label_1      
  shrl $0x7, %ecx               #  9     0x1234d0  3      OPC=shrl_r32_imm8   
  nop                           #  10    0x1234d3  1      OPC=nop             
  nop                           #  11    0x1234d4  1      OPC=nop             
  nop                           #  12    0x1234d5  1      OPC=nop             
  nop                           #  13    0x1234d6  1      OPC=nop             
  nop                           #  14    0x1234d7  1      OPC=nop             
  nop                           #  15    0x1234d8  1      OPC=nop             
  nop                           #  16    0x1234d9  1      OPC=nop             
  nop                           #  17    0x1234da  1      OPC=nop             
  nop                           #  18    0x1234db  1      OPC=nop             
  nop                           #  19    0x1234dc  1      OPC=nop             
  nop                           #  20    0x1234dd  1      OPC=nop             
  nop                           #  21    0x1234de  1      OPC=nop             
  nop                           #  22    0x1234df  1      OPC=nop             
                                                                              
.size quadword_aligned, .-quadword_aligned

