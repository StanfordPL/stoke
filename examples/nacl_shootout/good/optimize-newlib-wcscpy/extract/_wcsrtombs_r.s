  .text
  .globl _wcsrtombs_r
  .type _wcsrtombs_r, @function

#! file-offset 0x182ec0
#! rip-offset  0x142ec0
#! capacity    32 bytes

# Text                    #  Line  RIP       Bytes  Opcode                
._wcsrtombs_r:            #        0x142ec0  0      OPC=<label>           
  movl %r8d, %r9d         #  1     0x142ec0  3      OPC=movl_r32_r32      
  movl %edi, %edi         #  2     0x142ec3  2      OPC=movl_r32_r32      
  movl %ecx, %r8d         #  3     0x142ec5  3      OPC=movl_r32_r32      
  movl %esi, %esi         #  4     0x142ec8  2      OPC=movl_r32_r32      
  movl %edx, %edx         #  5     0x142eca  2      OPC=movl_r32_r32      
  movl $0xffffffff, %ecx  #  6     0x142ecc  6      OPC=movl_r32_imm32_1  
  jmpq ._wcsnrtombs_r     #  7     0x142ed2  5      OPC=jmpq_label_1      
  nop                     #  8     0x142ed7  1      OPC=nop               
  nop                     #  9     0x142ed8  1      OPC=nop               
  nop                     #  10    0x142ed9  1      OPC=nop               
  nop                     #  11    0x142eda  1      OPC=nop               
  nop                     #  12    0x142edb  1      OPC=nop               
  nop                     #  13    0x142edc  1      OPC=nop               
  nop                     #  14    0x142edd  1      OPC=nop               
  nop                     #  15    0x142ede  1      OPC=nop               
  nop                     #  16    0x142edf  1      OPC=nop               
  nop                     #  17    0x142ee0  1      OPC=nop               
                                                                          
.size _wcsrtombs_r, .-_wcsrtombs_r

