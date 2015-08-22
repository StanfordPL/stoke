  .text
  .globl __gmpz_addmul_ui
  .type __gmpz_addmul_ui, @function

#! file-offset 0x719a0
#! rip-offset  0x319a0
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode            
.__gmpz_addmul_ui:        #        0x319a0  0      OPC=<label>       
  movl %edi, %edi         #  1     0x319a0  2      OPC=movl_r32_r32  
  movl %esi, %esi         #  2     0x319a2  2      OPC=movl_r32_r32  
  xorl %ecx, %ecx         #  3     0x319a4  2      OPC=xorl_r32_r32  
  jmpq .__gmpz_aorsmul_1  #  4     0x319a6  5      OPC=jmpq_label_1  
  nop                     #  5     0x319ab  1      OPC=nop           
  nop                     #  6     0x319ac  1      OPC=nop           
  nop                     #  7     0x319ad  1      OPC=nop           
  nop                     #  8     0x319ae  1      OPC=nop           
  nop                     #  9     0x319af  1      OPC=nop           
  nop                     #  10    0x319b0  1      OPC=nop           
  nop                     #  11    0x319b1  1      OPC=nop           
  nop                     #  12    0x319b2  1      OPC=nop           
  nop                     #  13    0x319b3  1      OPC=nop           
  nop                     #  14    0x319b4  1      OPC=nop           
  nop                     #  15    0x319b5  1      OPC=nop           
  nop                     #  16    0x319b6  1      OPC=nop           
  nop                     #  17    0x319b7  1      OPC=nop           
  nop                     #  18    0x319b8  1      OPC=nop           
  nop                     #  19    0x319b9  1      OPC=nop           
  nop                     #  20    0x319ba  1      OPC=nop           
  nop                     #  21    0x319bb  1      OPC=nop           
  nop                     #  22    0x319bc  1      OPC=nop           
  nop                     #  23    0x319bd  1      OPC=nop           
  nop                     #  24    0x319be  1      OPC=nop           
  nop                     #  25    0x319bf  1      OPC=nop           
                                                                     
.size __gmpz_addmul_ui, .-__gmpz_addmul_ui

