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
  xorl %eax, %eax           #  3     0x142d02  2      OPC=xorl_r32_r32    
  nop                       #  4     0x142d04  1      OPC=nop             
  nop                       #  5     0x142d05  1      OPC=nop             
  orl %edi, %edi            #  6     0x142d06  2      OPC=orl_r32_r32_1   
  movl (%r15,%rdi,1), %ecx  #  7     0x142d08  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  8     0x142d0c  2      OPC=testl_r32_r32   
  je .L_142d80              #  9     0x142d0e  2      OPC=je_label        
  nop                       #  10    0x142d10  1      OPC=nop             
  testl %esi, %esi          #  11    0x142d11  2      OPC=testl_r32_r32   
  nop                       #  12    0x142d13  1      OPC=nop             
  nop                       #  13    0x142d14  1      OPC=nop             
  je .L_142d80              #  14    0x142d15  2      OPC=je_label        
  nop                       #  15    0x142d17  1      OPC=nop             
  nop                       #  16    0x142d18  1      OPC=nop             
  nop                       #  17    0x142d19  1      OPC=nop             
  nop                       #  18    0x142d1a  1      OPC=nop             
  nop                       #  19    0x142d1b  1      OPC=nop             
  nop                       #  20    0x142d1c  1      OPC=nop             
  subl $0x1, %esi           #  21    0x142d1d  3      OPC=subl_r32_imm8   
  xorq %rdi, %rax           #  22    0x142d20  3      OPC=xorq_r64_r64    
  nop                       #  23    0x142d23  1      OPC=nop             
  nop                       #  24    0x142d24  1      OPC=nop             
  nop                       #  25    0x142d25  1      OPC=nop             
  nop                       #  26    0x142d26  1      OPC=nop             
  nop                       #  27    0x142d27  1      OPC=nop             
  jmpq .L_142d40            #  28    0x142d28  2      OPC=jmpq_label      
  nop                       #  29    0x142d2a  1      OPC=nop             
  nop                       #  30    0x142d2b  1      OPC=nop             
.L_142d20:                  #        0x142d2c  0      OPC=<label>         
  testl %esi, %esi          #  31    0x142d2c  2      OPC=testl_r32_r32   
  je .L_142d60              #  32    0x142d2e  2      OPC=je_label        
  subw $0x1, %si            #  33    0x142d30  4      OPC=subw_r16_imm8   
.L_142d40:                  #        0x142d34  0      OPC=<label>         
  addl $0x4, %eax           #  34    0x142d34  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  35    0x142d37  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  36    0x142d3b  2      OPC=testl_r32_r32   
  jne .L_142d20             #  37    0x142d3d  2      OPC=jne_label       
.L_142d60:                  #        0x142d3f  0      OPC=<label>         
  nop                       #  38    0x142d3f  1      OPC=nop             
  nop                       #  39    0x142d40  1      OPC=nop             
  nop                       #  40    0x142d41  1      OPC=nop             
  subl %edi, %eax           #  41    0x142d42  2      OPC=subl_r32_r32_1  
  nop                       #  42    0x142d44  1      OPC=nop             
  nop                       #  43    0x142d45  1      OPC=nop             
  sarw $0x2, %ax            #  44    0x142d46  4      OPC=sarw_r16_imm8   
  nop                       #  45    0x142d4a  1      OPC=nop             
  nop                       #  46    0x142d4b  1      OPC=nop             
  nop                       #  47    0x142d4c  1      OPC=nop             
  nop                       #  48    0x142d4d  1      OPC=nop             
  nop                       #  49    0x142d4e  1      OPC=nop             
  nop                       #  50    0x142d4f  1      OPC=nop             
  nop                       #  51    0x142d50  1      OPC=nop             
  retq                      #  52    0x142d51  1      OPC=retq            
  nop                       #  53    0x142d52  1      OPC=nop             
  nop                       #  54    0x142d53  1      OPC=nop             
  nop                       #  55    0x142d54  1      OPC=nop             
  nop                       #  56    0x142d55  1      OPC=nop             
.L_142d80:                  #        0x142d56  0      OPC=<label>         
  retq                      #  57    0x142d56  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
