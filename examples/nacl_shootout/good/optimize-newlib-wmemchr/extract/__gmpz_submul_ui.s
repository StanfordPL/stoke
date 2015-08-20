  .text
  .globl __gmpz_submul_ui
  .type __gmpz_submul_ui, @function

#! file-offset 0x71260
#! rip-offset  0x31260
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode                
.__gmpz_submul_ui:        #        0x31260  0      OPC=<label>           
  movl %edi, %edi         #  1     0x31260  2      OPC=movl_r32_r32      
  movl %esi, %esi         #  2     0x31262  2      OPC=movl_r32_r32      
  movl $0xffffffff, %ecx  #  3     0x31264  6      OPC=movl_r32_imm32_1  
  jmpq .__gmpz_aorsmul_1  #  4     0x3126a  5      OPC=jmpq_label_1      
  nop                     #  5     0x3126f  1      OPC=nop               
  nop                     #  6     0x31270  1      OPC=nop               
  nop                     #  7     0x31271  1      OPC=nop               
  nop                     #  8     0x31272  1      OPC=nop               
  nop                     #  9     0x31273  1      OPC=nop               
  nop                     #  10    0x31274  1      OPC=nop               
  nop                     #  11    0x31275  1      OPC=nop               
  nop                     #  12    0x31276  1      OPC=nop               
  nop                     #  13    0x31277  1      OPC=nop               
  nop                     #  14    0x31278  1      OPC=nop               
  nop                     #  15    0x31279  1      OPC=nop               
  nop                     #  16    0x3127a  1      OPC=nop               
  nop                     #  17    0x3127b  1      OPC=nop               
  nop                     #  18    0x3127c  1      OPC=nop               
  nop                     #  19    0x3127d  1      OPC=nop               
  nop                     #  20    0x3127e  1      OPC=nop               
  nop                     #  21    0x3127f  1      OPC=nop               
  nop                     #  22    0x31280  1      OPC=nop               
                                                                         
.size __gmpz_submul_ui, .-__gmpz_submul_ui

