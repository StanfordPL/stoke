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
  orl %edi, %edi            #  4     0x142d03  2      OPC=orl_r32_r32_1  
  movl (%r15,%rdi,1), %ecx  #  5     0x142d05  4      OPC=movl_r32_m32   
  nop                       #  6     0x142d09  1      OPC=nop            
  nop                       #  7     0x142d0a  1      OPC=nop            
  nop                       #  8     0x142d0b  1      OPC=nop            
  testl %ecx, %ecx          #  9     0x142d0c  2      OPC=testl_r32_r32  
  je .L_142d80              #  10    0x142d0e  2      OPC=je_label       
  nop                       #  11    0x142d10  1      OPC=nop            
  nop                       #  12    0x142d11  1      OPC=nop            
  nop                       #  13    0x142d12  1      OPC=nop            
  nop                       #  14    0x142d13  1      OPC=nop            
  testl %esi, %esi          #  15    0x142d14  2      OPC=testl_r32_r32  
  je .L_142d80              #  16    0x142d16  2      OPC=je_label       
  subl $0x1, %esi           #  17    0x142d18  3      OPC=subl_r32_imm8  
  movq %rdi, %rax           #  18    0x142d1b  3      OPC=movq_r64_r64   
  jmpq .L_142d40            #  19    0x142d1e  2      OPC=jmpq_label     
  nop                       #  20    0x142d20  1      OPC=nop            
  nop                       #  21    0x142d21  1      OPC=nop            
  nop                       #  22    0x142d22  1      OPC=nop            
  nop                       #  23    0x142d23  1      OPC=nop            
  nop                       #  24    0x142d24  1      OPC=nop            
  nop                       #  25    0x142d25  1      OPC=nop            
.L_142d20:                  #        0x142d26  0      OPC=<label>        
  testl %esi, %esi          #  26    0x142d26  2      OPC=testl_r32_r32  
  je .L_142d60              #  27    0x142d28  2      OPC=je_label       
  nop                       #  28    0x142d2a  1      OPC=nop            
  nop                       #  29    0x142d2b  1      OPC=nop            
  nop                       #  30    0x142d2c  1      OPC=nop            
  nop                       #  31    0x142d2d  1      OPC=nop            
  subl $0x1, %esi           #  32    0x142d2e  3      OPC=subl_r32_imm8  
.L_142d40:                  #        0x142d31  0      OPC=<label>        
  addl $0x4, %eax           #  33    0x142d31  3      OPC=addl_r32_imm8  
  movl (%r15,%rax,1), %edx  #  34    0x142d34  4      OPC=movl_r32_m32   
  testl %edx, %edx          #  35    0x142d38  2      OPC=testl_r32_r32  
  jne .L_142d20             #  36    0x142d3a  2      OPC=jne_label      
  nop                       #  37    0x142d3c  1      OPC=nop            
  nop                       #  38    0x142d3d  1      OPC=nop            
  nop                       #  39    0x142d3e  1      OPC=nop            
  nop                       #  40    0x142d3f  1      OPC=nop            
  nop                       #  41    0x142d40  1      OPC=nop            
  nop                       #  42    0x142d41  1      OPC=nop            
  nop                       #  43    0x142d42  1      OPC=nop            
  nop                       #  44    0x142d43  1      OPC=nop            
  nop                       #  45    0x142d44  1      OPC=nop            
  nop                       #  46    0x142d45  1      OPC=nop            
  nop                       #  47    0x142d46  1      OPC=nop            
  nop                       #  48    0x142d47  1      OPC=nop            
  nop                       #  49    0x142d48  1      OPC=nop            
  nop                       #  50    0x142d49  1      OPC=nop            
.L_142d60:                  #        0x142d4a  0      OPC=<label>        
  subl %edi, %eax           #  51    0x142d4a  2      OPC=subl_r32_r32   
  nop                       #  52    0x142d4c  1      OPC=nop            
  nop                       #  53    0x142d4d  1      OPC=nop            
  nop                       #  54    0x142d4e  1      OPC=nop            
  sarl $0x2, %eax           #  55    0x142d4f  3      OPC=sarl_r32_imm8  
  retq                      #  56    0x142d52  1      OPC=retq           
  nop                       #  57    0x142d53  1      OPC=nop            
  nop                       #  58    0x142d54  1      OPC=nop            
  nop                       #  59    0x142d55  1      OPC=nop            
  nop                       #  60    0x142d56  1      OPC=nop            
  nop                       #  61    0x142d57  1      OPC=nop            
  nop                       #  62    0x142d58  1      OPC=nop            
  nop                       #  63    0x142d59  1      OPC=nop            
  nop                       #  64    0x142d5a  1      OPC=nop            
  nop                       #  65    0x142d5b  1      OPC=nop            
.L_142d80:                  #        0x142d5c  0      OPC=<label>        
  nop                       #  66    0x142d5c  1      OPC=nop            
  nop                       #  67    0x142d5d  1      OPC=nop            
  nop                       #  68    0x142d5e  1      OPC=nop            
  nop                       #  69    0x142d5f  1      OPC=nop            
  nop                       #  70    0x142d60  1      OPC=nop            
  nop                       #  71    0x142d61  1      OPC=nop            
  nop                       #  72    0x142d62  1      OPC=nop            
  nop                       #  73    0x142d63  1      OPC=nop            
  nop                       #  74    0x142d64  1      OPC=nop            
  xorl %eax, %eax           #  75    0x142d65  2      OPC=xorl_r32_r32   
  retq                      #  76    0x142d67  1      OPC=retq           
                                                                         
.size wcsnlen, .-wcsnlen
