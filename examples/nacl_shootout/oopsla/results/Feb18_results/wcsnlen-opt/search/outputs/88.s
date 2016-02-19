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
  nop                       #  4     0x142d07  1      OPC=nop             
  xorl %eax, %eax           #  5     0x142d08  2      OPC=xorl_r32_r32    
  nop                       #  6     0x142d0a  1      OPC=nop             
  nop                       #  7     0x142d0b  1      OPC=nop             
  nop                       #  8     0x142d0c  1      OPC=nop             
  nop                       #  9     0x142d0d  1      OPC=nop             
  nop                       #  10    0x142d0e  1      OPC=nop             
  nop                       #  11    0x142d0f  1      OPC=nop             
  testl %ecx, %ecx          #  12    0x142d10  2      OPC=testl_r32_r32   
  je .L_142d80              #  13    0x142d12  2      OPC=je_label        
  nop                       #  14    0x142d14  1      OPC=nop             
  nop                       #  15    0x142d15  1      OPC=nop             
  testl %esi, %esi          #  16    0x142d16  2      OPC=testl_r32_r32   
  je .L_142d80              #  17    0x142d18  2      OPC=je_label        
  movl %edi, %eax           #  18    0x142d1a  2      OPC=movl_r32_r32    
  subw $0x1, %si            #  19    0x142d1c  4      OPC=subw_r16_imm8   
  jmpq .L_142d40            #  20    0x142d20  2      OPC=jmpq_label      
  nop                       #  21    0x142d22  1      OPC=nop             
  nop                       #  22    0x142d23  1      OPC=nop             
  nop                       #  23    0x142d24  1      OPC=nop             
  nop                       #  24    0x142d25  1      OPC=nop             
  nop                       #  25    0x142d26  1      OPC=nop             
  nop                       #  26    0x142d27  1      OPC=nop             
  nop                       #  27    0x142d28  1      OPC=nop             
.L_142d20:                  #        0x142d29  0      OPC=<label>         
  testl %esi, %esi          #  28    0x142d29  2      OPC=testl_r32_r32   
  je .L_142d60              #  29    0x142d2b  2      OPC=je_label        
  subq $0x1, %rsi           #  30    0x142d2d  4      OPC=subq_r64_imm8   
.L_142d40:                  #        0x142d31  0      OPC=<label>         
  addl $0x4, %eax           #  31    0x142d31  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  32    0x142d34  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  33    0x142d38  2      OPC=testl_r32_r32   
  jne .L_142d20             #  34    0x142d3a  2      OPC=jne_label       
.L_142d60:                  #        0x142d3c  0      OPC=<label>         
  subl %edi, %eax           #  35    0x142d3c  2      OPC=subl_r32_r32    
  nop                       #  36    0x142d3e  1      OPC=nop             
  nop                       #  37    0x142d3f  1      OPC=nop             
  nop                       #  38    0x142d40  1      OPC=nop             
  nop                       #  39    0x142d41  1      OPC=nop             
  nopl %eax                 #  40    0x142d42  3      OPC=nopl_r32        
  nop                       #  41    0x142d45  1      OPC=nop             
  sarq $0x2, %rax           #  42    0x142d46  4      OPC=sarq_r64_imm8   
  nop                       #  43    0x142d4a  1      OPC=nop             
.L_142d80:                  #        0x142d4b  0      OPC=<label>         
  retq                      #  44    0x142d4b  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
