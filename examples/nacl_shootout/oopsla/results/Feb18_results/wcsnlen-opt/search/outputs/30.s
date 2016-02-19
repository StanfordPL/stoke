  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsnlen:                   #        0x142d00  0      OPC=<label>         
  movl %edi, %eax           #  1     0x142d00  2      OPC=movl_r32_r32_1  
  movl (%r15,%rax,1), %ecx  #  2     0x142d02  4      OPC=movl_r32_m32    
  nop                       #  3     0x142d06  1      OPC=nop             
  nop                       #  4     0x142d07  1      OPC=nop             
  nop                       #  5     0x142d08  1      OPC=nop             
  nop                       #  6     0x142d09  1      OPC=nop             
  testl %ecx, %ecx          #  7     0x142d0a  2      OPC=testl_r32_r32   
  je .L_142d80              #  8     0x142d0c  2      OPC=je_label        
.L_142d20:                  #        0x142d0e  0      OPC=<label>         
  testl %esi, %esi          #  9     0x142d0e  2      OPC=testl_r32_r32   
  je .L_142d60              #  10    0x142d10  2      OPC=je_label        
  subl $0x1, %esi           #  11    0x142d12  3      OPC=subl_r32_imm8   
  addl $0x4, %eax           #  12    0x142d15  5      OPC=addl_eax_imm32  
  movl (%r15,%rax,1), %edx  #  13    0x142d1a  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  14    0x142d1e  2      OPC=testl_r32_r32   
  jne .L_142d20             #  15    0x142d20  2      OPC=jne_label       
.L_142d60:                  #        0x142d22  0      OPC=<label>         
  nop                       #  16    0x142d22  1      OPC=nop             
  nop                       #  17    0x142d23  1      OPC=nop             
  nop                       #  18    0x142d24  1      OPC=nop             
  nop                       #  19    0x142d25  1      OPC=nop             
  nop                       #  20    0x142d26  1      OPC=nop             
  nop                       #  21    0x142d27  1      OPC=nop             
  nop                       #  22    0x142d28  1      OPC=nop             
  nop                       #  23    0x142d29  1      OPC=nop             
  subl %edi, %eax           #  24    0x142d2a  2      OPC=subl_r32_r32    
  nop                       #  25    0x142d2c  1      OPC=nop             
  shrl $0x2, %eax           #  26    0x142d2d  3      OPC=shrl_r32_imm8   
  nop                       #  27    0x142d30  1      OPC=nop             
  nop                       #  28    0x142d31  1      OPC=nop             
  nop                       #  29    0x142d32  1      OPC=nop             
  retq                      #  30    0x142d33  1      OPC=retq            
  nop                       #  31    0x142d34  1      OPC=nop             
  nop                       #  32    0x142d35  1      OPC=nop             
  nop                       #  33    0x142d36  1      OPC=nop             
.L_142d80:                  #        0x142d37  0      OPC=<label>         
  nop                       #  34    0x142d37  1      OPC=nop             
  subl %eax, %eax           #  35    0x142d38  2      OPC=subl_r32_r32_1  
  nop                       #  36    0x142d3a  1      OPC=nop             
  retq                      #  37    0x142d3b  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
