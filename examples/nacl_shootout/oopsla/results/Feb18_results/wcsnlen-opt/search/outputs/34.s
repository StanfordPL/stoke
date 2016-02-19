  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcsnlen:                   #        0x142d00  0      OPC=<label>        
  nop                       #  1     0x142d00  1      OPC=nop            
  movl %edi, %edi           #  2     0x142d01  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %ecx  #  3     0x142d03  4      OPC=movl_r32_m32   
  testl %ecx, %ecx          #  4     0x142d07  2      OPC=testl_r32_r32  
  je .L_142d80              #  5     0x142d09  2      OPC=je_label       
  testl %esi, %esi          #  6     0x142d0b  2      OPC=testl_r32_r32  
  je .L_142d80              #  7     0x142d0d  2      OPC=je_label       
  nop                       #  8     0x142d0f  1      OPC=nop            
  nop                       #  9     0x142d10  1      OPC=nop            
  nop                       #  10    0x142d11  1      OPC=nop            
  subl $0x1, %esi           #  11    0x142d12  3      OPC=subl_r32_imm8  
  movq %rdi, %rax           #  12    0x142d15  3      OPC=movq_r64_r64   
  jmpq .L_142d40            #  13    0x142d18  2      OPC=jmpq_label     
  nop                       #  14    0x142d1a  1      OPC=nop            
  nop                       #  15    0x142d1b  1      OPC=nop            
  nop                       #  16    0x142d1c  1      OPC=nop            
  nop                       #  17    0x142d1d  1      OPC=nop            
  nop                       #  18    0x142d1e  1      OPC=nop            
  nop                       #  19    0x142d1f  1      OPC=nop            
  nop                       #  20    0x142d20  1      OPC=nop            
  nop                       #  21    0x142d21  1      OPC=nop            
.L_142d20:                  #        0x142d22  0      OPC=<label>        
  testl %esi, %esi          #  22    0x142d22  2      OPC=testl_r32_r32  
  je .L_142d60              #  23    0x142d24  2      OPC=je_label       
  subl $0x1, %esi           #  24    0x142d26  3      OPC=subl_r32_imm8  
  nop                       #  25    0x142d29  1      OPC=nop            
  nop                       #  26    0x142d2a  1      OPC=nop            
  nop                       #  27    0x142d2b  1      OPC=nop            
  nop                       #  28    0x142d2c  1      OPC=nop            
  nop                       #  29    0x142d2d  1      OPC=nop            
  nop                       #  30    0x142d2e  1      OPC=nop            
  nop                       #  31    0x142d2f  1      OPC=nop            
  nop                       #  32    0x142d30  1      OPC=nop            
.L_142d40:                  #        0x142d31  0      OPC=<label>        
  nop                       #  33    0x142d31  1      OPC=nop            
  addl $0x4, %eax           #  34    0x142d32  3      OPC=addl_r32_imm8  
  movl (%r15,%rax,1), %edx  #  35    0x142d35  4      OPC=movl_r32_m32   
  testl %edx, %edx          #  36    0x142d39  2      OPC=testl_r32_r32  
  jne .L_142d20             #  37    0x142d3b  2      OPC=jne_label      
  nop                       #  38    0x142d3d  1      OPC=nop            
  nop                       #  39    0x142d3e  1      OPC=nop            
  nop                       #  40    0x142d3f  1      OPC=nop            
  nop                       #  41    0x142d40  1      OPC=nop            
  nop                       #  42    0x142d41  1      OPC=nop            
  nop                       #  43    0x142d42  1      OPC=nop            
.L_142d60:                  #        0x142d43  0      OPC=<label>        
  subl %edi, %eax           #  44    0x142d43  2      OPC=subl_r32_r32   
  nop                       #  45    0x142d45  1      OPC=nop            
  sarl $0x2, %eax           #  46    0x142d46  3      OPC=sarl_r32_imm8  
  retq                      #  47    0x142d49  1      OPC=retq           
  nop                       #  48    0x142d4a  1      OPC=nop            
  nop                       #  49    0x142d4b  1      OPC=nop            
  nop                       #  50    0x142d4c  1      OPC=nop            
  nop                       #  51    0x142d4d  1      OPC=nop            
  nopl %eax                 #  52    0x142d4e  3      OPC=nopl_r32       
  nop                       #  53    0x142d51  1      OPC=nop            
  nop                       #  54    0x142d52  1      OPC=nop            
  nop                       #  55    0x142d53  1      OPC=nop            
  nop                       #  56    0x142d54  1      OPC=nop            
.L_142d80:                  #        0x142d55  0      OPC=<label>        
  xorl %eax, %eax           #  57    0x142d55  2      OPC=xorl_r32_r32   
  retq                      #  58    0x142d57  1      OPC=retq           
                                                                         
.size wcsnlen, .-wcsnlen
