  .text
  .globl quadword_aligned
  .type quadword_aligned, @function

#! file-offset 0x1631af
#! rip-offset  0x1231af
#! capacity    49 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.quadword_aligned:              #        0x1231af  0      OPC=<label>         
  movq $0x101010101010101, %r8  #  1     0x1231af  10     OPC=movq_r64_imm64  
  movzbl %sil, %eax             #  2     0x1231b9  4      OPC=movzbl_r32_r8   
  nop                           #  3     0x1231bd  1      OPC=nop             
  nop                           #  4     0x1231be  1      OPC=nop             
  nop                           #  5     0x1231bf  1      OPC=nop             
  imulq %r8, %rax               #  6     0x1231c0  4      OPC=imulq_r64_r64   
  cmpl $0x100, %edx             #  7     0x1231c4  6      OPC=cmpl_r32_imm32  
  jb .quadword_set              #  8     0x1231ca  6      OPC=jb_label_1      
  shrl $0x7, %ecx               #  9     0x1231d0  3      OPC=shrl_r32_imm8   
  nop                           #  10    0x1231d3  1      OPC=nop             
  nop                           #  11    0x1231d4  1      OPC=nop             
  nop                           #  12    0x1231d5  1      OPC=nop             
  nop                           #  13    0x1231d6  1      OPC=nop             
  nop                           #  14    0x1231d7  1      OPC=nop             
  nop                           #  15    0x1231d8  1      OPC=nop             
  nop                           #  16    0x1231d9  1      OPC=nop             
  nop                           #  17    0x1231da  1      OPC=nop             
  nop                           #  18    0x1231db  1      OPC=nop             
  nop                           #  19    0x1231dc  1      OPC=nop             
  nop                           #  20    0x1231dd  1      OPC=nop             
  nop                           #  21    0x1231de  1      OPC=nop             
  nop                           #  22    0x1231df  1      OPC=nop             
                                                                              
.size quadword_aligned, .-quadword_aligned

