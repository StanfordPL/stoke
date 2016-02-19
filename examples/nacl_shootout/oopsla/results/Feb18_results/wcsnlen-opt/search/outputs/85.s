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
  testl %ecx, %ecx          #  4     0x142d07  2      OPC=testl_r32_r32   
  je .L_142d80              #  5     0x142d09  2      OPC=je_label        
  nop                       #  6     0x142d0b  1      OPC=nop             
  testl %esi, %esi          #  7     0x142d0c  2      OPC=testl_r32_r32   
  je .L_142d80              #  8     0x142d0e  2      OPC=je_label        
  subl $0x1, %esi           #  9     0x142d10  3      OPC=subl_r32_imm8   
  nop                       #  10    0x142d13  1      OPC=nop             
  movq %rdi, %rax           #  11    0x142d14  3      OPC=movq_r64_r64    
  jmpq .L_142d40            #  12    0x142d17  2      OPC=jmpq_label      
  nop                       #  13    0x142d19  1      OPC=nop             
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
  nop                       #  33    0x142d31  1      OPC=nop             
  nop                       #  34    0x142d32  1      OPC=nop             
  nop                       #  35    0x142d33  1      OPC=nop             
  nop                       #  36    0x142d34  1      OPC=nop             
  nop                       #  37    0x142d35  1      OPC=nop             
  nop                       #  38    0x142d36  1      OPC=nop             
  nop                       #  39    0x142d37  1      OPC=nop             
  nop                       #  40    0x142d38  1      OPC=nop             
.L_142d40:                  #        0x142d39  0      OPC=<label>         
  addl $0x4, %eax           #  41    0x142d39  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  42    0x142d3c  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  43    0x142d40  2      OPC=testl_r32_r32   
  jne .L_142d20             #  44    0x142d42  2      OPC=jne_label       
  nop                       #  45    0x142d44  1      OPC=nop             
  nop                       #  46    0x142d45  1      OPC=nop             
  nop                       #  47    0x142d46  1      OPC=nop             
.L_142d60:                  #        0x142d47  0      OPC=<label>         
  nop                       #  48    0x142d47  1      OPC=nop             
  nop                       #  49    0x142d48  1      OPC=nop             
  nop                       #  50    0x142d49  1      OPC=nop             
  subl %edi, %eax           #  51    0x142d4a  2      OPC=subl_r32_r32    
  sarl $0x2, %eax           #  52    0x142d4c  3      OPC=sarl_r32_imm8   
  retq                      #  53    0x142d4f  1      OPC=retq            
  nop                       #  54    0x142d50  1      OPC=nop             
  nop                       #  55    0x142d51  1      OPC=nop             
  nop                       #  56    0x142d52  1      OPC=nop             
  nop                       #  57    0x142d53  1      OPC=nop             
  nop                       #  58    0x142d54  1      OPC=nop             
.L_142d80:                  #        0x142d55  0      OPC=<label>         
  xorl %eax, %eax           #  59    0x142d55  2      OPC=xorl_r32_r32    
  salb $0x6, %ah            #  60    0x142d57  3      OPC=salb_rh_imm8    
  nop                       #  61    0x142d5a  1      OPC=nop             
  retq                      #  62    0x142d5b  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
