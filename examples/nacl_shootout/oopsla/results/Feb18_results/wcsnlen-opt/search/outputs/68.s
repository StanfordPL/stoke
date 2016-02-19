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
  xorl %eax, %eax           #  8     0x142d07  2      OPC=xorl_r32_r32    
  movl %edi, %edi           #  9     0x142d09  2      OPC=movl_r32_r32_1  
  movl (%r15,%rdi,1), %ecx  #  10    0x142d0b  4      OPC=movl_r32_m32    
  nop                       #  11    0x142d0f  1      OPC=nop             
  nop                       #  12    0x142d10  1      OPC=nop             
  nop                       #  13    0x142d11  1      OPC=nop             
  nop                       #  14    0x142d12  1      OPC=nop             
  nop                       #  15    0x142d13  1      OPC=nop             
  testl %ecx, %ecx          #  16    0x142d14  2      OPC=testl_r32_r32   
  nop                       #  17    0x142d16  1      OPC=nop             
  nop                       #  18    0x142d17  1      OPC=nop             
  nop                       #  19    0x142d18  1      OPC=nop             
  je .L_142d80              #  20    0x142d19  2      OPC=je_label        
  xorq %rdi, %rax           #  21    0x142d1b  3      OPC=xorq_r64_r64    
.L_142d20:                  #        0x142d1e  0      OPC=<label>         
  testl %esi, %esi          #  22    0x142d1e  2      OPC=testl_r32_r32   
  je .L_142d60              #  23    0x142d20  2      OPC=je_label        
  subw $0x1, %si            #  24    0x142d22  4      OPC=subw_r16_imm8   
.L_142d40:                  #        0x142d26  0      OPC=<label>         
  addl $0x4, %eax           #  25    0x142d26  5      OPC=addl_eax_imm32  
  movl (%r15,%rax,1), %edx  #  26    0x142d2b  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  27    0x142d2f  2      OPC=testl_r32_r32   
  jne .L_142d20             #  28    0x142d31  2      OPC=jne_label       
  nop                       #  29    0x142d33  1      OPC=nop             
  nop                       #  30    0x142d34  1      OPC=nop             
  nop                       #  31    0x142d35  1      OPC=nop             
  nop                       #  32    0x142d36  1      OPC=nop             
  nop                       #  33    0x142d37  1      OPC=nop             
  nop                       #  34    0x142d38  1      OPC=nop             
  nopl %eax                 #  35    0x142d39  3      OPC=nopl_r32        
  nop                       #  36    0x142d3c  1      OPC=nop             
  nop                       #  37    0x142d3d  1      OPC=nop             
  nop                       #  38    0x142d3e  1      OPC=nop             
  nop                       #  39    0x142d3f  1      OPC=nop             
  nop                       #  40    0x142d40  1      OPC=nop             
.L_142d60:                  #        0x142d41  0      OPC=<label>         
  subl %edi, %eax           #  41    0x142d41  2      OPC=subl_r32_r32    
  nop                       #  42    0x142d43  1      OPC=nop             
  nopl %eax                 #  43    0x142d44  3      OPC=nopl_r32        
  sarw $0x2, %ax            #  44    0x142d47  4      OPC=sarw_r16_imm8   
  nop                       #  45    0x142d4b  1      OPC=nop             
  nop                       #  46    0x142d4c  1      OPC=nop             
  nop                       #  47    0x142d4d  1      OPC=nop             
  nop                       #  48    0x142d4e  1      OPC=nop             
  nop                       #  49    0x142d4f  1      OPC=nop             
.L_142d80:                  #        0x142d50  0      OPC=<label>         
  retq                      #  50    0x142d50  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
