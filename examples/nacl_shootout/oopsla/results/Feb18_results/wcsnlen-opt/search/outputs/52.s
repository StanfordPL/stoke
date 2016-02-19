  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsnlen:                   #        0x142d00  0      OPC=<label>         
  movl %edi, %edi           #  1     0x142d00  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %ecx  #  2     0x142d02  4      OPC=movl_r32_m32    
  nop                       #  3     0x142d06  1      OPC=nop             
  nop                       #  4     0x142d07  1      OPC=nop             
  testl %ecx, %ecx          #  5     0x142d08  2      OPC=testl_r32_r32   
  je .L_142d80              #  6     0x142d0a  2      OPC=je_label        
  nop                       #  7     0x142d0c  1      OPC=nop             
  testl %esi, %esi          #  8     0x142d0d  2      OPC=testl_r32_r32   
  je .L_142d80              #  9     0x142d0f  2      OPC=je_label        
  nop                       #  10    0x142d11  1      OPC=nop             
  nop                       #  11    0x142d12  1      OPC=nop             
  nop                       #  12    0x142d13  1      OPC=nop             
  nop                       #  13    0x142d14  1      OPC=nop             
  nop                       #  14    0x142d15  1      OPC=nop             
  nop                       #  15    0x142d16  1      OPC=nop             
  nop                       #  16    0x142d17  1      OPC=nop             
  nop                       #  17    0x142d18  1      OPC=nop             
  subq $0x1, %rsi           #  18    0x142d19  7      OPC=subq_r64_imm32  
  movq %rdi, %rax           #  19    0x142d20  3      OPC=movq_r64_r64    
  nop                       #  20    0x142d23  1      OPC=nop             
  jmpq .L_142d40            #  21    0x142d24  2      OPC=jmpq_label      
  nop                       #  22    0x142d26  1      OPC=nop             
  nop                       #  23    0x142d27  1      OPC=nop             
  nop                       #  24    0x142d28  1      OPC=nop             
  nop                       #  25    0x142d29  1      OPC=nop             
  nop                       #  26    0x142d2a  1      OPC=nop             
  nop                       #  27    0x142d2b  1      OPC=nop             
.L_142d20:                  #        0x142d2c  0      OPC=<label>         
  testl %esi, %esi          #  28    0x142d2c  2      OPC=testl_r32_r32   
  je .L_142d60              #  29    0x142d2e  2      OPC=je_label        
  subl $0x1, %esi           #  30    0x142d30  3      OPC=subl_r32_imm8   
.L_142d40:                  #        0x142d33  0      OPC=<label>         
  addl $0x4, %eax           #  31    0x142d33  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  32    0x142d36  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  33    0x142d3a  2      OPC=testl_r32_r32   
  jne .L_142d20             #  34    0x142d3c  2      OPC=jne_label       
  nop                       #  35    0x142d3e  1      OPC=nop             
  nop                       #  36    0x142d3f  1      OPC=nop             
  nop                       #  37    0x142d40  1      OPC=nop             
.L_142d60:                  #        0x142d41  0      OPC=<label>         
  nop                       #  38    0x142d41  1      OPC=nop             
  subl %edi, %eax           #  39    0x142d42  2      OPC=subl_r32_r32    
  nop                       #  40    0x142d44  1      OPC=nop             
  nop                       #  41    0x142d45  1      OPC=nop             
  nop                       #  42    0x142d46  1      OPC=nop             
  nop                       #  43    0x142d47  1      OPC=nop             
  nop                       #  44    0x142d48  1      OPC=nop             
  nop                       #  45    0x142d49  1      OPC=nop             
  sarl $0x2, %eax           #  46    0x142d4a  3      OPC=sarl_r32_imm8   
  retq                      #  47    0x142d4d  1      OPC=retq            
.L_142d80:                  #        0x142d4e  0      OPC=<label>         
  nop                       #  48    0x142d4e  1      OPC=nop             
  nop                       #  49    0x142d4f  1      OPC=nop             
  nop                       #  50    0x142d50  1      OPC=nop             
  nop                       #  51    0x142d51  1      OPC=nop             
  nop                       #  52    0x142d52  1      OPC=nop             
  nop                       #  53    0x142d53  1      OPC=nop             
  nop                       #  54    0x142d54  1      OPC=nop             
  nop                       #  55    0x142d55  1      OPC=nop             
  xorl %eax, %eax           #  56    0x142d56  2      OPC=xorl_r32_r32    
  retq                      #  57    0x142d58  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
