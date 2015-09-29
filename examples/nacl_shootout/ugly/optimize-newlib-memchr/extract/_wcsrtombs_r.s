  .text
  .globl _wcsrtombs_r
  .type _wcsrtombs_r, @function

#! file-offset 0x183980
#! rip-offset  0x143980
#! capacity    32 bytes

# Text                    #  Line  RIP       Bytes  Opcode                
._wcsrtombs_r:            #        0x143980  0      OPC=<label>           
  movl %r8d, %r9d         #  1     0x143980  3      OPC=movl_r32_r32      
  movl %edi, %edi         #  2     0x143983  2      OPC=movl_r32_r32      
  movl %ecx, %r8d         #  3     0x143985  3      OPC=movl_r32_r32      
  movl %esi, %esi         #  4     0x143988  2      OPC=movl_r32_r32      
  movl %edx, %edx         #  5     0x14398a  2      OPC=movl_r32_r32      
  movl $0xffffffff, %ecx  #  6     0x14398c  6      OPC=movl_r32_imm32_1  
  jmpq ._wcsnrtombs_r     #  7     0x143992  5      OPC=jmpq_label_1      
  nop                     #  8     0x143997  1      OPC=nop               
  nop                     #  9     0x143998  1      OPC=nop               
  nop                     #  10    0x143999  1      OPC=nop               
  nop                     #  11    0x14399a  1      OPC=nop               
  nop                     #  12    0x14399b  1      OPC=nop               
  nop                     #  13    0x14399c  1      OPC=nop               
  nop                     #  14    0x14399d  1      OPC=nop               
  nop                     #  15    0x14399e  1      OPC=nop               
  nop                     #  16    0x14399f  1      OPC=nop               
  nop                     #  17    0x1439a0  1      OPC=nop               
                                                                          
.size _wcsrtombs_r, .-_wcsrtombs_r

