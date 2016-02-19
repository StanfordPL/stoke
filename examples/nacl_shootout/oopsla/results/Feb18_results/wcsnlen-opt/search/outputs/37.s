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
  nop                       #  10    0x142d0d  1      OPC=nop             
  nop                       #  11    0x142d0e  1      OPC=nop             
  xorl %eax, %eax           #  12    0x142d0f  2      OPC=xorl_r32_r32    
  nop                       #  13    0x142d11  1      OPC=nop             
  nop                       #  14    0x142d12  1      OPC=nop             
  nop                       #  15    0x142d13  1      OPC=nop             
  testl %ecx, %ecx          #  16    0x142d14  2      OPC=testl_r32_r32   
  je .L_142d80              #  17    0x142d16  2      OPC=je_label        
  testl %esi, %esi          #  18    0x142d18  2      OPC=testl_r32_r32   
  je .L_142d80              #  19    0x142d1a  2      OPC=je_label        
  nop                       #  20    0x142d1c  1      OPC=nop             
  movq %rdi, %rax           #  21    0x142d1d  3      OPC=movq_r64_r64    
  subw $0x1, %si            #  22    0x142d20  4      OPC=subw_r16_imm8   
  jmpq .L_142d40            #  23    0x142d24  2      OPC=jmpq_label      
.L_142d20:                  #        0x142d26  0      OPC=<label>         
  testl %esi, %esi          #  24    0x142d26  2      OPC=testl_r32_r32   
  je .L_142d60              #  25    0x142d28  2      OPC=je_label        
  subl $0x1, %esi           #  26    0x142d2a  3      OPC=subl_r32_imm8   
  nop                       #  27    0x142d2d  1      OPC=nop             
  nop                       #  28    0x142d2e  1      OPC=nop             
  nop                       #  29    0x142d2f  1      OPC=nop             
  nop                       #  30    0x142d30  1      OPC=nop             
.L_142d40:                  #        0x142d31  0      OPC=<label>         
  addl $0x4, %eax           #  31    0x142d31  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  32    0x142d34  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  33    0x142d38  2      OPC=testl_r32_r32   
  jne .L_142d20             #  34    0x142d3a  2      OPC=jne_label       
  nop                       #  35    0x142d3c  1      OPC=nop             
  nop                       #  36    0x142d3d  1      OPC=nop             
  nop                       #  37    0x142d3e  1      OPC=nop             
  nop                       #  38    0x142d3f  1      OPC=nop             
  salb $0xe0, %al           #  39    0x142d40  3      OPC=salb_r8_imm8    
  nop                       #  40    0x142d43  1      OPC=nop             
.L_142d60:                  #        0x142d44  0      OPC=<label>         
  nop                       #  41    0x142d44  1      OPC=nop             
  subl %edi, %eax           #  42    0x142d45  2      OPC=subl_r32_r32_1  
  sarq $0x2, %rax           #  43    0x142d47  4      OPC=sarq_r64_imm8   
  nop                       #  44    0x142d4b  1      OPC=nop             
  nop                       #  45    0x142d4c  1      OPC=nop             
  retq                      #  46    0x142d4d  1      OPC=retq            
  nop                       #  47    0x142d4e  1      OPC=nop             
.L_142d80:                  #        0x142d4f  0      OPC=<label>         
  nop                       #  48    0x142d4f  1      OPC=nop             
  nop                       #  49    0x142d50  1      OPC=nop             
  nop                       #  50    0x142d51  1      OPC=nop             
  nop                       #  51    0x142d52  1      OPC=nop             
  nop                       #  52    0x142d53  1      OPC=nop             
  nop                       #  53    0x142d54  1      OPC=nop             
  nopl %eax                 #  54    0x142d55  3      OPC=nopl_r32        
  nop                       #  55    0x142d58  1      OPC=nop             
  nop                       #  56    0x142d59  1      OPC=nop             
  nop                       #  57    0x142d5a  1      OPC=nop             
  retq                      #  58    0x142d5b  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
