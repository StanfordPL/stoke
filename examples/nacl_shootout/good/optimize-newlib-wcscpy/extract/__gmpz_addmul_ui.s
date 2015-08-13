  .text
  .globl __gmpz_addmul_ui
  .type __gmpz_addmul_ui, @function

#! file-offset 0x70f80
#! rip-offset  0x30f80
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode            
.__gmpz_addmul_ui:        #        0x30f80  0      OPC=<label>       
  movl %edi, %edi         #  1     0x30f80  2      OPC=movl_r32_r32  
  movl %esi, %esi         #  2     0x30f82  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx         #  3     0x30f84  2      OPC=xorl_r32_r32  
  jmpq .__gmpz_aorsmul_1  #  4     0x30f86  5      OPC=jmpq_label_1  
  nop                     #  5     0x30f8b  1      OPC=nop           
  nop                     #  6     0x30f8c  1      OPC=nop           
  nop                     #  7     0x30f8d  1      OPC=nop           
  nop                     #  8     0x30f8e  1      OPC=nop           
  nop                     #  9     0x30f8f  1      OPC=nop           
  nop                     #  10    0x30f90  1      OPC=nop           
  nop                     #  11    0x30f91  1      OPC=nop           
  nop                     #  12    0x30f92  1      OPC=nop           
  nop                     #  13    0x30f93  1      OPC=nop           
  nop                     #  14    0x30f94  1      OPC=nop           
  nop                     #  15    0x30f95  1      OPC=nop           
  nop                     #  16    0x30f96  1      OPC=nop           
  nop                     #  17    0x30f97  1      OPC=nop           
  nop                     #  18    0x30f98  1      OPC=nop           
  nop                     #  19    0x30f99  1      OPC=nop           
  nop                     #  20    0x30f9a  1      OPC=nop           
  nop                     #  21    0x30f9b  1      OPC=nop           
  nop                     #  22    0x30f9c  1      OPC=nop           
  nop                     #  23    0x30f9d  1      OPC=nop           
  nop                     #  24    0x30f9e  1      OPC=nop           
  nop                     #  25    0x30f9f  1      OPC=nop           
                                                                     
.size __gmpz_addmul_ui, .-__gmpz_addmul_ui

