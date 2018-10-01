  .text
  .globl s1221
  .type s1221, @function

#! file-offset 0x2a40
#! rip-offset  0x602a40
#! capacity    80 bytes

# Text                          #  Line  RIP       Bytes  Opcode               
.s1221:                         #        0x602a40  0      OPC=<label>          
.sx:
  nop
.L_602a68:                      #        0x602a68  0      OPC=<label>          
  movaps %xmm0, 0x601080(%rax)  #  20    0x602a77  7      OPC=movaps_m128_xmm  
.L_602a82:                      #        0x602a82  0      OPC=<label>          
  xorl %eax, %eax               #  23    0x602a82  2      OPC=xorl_r32_r32     
  retq                          #  24    0x602a84  1      OPC=retq             
  nop                           #  34    0x602a8e  1      OPC=nop              
  nop                           #  35    0x602a8f  1      OPC=nop              
                                                                               
.size s1221, .-s1221

