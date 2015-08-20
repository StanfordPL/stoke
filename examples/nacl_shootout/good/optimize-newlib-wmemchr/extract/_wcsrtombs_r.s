  .text
  .globl _wcsrtombs_r
  .type _wcsrtombs_r, @function

#! file-offset 0x183260
#! rip-offset  0x143260
#! capacity    32 bytes

# Text                    #  Line  RIP       Bytes  Opcode                
._wcsrtombs_r:            #        0x143260  0      OPC=<label>           
  movl %r8d, %r9d         #  1     0x143260  3      OPC=movl_r32_r32      
  movl %edi, %edi         #  2     0x143263  2      OPC=movl_r32_r32      
  movl %ecx, %r8d         #  3     0x143265  3      OPC=movl_r32_r32      
  movl %esi, %esi         #  4     0x143268  2      OPC=movl_r32_r32      
  movl %edx, %edx         #  5     0x14326a  2      OPC=movl_r32_r32      
  movl $0xffffffff, %ecx  #  6     0x14326c  6      OPC=movl_r32_imm32_1  
  jmpq ._wcsnrtombs_r     #  7     0x143272  5      OPC=jmpq_label_1      
  nop                     #  8     0x143277  1      OPC=nop               
  nop                     #  9     0x143278  1      OPC=nop               
  nop                     #  10    0x143279  1      OPC=nop               
  nop                     #  11    0x14327a  1      OPC=nop               
  nop                     #  12    0x14327b  1      OPC=nop               
  nop                     #  13    0x14327c  1      OPC=nop               
  nop                     #  14    0x14327d  1      OPC=nop               
  nop                     #  15    0x14327e  1      OPC=nop               
  nop                     #  16    0x14327f  1      OPC=nop               
  nop                     #  17    0x143280  1      OPC=nop               
                                                                          
.size _wcsrtombs_r, .-_wcsrtombs_r

