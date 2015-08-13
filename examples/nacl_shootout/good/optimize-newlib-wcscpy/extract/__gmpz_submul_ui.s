  .text
  .globl __gmpz_submul_ui
  .type __gmpz_submul_ui, @function

#! file-offset 0x70f60
#! rip-offset  0x30f60
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode                
.__gmpz_submul_ui:        #        0x30f60  0      OPC=<label>           
  movl %edi, %edi         #  1     0x30f60  2      OPC=movl_r32_r32      
  movl %esi, %esi         #  2     0x30f62  2      OPC=movl_r32_r32      
  movl $0xffffffff, %ecx  #  3     0x30f64  6      OPC=movl_r32_imm32_1  
  jmpq .__gmpz_aorsmul_1  #  4     0x30f6a  5      OPC=jmpq_label_1      
  nop                     #  5     0x30f6f  1      OPC=nop               
  nop                     #  6     0x30f70  1      OPC=nop               
  nop                     #  7     0x30f71  1      OPC=nop               
  nop                     #  8     0x30f72  1      OPC=nop               
  nop                     #  9     0x30f73  1      OPC=nop               
  nop                     #  10    0x30f74  1      OPC=nop               
  nop                     #  11    0x30f75  1      OPC=nop               
  nop                     #  12    0x30f76  1      OPC=nop               
  nop                     #  13    0x30f77  1      OPC=nop               
  nop                     #  14    0x30f78  1      OPC=nop               
  nop                     #  15    0x30f79  1      OPC=nop               
  nop                     #  16    0x30f7a  1      OPC=nop               
  nop                     #  17    0x30f7b  1      OPC=nop               
  nop                     #  18    0x30f7c  1      OPC=nop               
  nop                     #  19    0x30f7d  1      OPC=nop               
  nop                     #  20    0x30f7e  1      OPC=nop               
  nop                     #  21    0x30f7f  1      OPC=nop               
  nop                     #  22    0x30f80  1      OPC=nop               
                                                                         
.size __gmpz_submul_ui, .-__gmpz_submul_ui

