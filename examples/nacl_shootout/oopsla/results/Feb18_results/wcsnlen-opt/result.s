  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsnlen:                   #        0x142d00  0      OPC=<label>         
  movl %edi, %edi           #  1     0x142d00  2      OPC=movl_r32_r32_1  
  movl (%r15,%rdi,1), %ecx  #  2     0x142d02  4      OPC=movl_r32_m32    
  nop                       #  3     0x142d06  1      OPC=nop             
  nop                       #  4     0x142d07  1      OPC=nop             
  nop                       #  5     0x142d08  1      OPC=nop             
  nop                       #  6     0x142d09  1      OPC=nop             
  xorl %eax, %eax           #  7     0x142d0a  2      OPC=xorl_r32_r32    
  testl %ecx, %ecx          #  8     0x142d0c  2      OPC=testl_r32_r32   
  je .L_142d80              #  9     0x142d0e  2      OPC=je_label        
  testl %esi, %esi          #  10    0x142d10  2      OPC=testl_r32_r32   
  nop                       #  11    0x142d12  1      OPC=nop             
  je .L_142d80              #  12    0x142d13  2      OPC=je_label        
  addq %rdi, %rax           #  13    0x142d15  3      OPC=addq_r64_r64_1  
  subq $0x1, %rsi           #  14    0x142d18  4      OPC=subq_r64_imm8   
  nop                       #  15    0x142d1c  1      OPC=nop             
  nop                       #  16    0x142d1d  1      OPC=nop             
  jmpq .L_142d40            #  17    0x142d1e  2      OPC=jmpq_label      
  nop                       #  18    0x142d20  1      OPC=nop             
  nop                       #  19    0x142d21  1      OPC=nop             
  nop                       #  20    0x142d22  1      OPC=nop             
  nop                       #  21    0x142d23  1      OPC=nop             
  nop                       #  22    0x142d24  1      OPC=nop             
.L_142d20:                  #        0x142d25  0      OPC=<label>         
  testl %esi, %esi          #  23    0x142d25  2      OPC=testl_r32_r32   
  je .L_142d60              #  24    0x142d27  2      OPC=je_label        
  subq $0x1, %rsi           #  25    0x142d29  4      OPC=subq_r64_imm8   
.L_142d40:                  #        0x142d2d  0      OPC=<label>         
  addl $0x4, %eax           #  26    0x142d2d  5      OPC=addl_eax_imm32  
  movl (%r15,%rax,1), %edx  #  27    0x142d32  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  28    0x142d36  2      OPC=testl_r32_r32   
  jne .L_142d20             #  29    0x142d38  2      OPC=jne_label       
  nop                       #  30    0x142d3a  1      OPC=nop             
  nop                       #  31    0x142d3b  1      OPC=nop             
  nop                       #  32    0x142d3c  1      OPC=nop             
  nop                       #  33    0x142d3d  1      OPC=nop             
  nop                       #  34    0x142d3e  1      OPC=nop             
  nop                       #  35    0x142d3f  1      OPC=nop             
  nop                       #  36    0x142d40  1      OPC=nop             
  nop                       #  37    0x142d41  1      OPC=nop             
  nop                       #  38    0x142d42  1      OPC=nop             
  nop                       #  39    0x142d43  1      OPC=nop             
  nop                       #  40    0x142d44  1      OPC=nop             
  nop                       #  41    0x142d45  1      OPC=nop             
  nop                       #  42    0x142d46  1      OPC=nop             
  nop                       #  43    0x142d47  1      OPC=nop             
.L_142d60:                  #        0x142d48  0      OPC=<label>         
  nop                       #  44    0x142d48  1      OPC=nop             
  nop                       #  45    0x142d49  1      OPC=nop             
  nop                       #  46    0x142d4a  1      OPC=nop             
  subl %edi, %eax           #  47    0x142d4b  2      OPC=subl_r32_r32    
.L_142d80:                  #        0x142d4d  0      OPC=<label>         
  sarl $0x2, %eax           #  48    0x142d4d  3      OPC=sarl_r32_imm8   
  retq                      #  49    0x142d50  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
