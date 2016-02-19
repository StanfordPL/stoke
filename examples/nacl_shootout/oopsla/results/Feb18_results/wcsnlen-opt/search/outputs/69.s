  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsnlen:                   #        0x142d00  0      OPC=<label>         
  nop                       #  1     0x142d00  1      OPC=nop             
  nop                       #  2     0x142d01  1      OPC=nop             
  nop                       #  3     0x142d02  1      OPC=nop             
  nop                       #  4     0x142d03  1      OPC=nop             
  nop                       #  5     0x142d04  1      OPC=nop             
  xorl %eax, %eax           #  6     0x142d05  2      OPC=xorl_r32_r32    
  nop                       #  7     0x142d07  1      OPC=nop             
  nop                       #  8     0x142d08  1      OPC=nop             
  nop                       #  9     0x142d09  1      OPC=nop             
  movl %edi, %edi           #  10    0x142d0a  2      OPC=movl_r32_r32_1  
  movl (%r15,%rdi,1), %ecx  #  11    0x142d0c  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  12    0x142d10  2      OPC=testl_r32_r32   
  je .L_142d80              #  13    0x142d12  2      OPC=je_label        
  nop                       #  14    0x142d14  1      OPC=nop             
  nop                       #  15    0x142d15  1      OPC=nop             
  nop                       #  16    0x142d16  1      OPC=nop             
  nop                       #  17    0x142d17  1      OPC=nop             
  nop                       #  18    0x142d18  1      OPC=nop             
  nop                       #  19    0x142d19  1      OPC=nop             
  nop                       #  20    0x142d1a  1      OPC=nop             
  xorq %rdi, %rax           #  21    0x142d1b  3      OPC=xorq_r64_r64    
.L_142d20:                  #        0x142d1e  0      OPC=<label>         
  testl %esi, %esi          #  22    0x142d1e  2      OPC=testl_r32_r32   
  je .L_142d60              #  23    0x142d20  2      OPC=je_label        
  subq $0x1, %rsi           #  24    0x142d22  7      OPC=subq_r64_imm32  
.L_142d40:                  #        0x142d29  0      OPC=<label>         
  addl $0x4, %eax           #  25    0x142d29  5      OPC=addl_eax_imm32  
  movl (%r15,%rax,1), %edx  #  26    0x142d2e  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  27    0x142d32  2      OPC=testl_r32_r32   
  jne .L_142d20             #  28    0x142d34  2      OPC=jne_label       
  nop                       #  29    0x142d36  1      OPC=nop             
  nop                       #  30    0x142d37  1      OPC=nop             
  nop                       #  31    0x142d38  1      OPC=nop             
  nop                       #  32    0x142d39  1      OPC=nop             
  nop                       #  33    0x142d3a  1      OPC=nop             
  nop                       #  34    0x142d3b  1      OPC=nop             
  nop                       #  35    0x142d3c  1      OPC=nop             
  nop                       #  36    0x142d3d  1      OPC=nop             
.L_142d60:                  #        0x142d3e  0      OPC=<label>         
  subl %edi, %eax           #  37    0x142d3e  2      OPC=subl_r32_r32    
  shrq $0x2, %rax           #  38    0x142d40  4      OPC=shrq_r64_imm8   
  nop                       #  39    0x142d44  1      OPC=nop             
  nop                       #  40    0x142d45  1      OPC=nop             
  nop                       #  41    0x142d46  1      OPC=nop             
.L_142d80:                  #        0x142d47  0      OPC=<label>         
  retq                      #  42    0x142d47  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
