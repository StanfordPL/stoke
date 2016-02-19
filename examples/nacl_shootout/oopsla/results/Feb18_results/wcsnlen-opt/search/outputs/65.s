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
  testl %esi, %esi          #  13    0x142d12  2      OPC=testl_r32_r32   
  nop                       #  14    0x142d14  1      OPC=nop             
  nop                       #  15    0x142d15  1      OPC=nop             
  nop                       #  16    0x142d16  1      OPC=nop             
  nop                       #  17    0x142d17  1      OPC=nop             
  nop                       #  18    0x142d18  1      OPC=nop             
  nop                       #  19    0x142d19  1      OPC=nop             
  je .L_142d80              #  20    0x142d1a  2      OPC=je_label        
  subl $0x1, %esi           #  21    0x142d1c  3      OPC=subl_r32_imm8   
  nop                       #  22    0x142d1f  1      OPC=nop             
  nop                       #  23    0x142d20  1      OPC=nop             
  nop                       #  24    0x142d21  1      OPC=nop             
  nop                       #  25    0x142d22  1      OPC=nop             
  nop                       #  26    0x142d23  1      OPC=nop             
  nop                       #  27    0x142d24  1      OPC=nop             
  movq %rdi, %rax           #  28    0x142d25  3      OPC=movq_r64_r64    
  nop                       #  29    0x142d28  1      OPC=nop             
  nop                       #  30    0x142d29  1      OPC=nop             
  nop                       #  31    0x142d2a  1      OPC=nop             
  nop                       #  32    0x142d2b  1      OPC=nop             
  jmpq .L_142d40            #  33    0x142d2c  2      OPC=jmpq_label      
  nop                       #  34    0x142d2e  1      OPC=nop             
  nop                       #  35    0x142d2f  1      OPC=nop             
.L_142d20:                  #        0x142d30  0      OPC=<label>         
  testl %esi, %esi          #  36    0x142d30  2      OPC=testl_r32_r32   
  je .L_142d60              #  37    0x142d32  2      OPC=je_label        
  nop                       #  38    0x142d34  1      OPC=nop             
  nop                       #  39    0x142d35  1      OPC=nop             
  subl $0x1, %esi           #  40    0x142d36  3      OPC=subl_r32_imm8   
.L_142d40:                  #        0x142d39  0      OPC=<label>         
  addl $0x4, %eax           #  41    0x142d39  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  42    0x142d3c  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  43    0x142d40  2      OPC=testl_r32_r32   
  jne .L_142d20             #  44    0x142d42  2      OPC=jne_label       
.L_142d60:                  #        0x142d44  0      OPC=<label>         
  subl %edi, %eax           #  45    0x142d44  2      OPC=subl_r32_r32_1  
  nop                       #  46    0x142d46  1      OPC=nop             
  nop                       #  47    0x142d47  1      OPC=nop             
  nop                       #  48    0x142d48  1      OPC=nop             
  nop                       #  49    0x142d49  1      OPC=nop             
  nop                       #  50    0x142d4a  1      OPC=nop             
  nop                       #  51    0x142d4b  1      OPC=nop             
  nop                       #  52    0x142d4c  1      OPC=nop             
  nop                       #  53    0x142d4d  1      OPC=nop             
  sarw $0x2, %ax            #  54    0x142d4e  4      OPC=sarw_r16_imm8   
  nop                       #  55    0x142d52  1      OPC=nop             
  nop                       #  56    0x142d53  1      OPC=nop             
  retq                      #  57    0x142d54  1      OPC=retq            
.L_142d80:                  #        0x142d55  0      OPC=<label>         
  nop                       #  58    0x142d55  1      OPC=nop             
  nop                       #  59    0x142d56  1      OPC=nop             
  nop                       #  60    0x142d57  1      OPC=nop             
  nop                       #  61    0x142d58  1      OPC=nop             
  nop                       #  62    0x142d59  1      OPC=nop             
  xorl %eax, %eax           #  63    0x142d5a  2      OPC=xorl_r32_r32    
  nop                       #  64    0x142d5c  1      OPC=nop             
  nop                       #  65    0x142d5d  1      OPC=nop             
  nop                       #  66    0x142d5e  1      OPC=nop             
  retq                      #  67    0x142d5f  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
