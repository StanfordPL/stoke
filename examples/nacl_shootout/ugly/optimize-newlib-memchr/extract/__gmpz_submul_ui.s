  .text
  .globl __gmpz_submul_ui
  .type __gmpz_submul_ui, @function

#! file-offset 0x71980
#! rip-offset  0x31980
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode                
.__gmpz_submul_ui:        #        0x31980  0      OPC=<label>           
  movl %edi, %edi         #  1     0x31980  2      OPC=movl_r32_r32      
  movl %esi, %esi         #  2     0x31982  2      OPC=movl_r32_r32      
  movl $0xffffffff, %ecx  #  3     0x31984  6      OPC=movl_r32_imm32_1  
  jmpq .__gmpz_aorsmul_1  #  4     0x3198a  5      OPC=jmpq_label_1      
  nop                     #  5     0x3198f  1      OPC=nop               
  nop                     #  6     0x31990  1      OPC=nop               
  nop                     #  7     0x31991  1      OPC=nop               
  nop                     #  8     0x31992  1      OPC=nop               
  nop                     #  9     0x31993  1      OPC=nop               
  nop                     #  10    0x31994  1      OPC=nop               
  nop                     #  11    0x31995  1      OPC=nop               
  nop                     #  12    0x31996  1      OPC=nop               
  nop                     #  13    0x31997  1      OPC=nop               
  nop                     #  14    0x31998  1      OPC=nop               
  nop                     #  15    0x31999  1      OPC=nop               
  nop                     #  16    0x3199a  1      OPC=nop               
  nop                     #  17    0x3199b  1      OPC=nop               
  nop                     #  18    0x3199c  1      OPC=nop               
  nop                     #  19    0x3199d  1      OPC=nop               
  nop                     #  20    0x3199e  1      OPC=nop               
  nop                     #  21    0x3199f  1      OPC=nop               
  nop                     #  22    0x319a0  1      OPC=nop               
                                                                         
.size __gmpz_submul_ui, .-__gmpz_submul_ui

