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
  nop                       #  6     0x142d05  1      OPC=nop             
  nop                       #  7     0x142d06  1      OPC=nop             
  orl %edi, %edi            #  8     0x142d07  2      OPC=orl_r32_r32_1   
  movl (%r15,%rdi,1), %ecx  #  9     0x142d09  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  10    0x142d0d  2      OPC=testl_r32_r32   
  je .L_142d80              #  11    0x142d0f  2      OPC=je_label        
  nop                       #  12    0x142d11  1      OPC=nop             
  testl %esi, %esi          #  13    0x142d12  2      OPC=testl_r32_r32   
  nop                       #  14    0x142d14  1      OPC=nop             
  nop                       #  15    0x142d15  1      OPC=nop             
  nop                       #  16    0x142d16  1      OPC=nop             
  nop                       #  17    0x142d17  1      OPC=nop             
  nop                       #  18    0x142d18  1      OPC=nop             
  nop                       #  19    0x142d19  1      OPC=nop             
  nop                       #  20    0x142d1a  1      OPC=nop             
  nop                       #  21    0x142d1b  1      OPC=nop             
  je .L_142d80              #  22    0x142d1c  2      OPC=je_label        
  nop                       #  23    0x142d1e  1      OPC=nop             
  nop                       #  24    0x142d1f  1      OPC=nop             
  nop                       #  25    0x142d20  1      OPC=nop             
  nop                       #  26    0x142d21  1      OPC=nop             
  nop                       #  27    0x142d22  1      OPC=nop             
  nop                       #  28    0x142d23  1      OPC=nop             
  nop                       #  29    0x142d24  1      OPC=nop             
  nop                       #  30    0x142d25  1      OPC=nop             
  nop                       #  31    0x142d26  1      OPC=nop             
  subl $0x1, %esi           #  32    0x142d27  3      OPC=subl_r32_imm8   
  nop                       #  33    0x142d2a  1      OPC=nop             
  nop                       #  34    0x142d2b  1      OPC=nop             
  nop                       #  35    0x142d2c  1      OPC=nop             
  nop                       #  36    0x142d2d  1      OPC=nop             
  nop                       #  37    0x142d2e  1      OPC=nop             
  nop                       #  38    0x142d2f  1      OPC=nop             
  nop                       #  39    0x142d30  1      OPC=nop             
  movq %rdi, %rax           #  40    0x142d31  3      OPC=movq_r64_r64    
  jmpq .L_142d40            #  41    0x142d34  2      OPC=jmpq_label      
  nop                       #  42    0x142d36  1      OPC=nop             
  nop                       #  43    0x142d37  1      OPC=nop             
.L_142d20:                  #        0x142d38  0      OPC=<label>         
  testl %esi, %esi          #  44    0x142d38  2      OPC=testl_r32_r32   
  je .L_142d60              #  45    0x142d3a  2      OPC=je_label        
  nop                       #  46    0x142d3c  1      OPC=nop             
  nop                       #  47    0x142d3d  1      OPC=nop             
  nop                       #  48    0x142d3e  1      OPC=nop             
  nop                       #  49    0x142d3f  1      OPC=nop             
  subl $0x1, %esi           #  50    0x142d40  3      OPC=subl_r32_imm8   
.L_142d40:                  #        0x142d43  0      OPC=<label>         
  addl $0x4, %eax           #  51    0x142d43  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  52    0x142d46  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  53    0x142d4a  2      OPC=testl_r32_r32   
  jne .L_142d20             #  54    0x142d4c  2      OPC=jne_label       
  nop                       #  55    0x142d4e  1      OPC=nop             
.L_142d60:                  #        0x142d4f  0      OPC=<label>         
  nop                       #  56    0x142d4f  1      OPC=nop             
  nop                       #  57    0x142d50  1      OPC=nop             
  nop                       #  58    0x142d51  1      OPC=nop             
  subl %edi, %eax           #  59    0x142d52  2      OPC=subl_r32_r32_1  
  nop                       #  60    0x142d54  1      OPC=nop             
  nop                       #  61    0x142d55  1      OPC=nop             
  nopl %eax                 #  62    0x142d56  3      OPC=nopl_r32        
  nop                       #  63    0x142d59  1      OPC=nop             
  nop                       #  64    0x142d5a  1      OPC=nop             
  nop                       #  65    0x142d5b  1      OPC=nop             
  sarw $0x2, %ax            #  66    0x142d5c  4      OPC=sarw_r16_imm8   
  retq                      #  67    0x142d60  1      OPC=retq            
.L_142d80:                  #        0x142d61  0      OPC=<label>         
  xorl %eax, %eax           #  68    0x142d61  2      OPC=xorl_r32_r32    
  nop                       #  69    0x142d63  1      OPC=nop             
  nop                       #  70    0x142d64  1      OPC=nop             
  nop                       #  71    0x142d65  1      OPC=nop             
  nop                       #  72    0x142d66  1      OPC=nop             
  retq                      #  73    0x142d67  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
