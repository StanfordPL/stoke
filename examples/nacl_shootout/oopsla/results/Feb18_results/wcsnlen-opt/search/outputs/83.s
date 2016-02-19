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
  testl %ecx, %ecx          #  3     0x142d06  2      OPC=testl_r32_r32   
  je .L_142d80              #  4     0x142d08  2      OPC=je_label        
  testl %esi, %esi          #  5     0x142d0a  2      OPC=testl_r32_r32   
  je .L_142d80              #  6     0x142d0c  2      OPC=je_label        
  subl $0x1, %esi           #  7     0x142d0e  3      OPC=subl_r32_imm8   
  movq %rdi, %rax           #  8     0x142d11  3      OPC=movq_r64_r64    
  jmpq .L_142d40            #  9     0x142d14  2      OPC=jmpq_label      
  nop                       #  10    0x142d16  1      OPC=nop             
  nop                       #  11    0x142d17  1      OPC=nop             
  nop                       #  12    0x142d18  1      OPC=nop             
  nop                       #  13    0x142d19  1      OPC=nop             
  nop                       #  14    0x142d1a  1      OPC=nop             
  nop                       #  15    0x142d1b  1      OPC=nop             
  nop                       #  16    0x142d1c  1      OPC=nop             
  nop                       #  17    0x142d1d  1      OPC=nop             
  nop                       #  18    0x142d1e  1      OPC=nop             
  nop                       #  19    0x142d1f  1      OPC=nop             
  nop                       #  20    0x142d20  1      OPC=nop             
.L_142d20:                  #        0x142d21  0      OPC=<label>         
  testl %esi, %esi          #  21    0x142d21  2      OPC=testl_r32_r32   
  je .L_142d60              #  22    0x142d23  2      OPC=je_label        
  subl $0x1, %esi           #  23    0x142d25  3      OPC=subl_r32_imm8   
  nop                       #  24    0x142d28  1      OPC=nop             
  nop                       #  25    0x142d29  1      OPC=nop             
  nop                       #  26    0x142d2a  1      OPC=nop             
  nop                       #  27    0x142d2b  1      OPC=nop             
  nop                       #  28    0x142d2c  1      OPC=nop             
  nop                       #  29    0x142d2d  1      OPC=nop             
  nop                       #  30    0x142d2e  1      OPC=nop             
  nop                       #  31    0x142d2f  1      OPC=nop             
  nop                       #  32    0x142d30  1      OPC=nop             
  nop                       #  33    0x142d31  1      OPC=nop             
  nop                       #  34    0x142d32  1      OPC=nop             
  nop                       #  35    0x142d33  1      OPC=nop             
  nop                       #  36    0x142d34  1      OPC=nop             
  nop                       #  37    0x142d35  1      OPC=nop             
  nop                       #  38    0x142d36  1      OPC=nop             
  nop                       #  39    0x142d37  1      OPC=nop             
  nop                       #  40    0x142d38  1      OPC=nop             
  nop                       #  41    0x142d39  1      OPC=nop             
  nop                       #  42    0x142d3a  1      OPC=nop             
  nop                       #  43    0x142d3b  1      OPC=nop             
  nop                       #  44    0x142d3c  1      OPC=nop             
.L_142d40:                  #        0x142d3d  0      OPC=<label>         
  addl $0x4, %eax           #  45    0x142d3d  3      OPC=addl_r32_imm8   
  movl %eax, %eax           #  46    0x142d40  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx  #  47    0x142d42  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  48    0x142d46  2      OPC=testl_r32_r32   
  jne .L_142d20             #  49    0x142d48  2      OPC=jne_label       
  nop                       #  50    0x142d4a  1      OPC=nop             
.L_142d60:                  #        0x142d4b  0      OPC=<label>         
  nop                       #  51    0x142d4b  1      OPC=nop             
  subl %edi, %eax           #  52    0x142d4c  2      OPC=subl_r32_r32    
  sarl $0x2, %eax           #  53    0x142d4e  3      OPC=sarl_r32_imm8   
  retq                      #  54    0x142d51  1      OPC=retq            
  nop                       #  55    0x142d52  1      OPC=nop             
  nop                       #  56    0x142d53  1      OPC=nop             
  nop                       #  57    0x142d54  1      OPC=nop             
  nop                       #  58    0x142d55  1      OPC=nop             
  nop                       #  59    0x142d56  1      OPC=nop             
  nop                       #  60    0x142d57  1      OPC=nop             
  nop                       #  61    0x142d58  1      OPC=nop             
  nop                       #  62    0x142d59  1      OPC=nop             
  nop                       #  63    0x142d5a  1      OPC=nop             
  nop                       #  64    0x142d5b  1      OPC=nop             
  nop                       #  65    0x142d5c  1      OPC=nop             
  nop                       #  66    0x142d5d  1      OPC=nop             
  nop                       #  67    0x142d5e  1      OPC=nop             
  nop                       #  68    0x142d5f  1      OPC=nop             
  nop                       #  69    0x142d60  1      OPC=nop             
  nop                       #  70    0x142d61  1      OPC=nop             
  nop                       #  71    0x142d62  1      OPC=nop             
.L_142d80:                  #        0x142d63  0      OPC=<label>         
  xorl %eax, %eax           #  72    0x142d63  2      OPC=xorl_r32_r32    
  nop                       #  73    0x142d65  1      OPC=nop             
  retq                      #  74    0x142d66  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
