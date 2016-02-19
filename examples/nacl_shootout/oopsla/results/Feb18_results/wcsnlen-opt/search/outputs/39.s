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
  xorl %eax, %eax           #  5     0x142d04  2      OPC=xorl_r32_r32    
  nop                       #  6     0x142d06  1      OPC=nop             
  nop                       #  7     0x142d07  1      OPC=nop             
  andl %edi, %edi           #  8     0x142d08  2      OPC=andl_r32_r32_1  
  movl (%r15,%rdi,1), %ecx  #  9     0x142d0a  4      OPC=movl_r32_m32    
  nop                       #  10    0x142d0e  1      OPC=nop             
  negl %ecx                 #  11    0x142d0f  2      OPC=negl_r32        
  nop                       #  12    0x142d11  1      OPC=nop             
  nop                       #  13    0x142d12  1      OPC=nop             
  nop                       #  14    0x142d13  1      OPC=nop             
  nop                       #  15    0x142d14  1      OPC=nop             
  je .L_142d80              #  16    0x142d15  2      OPC=je_label        
  nop                       #  17    0x142d17  1      OPC=nop             
  xorw %ax, %si             #  18    0x142d18  3      OPC=xorw_r16_r16_1  
  nop                       #  19    0x142d1b  1      OPC=nop             
  je .L_142d80              #  20    0x142d1c  2      OPC=je_label        
  nop                       #  21    0x142d1e  1      OPC=nop             
  nop                       #  22    0x142d1f  1      OPC=nop             
  addl %edi, %eax           #  23    0x142d20  2      OPC=addl_r32_r32    
  subq $0x1, %rsi           #  24    0x142d22  4      OPC=subq_r64_imm8   
  jmpq .L_142d40            #  25    0x142d26  2      OPC=jmpq_label      
.L_142d20:                  #        0x142d28  0      OPC=<label>         
  testl %esi, %esi          #  26    0x142d28  2      OPC=testl_r32_r32   
  je .L_142d60              #  27    0x142d2a  2      OPC=je_label        
  subl $0x1, %esi           #  28    0x142d2c  3      OPC=subl_r32_imm8   
.L_142d40:                  #        0x142d2f  0      OPC=<label>         
  addl $0x4, %eax           #  29    0x142d2f  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  30    0x142d32  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  31    0x142d36  2      OPC=testl_r32_r32   
  jne .L_142d20             #  32    0x142d38  2      OPC=jne_label       
  nop                       #  33    0x142d3a  1      OPC=nop             
  nop                       #  34    0x142d3b  1      OPC=nop             
  nop                       #  35    0x142d3c  1      OPC=nop             
  nop                       #  36    0x142d3d  1      OPC=nop             
  nop                       #  37    0x142d3e  1      OPC=nop             
  nop                       #  38    0x142d3f  1      OPC=nop             
  nop                       #  39    0x142d40  1      OPC=nop             
  nop                       #  40    0x142d41  1      OPC=nop             
  nop                       #  41    0x142d42  1      OPC=nop             
  nop                       #  42    0x142d43  1      OPC=nop             
  nop                       #  43    0x142d44  1      OPC=nop             
  nop                       #  44    0x142d45  1      OPC=nop             
  nop                       #  45    0x142d46  1      OPC=nop             
.L_142d60:                  #        0x142d47  0      OPC=<label>         
  nop                       #  46    0x142d47  1      OPC=nop             
  nop                       #  47    0x142d48  1      OPC=nop             
  nop                       #  48    0x142d49  1      OPC=nop             
  subl %edi, %eax           #  49    0x142d4a  2      OPC=subl_r32_r32_1  
  sarq $0x2, %rax           #  50    0x142d4c  4      OPC=sarq_r64_imm8   
  nop                       #  51    0x142d50  1      OPC=nop             
  retq                      #  52    0x142d51  1      OPC=retq            
  nop                       #  53    0x142d52  1      OPC=nop             
  nop                       #  54    0x142d53  1      OPC=nop             
.L_142d80:                  #        0x142d54  0      OPC=<label>         
  nop                       #  55    0x142d54  1      OPC=nop             
  nop                       #  56    0x142d55  1      OPC=nop             
  nop                       #  57    0x142d56  1      OPC=nop             
  nop                       #  58    0x142d57  1      OPC=nop             
  nop                       #  59    0x142d58  1      OPC=nop             
  nop                       #  60    0x142d59  1      OPC=nop             
  nop                       #  61    0x142d5a  1      OPC=nop             
  retq                      #  62    0x142d5b  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
