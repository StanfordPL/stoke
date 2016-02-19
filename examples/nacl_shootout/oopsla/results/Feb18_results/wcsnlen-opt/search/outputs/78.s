  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsnlen:                   #        0x142d00  0      OPC=<label>         
  nop                       #  1     0x142d00  1      OPC=nop             
  movl %edi, %eax           #  2     0x142d01  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx  #  3     0x142d03  4      OPC=movl_r32_m32    
  nop                       #  4     0x142d07  1      OPC=nop             
  nop                       #  5     0x142d08  1      OPC=nop             
  testl %ecx, %ecx          #  6     0x142d09  2      OPC=testl_r32_r32   
  je .L_142d80              #  7     0x142d0b  2      OPC=je_label        
  nop                       #  8     0x142d0d  1      OPC=nop             
  nop                       #  9     0x142d0e  1      OPC=nop             
  nop                       #  10    0x142d0f  1      OPC=nop             
  nop                       #  11    0x142d10  1      OPC=nop             
  nop                       #  12    0x142d11  1      OPC=nop             
.L_142d20:                  #        0x142d12  0      OPC=<label>         
  testl %esi, %esi          #  13    0x142d12  2      OPC=testl_r32_r32   
  je .L_142d60              #  14    0x142d14  2      OPC=je_label        
  subl $0x1, %esi           #  15    0x142d16  3      OPC=subl_r32_imm8   
.L_142d40:                  #        0x142d19  0      OPC=<label>         
  addl $0x4, %eax           #  16    0x142d19  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  17    0x142d1c  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  18    0x142d20  2      OPC=testl_r32_r32   
  jne .L_142d20             #  19    0x142d22  2      OPC=jne_label       
  nop                       #  20    0x142d24  1      OPC=nop             
  nop                       #  21    0x142d25  1      OPC=nop             
.L_142d60:                  #        0x142d26  0      OPC=<label>         
  nop                       #  22    0x142d26  1      OPC=nop             
  nop                       #  23    0x142d27  1      OPC=nop             
  nop                       #  24    0x142d28  1      OPC=nop             
  subl %edi, %eax           #  25    0x142d29  2      OPC=subl_r32_r32_1  
  sarw $0x2, %ax            #  26    0x142d2b  4      OPC=sarw_r16_imm8   
  retq                      #  27    0x142d2f  1      OPC=retq            
  nop                       #  28    0x142d30  1      OPC=nop             
.L_142d80:                  #        0x142d31  0      OPC=<label>         
  nop                       #  29    0x142d31  1      OPC=nop             
  nop                       #  30    0x142d32  1      OPC=nop             
  nop                       #  31    0x142d33  1      OPC=nop             
  nop                       #  32    0x142d34  1      OPC=nop             
  subl %eax, %eax           #  33    0x142d35  2      OPC=subl_r32_r32_1  
  retq                      #  34    0x142d37  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
