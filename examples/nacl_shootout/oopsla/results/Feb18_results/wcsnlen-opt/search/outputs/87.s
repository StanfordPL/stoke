  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsnlen:                   #        0x142d00  0      OPC=<label>         
  andl %edi, %edi           #  1     0x142d00  2      OPC=andl_r32_r32_1  
  movl (%r15,%rdi,1), %ecx  #  2     0x142d02  4      OPC=movl_r32_m32    
  nop                       #  3     0x142d06  1      OPC=nop             
  xorl %eax, %eax           #  4     0x142d07  2      OPC=xorl_r32_r32    
  nop                       #  5     0x142d09  1      OPC=nop             
  nop                       #  6     0x142d0a  1      OPC=nop             
  nop                       #  7     0x142d0b  1      OPC=nop             
  testl %ecx, %ecx          #  8     0x142d0c  2      OPC=testl_r32_r32   
  je .L_142d80              #  9     0x142d0e  2      OPC=je_label        
  nop                       #  10    0x142d10  1      OPC=nop             
  nop                       #  11    0x142d11  1      OPC=nop             
  nop                       #  12    0x142d12  1      OPC=nop             
  nop                       #  13    0x142d13  1      OPC=nop             
  nop                       #  14    0x142d14  1      OPC=nop             
  testl %esi, %esi          #  15    0x142d15  2      OPC=testl_r32_r32   
  je .L_142d80              #  16    0x142d17  2      OPC=je_label        
  movl %edi, %eax           #  17    0x142d19  2      OPC=movl_r32_r32    
  subl $0x1, %esi           #  18    0x142d1b  3      OPC=subl_r32_imm8   
  jmpq .L_142d40            #  19    0x142d1e  2      OPC=jmpq_label      
  nop                       #  20    0x142d20  1      OPC=nop             
  nop                       #  21    0x142d21  1      OPC=nop             
  nop                       #  22    0x142d22  1      OPC=nop             
  nop                       #  23    0x142d23  1      OPC=nop             
  nop                       #  24    0x142d24  1      OPC=nop             
  nop                       #  25    0x142d25  1      OPC=nop             
  nop                       #  26    0x142d26  1      OPC=nop             
  nop                       #  27    0x142d27  1      OPC=nop             
  nop                       #  28    0x142d28  1      OPC=nop             
  nop                       #  29    0x142d29  1      OPC=nop             
  nop                       #  30    0x142d2a  1      OPC=nop             
.L_142d20:                  #        0x142d2b  0      OPC=<label>         
  testl %esi, %esi          #  31    0x142d2b  2      OPC=testl_r32_r32   
  je .L_142d60              #  32    0x142d2d  2      OPC=je_label        
  subq $0x1, %rsi           #  33    0x142d2f  4      OPC=subq_r64_imm8   
.L_142d40:                  #        0x142d33  0      OPC=<label>         
  addl $0x4, %eax           #  34    0x142d33  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  35    0x142d36  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  36    0x142d3a  2      OPC=testl_r32_r32   
  jne .L_142d20             #  37    0x142d3c  2      OPC=jne_label       
.L_142d60:                  #        0x142d3e  0      OPC=<label>         
  nop                       #  38    0x142d3e  1      OPC=nop             
  nop                       #  39    0x142d3f  1      OPC=nop             
  subl %edi, %eax           #  40    0x142d40  2      OPC=subl_r32_r32    
  nop                       #  41    0x142d42  1      OPC=nop             
  nop                       #  42    0x142d43  1      OPC=nop             
  nop                       #  43    0x142d44  1      OPC=nop             
  nop                       #  44    0x142d45  1      OPC=nop             
  nop                       #  45    0x142d46  1      OPC=nop             
  nop                       #  46    0x142d47  1      OPC=nop             
  nop                       #  47    0x142d48  1      OPC=nop             
  nop                       #  48    0x142d49  1      OPC=nop             
  nop                       #  49    0x142d4a  1      OPC=nop             
  sarl $0x2, %eax           #  50    0x142d4b  3      OPC=sarl_r32_imm8   
  nop                       #  51    0x142d4e  1      OPC=nop             
.L_142d80:                  #        0x142d4f  0      OPC=<label>         
  nop                       #  52    0x142d4f  1      OPC=nop             
  nop                       #  53    0x142d50  1      OPC=nop             
  nop                       #  54    0x142d51  1      OPC=nop             
  retq                      #  55    0x142d52  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
