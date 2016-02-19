  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsnlen:                   #        0x142d00  0      OPC=<label>         
  movw %di, %di             #  1     0x142d00  3      OPC=movw_r16_r16_1  
  movl %edi, %edi           #  2     0x142d03  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %ecx  #  3     0x142d05  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  4     0x142d09  2      OPC=testl_r32_r32   
  je .L_142d80              #  5     0x142d0b  2      OPC=je_label        
  testl %esi, %esi          #  6     0x142d0d  2      OPC=testl_r32_r32   
  je .L_142d80              #  7     0x142d0f  2      OPC=je_label        
  subl $0x1, %esi           #  8     0x142d11  3      OPC=subl_r32_imm8   
  nop                       #  9     0x142d14  1      OPC=nop             
  movq %rdi, %rax           #  10    0x142d15  3      OPC=movq_r64_r64    
  jmpq .L_142d40            #  11    0x142d18  2      OPC=jmpq_label      
  nop                       #  12    0x142d1a  1      OPC=nop             
  nop                       #  13    0x142d1b  1      OPC=nop             
  nop                       #  14    0x142d1c  1      OPC=nop             
  nop                       #  15    0x142d1d  1      OPC=nop             
  nop                       #  16    0x142d1e  1      OPC=nop             
  nop                       #  17    0x142d1f  1      OPC=nop             
  nop                       #  18    0x142d20  1      OPC=nop             
.L_142d20:                  #        0x142d21  0      OPC=<label>         
  testl %esi, %esi          #  19    0x142d21  2      OPC=testl_r32_r32   
  je .L_142d60              #  20    0x142d23  2      OPC=je_label        
  subl $0x1, %esi           #  21    0x142d25  3      OPC=subl_r32_imm8   
  nop                       #  22    0x142d28  1      OPC=nop             
  nop                       #  23    0x142d29  1      OPC=nop             
  nop                       #  24    0x142d2a  1      OPC=nop             
  nop                       #  25    0x142d2b  1      OPC=nop             
  nop                       #  26    0x142d2c  1      OPC=nop             
  nop                       #  27    0x142d2d  1      OPC=nop             
  nop                       #  28    0x142d2e  1      OPC=nop             
  nop                       #  29    0x142d2f  1      OPC=nop             
  nop                       #  30    0x142d30  1      OPC=nop             
  nop                       #  31    0x142d31  1      OPC=nop             
  nop                       #  32    0x142d32  1      OPC=nop             
  nop                       #  33    0x142d33  1      OPC=nop             
  nop                       #  34    0x142d34  1      OPC=nop             
  nop                       #  35    0x142d35  1      OPC=nop             
  nop                       #  36    0x142d36  1      OPC=nop             
.L_142d40:                  #        0x142d37  0      OPC=<label>         
  addl $0x4, %eax           #  37    0x142d37  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  38    0x142d3a  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  39    0x142d3e  2      OPC=testl_r32_r32   
  jne .L_142d20             #  40    0x142d40  2      OPC=jne_label       
  nop                       #  41    0x142d42  1      OPC=nop             
  nop                       #  42    0x142d43  1      OPC=nop             
  nop                       #  43    0x142d44  1      OPC=nop             
  nop                       #  44    0x142d45  1      OPC=nop             
  nop                       #  45    0x142d46  1      OPC=nop             
.L_142d60:                  #        0x142d47  0      OPC=<label>         
  subl %edi, %eax           #  46    0x142d47  2      OPC=subl_r32_r32    
  sarl $0x2, %eax           #  47    0x142d49  3      OPC=sarl_r32_imm8   
  retq                      #  48    0x142d4c  1      OPC=retq            
  nop                       #  49    0x142d4d  1      OPC=nop             
  nop                       #  50    0x142d4e  1      OPC=nop             
  nop                       #  51    0x142d4f  1      OPC=nop             
  nop                       #  52    0x142d50  1      OPC=nop             
  nop                       #  53    0x142d51  1      OPC=nop             
  nop                       #  54    0x142d52  1      OPC=nop             
.L_142d80:                  #        0x142d53  0      OPC=<label>         
  xorl %eax, %eax           #  55    0x142d53  2      OPC=xorl_r32_r32    
  retq                      #  56    0x142d55  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
