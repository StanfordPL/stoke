  .text
  .globl __gmpz_addmul_ui
  .type __gmpz_addmul_ui, @function

#! file-offset 0x71280
#! rip-offset  0x31280
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode            
.__gmpz_addmul_ui:        #        0x31280  0      OPC=<label>       
  movl %edi, %edi         #  1     0x31280  2      OPC=movl_r32_r32  
  movl %esi, %esi         #  2     0x31282  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx         #  3     0x31284  2      OPC=xorl_r32_r32  
  jmpq .__gmpz_aorsmul_1  #  4     0x31286  5      OPC=jmpq_label_1  
  nop                     #  5     0x3128b  1      OPC=nop           
  nop                     #  6     0x3128c  1      OPC=nop           
  nop                     #  7     0x3128d  1      OPC=nop           
  nop                     #  8     0x3128e  1      OPC=nop           
  nop                     #  9     0x3128f  1      OPC=nop           
  nop                     #  10    0x31290  1      OPC=nop           
  nop                     #  11    0x31291  1      OPC=nop           
  nop                     #  12    0x31292  1      OPC=nop           
  nop                     #  13    0x31293  1      OPC=nop           
  nop                     #  14    0x31294  1      OPC=nop           
  nop                     #  15    0x31295  1      OPC=nop           
  nop                     #  16    0x31296  1      OPC=nop           
  nop                     #  17    0x31297  1      OPC=nop           
  nop                     #  18    0x31298  1      OPC=nop           
  nop                     #  19    0x31299  1      OPC=nop           
  nop                     #  20    0x3129a  1      OPC=nop           
  nop                     #  21    0x3129b  1      OPC=nop           
  nop                     #  22    0x3129c  1      OPC=nop           
  nop                     #  23    0x3129d  1      OPC=nop           
  nop                     #  24    0x3129e  1      OPC=nop           
  nop                     #  25    0x3129f  1      OPC=nop           
                                                                     
.size __gmpz_addmul_ui, .-__gmpz_addmul_ui

