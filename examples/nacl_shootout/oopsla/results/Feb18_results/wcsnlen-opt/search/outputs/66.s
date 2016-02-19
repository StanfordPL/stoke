  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsnlen:                   #        0x142d00  0      OPC=<label>         
  xorl %eax, %eax           #  1     0x142d00  2      OPC=xorl_r32_r32    
  orl %edi, %edi            #  2     0x142d02  2      OPC=orl_r32_r32_1   
  movl (%r15,%rdi,1), %ecx  #  3     0x142d04  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  4     0x142d08  2      OPC=testl_r32_r32   
  je .L_142d80              #  5     0x142d0a  2      OPC=je_label        
  testl %esi, %esi          #  6     0x142d0c  2      OPC=testl_r32_r32   
  nop                       #  7     0x142d0e  1      OPC=nop             
  je .L_142d80              #  8     0x142d0f  2      OPC=je_label        
  nop                       #  9     0x142d11  1      OPC=nop             
  nop                       #  10    0x142d12  1      OPC=nop             
  nop                       #  11    0x142d13  1      OPC=nop             
  nop                       #  12    0x142d14  1      OPC=nop             
  nop                       #  13    0x142d15  1      OPC=nop             
  nop                       #  14    0x142d16  1      OPC=nop             
  nop                       #  15    0x142d17  1      OPC=nop             
  movq %rdi, %rax           #  16    0x142d18  3      OPC=movq_r64_r64_1  
  nop                       #  17    0x142d1b  1      OPC=nop             
  nop                       #  18    0x142d1c  1      OPC=nop             
  nop                       #  19    0x142d1d  1      OPC=nop             
  nop                       #  20    0x142d1e  1      OPC=nop             
  nop                       #  21    0x142d1f  1      OPC=nop             
  nop                       #  22    0x142d20  1      OPC=nop             
  subl $0x1, %esi           #  23    0x142d21  3      OPC=subl_r32_imm8   
  jmpq .L_142d40            #  24    0x142d24  2      OPC=jmpq_label      
  nop                       #  25    0x142d26  1      OPC=nop             
  nop                       #  26    0x142d27  1      OPC=nop             
  nop                       #  27    0x142d28  1      OPC=nop             
.L_142d20:                  #        0x142d29  0      OPC=<label>         
  testl %esi, %esi          #  28    0x142d29  2      OPC=testl_r32_r32   
  je .L_142d60              #  29    0x142d2b  2      OPC=je_label        
  nop                       #  30    0x142d2d  1      OPC=nop             
  subl $0x1, %esi           #  31    0x142d2e  3      OPC=subl_r32_imm8   
.L_142d40:                  #        0x142d31  0      OPC=<label>         
  addl $0x4, %eax           #  32    0x142d31  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  33    0x142d34  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  34    0x142d38  2      OPC=testl_r32_r32   
  jne .L_142d20             #  35    0x142d3a  2      OPC=jne_label       
.L_142d60:                  #        0x142d3c  0      OPC=<label>         
  subl %edi, %eax           #  36    0x142d3c  2      OPC=subl_r32_r32_1  
  nop                       #  37    0x142d3e  1      OPC=nop             
  nop                       #  38    0x142d3f  1      OPC=nop             
  sarw $0x2, %ax            #  39    0x142d40  4      OPC=sarw_r16_imm8   
  nop                       #  40    0x142d44  1      OPC=nop             
  nop                       #  41    0x142d45  1      OPC=nop             
  nop                       #  42    0x142d46  1      OPC=nop             
  nop                       #  43    0x142d47  1      OPC=nop             
  nop                       #  44    0x142d48  1      OPC=nop             
  nop                       #  45    0x142d49  1      OPC=nop             
  nop                       #  46    0x142d4a  1      OPC=nop             
  retq                      #  47    0x142d4b  1      OPC=retq            
  nop                       #  48    0x142d4c  1      OPC=nop             
  nop                       #  49    0x142d4d  1      OPC=nop             
  nop                       #  50    0x142d4e  1      OPC=nop             
  nop                       #  51    0x142d4f  1      OPC=nop             
  nop                       #  52    0x142d50  1      OPC=nop             
.L_142d80:                  #        0x142d51  0      OPC=<label>         
  nop                       #  53    0x142d51  1      OPC=nop             
  nop                       #  54    0x142d52  1      OPC=nop             
  nop                       #  55    0x142d53  1      OPC=nop             
  nop                       #  56    0x142d54  1      OPC=nop             
  retq                      #  57    0x142d55  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
