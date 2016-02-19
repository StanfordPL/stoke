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
  nop                       #  8     0x142d07  1      OPC=nop             
  movl %edi, %eax           #  9     0x142d08  2      OPC=movl_r32_r32_1  
  movl (%r15,%rax,1), %ecx  #  10    0x142d0a  4      OPC=movl_r32_m32    
  nop                       #  11    0x142d0e  1      OPC=nop             
  nop                       #  12    0x142d0f  1      OPC=nop             
  testl %ecx, %ecx          #  13    0x142d10  2      OPC=testl_r32_r32   
  nop                       #  14    0x142d12  1      OPC=nop             
  nop                       #  15    0x142d13  1      OPC=nop             
  je .L_142d80              #  16    0x142d14  2      OPC=je_label        
  nop                       #  17    0x142d16  1      OPC=nop             
  nop                       #  18    0x142d17  1      OPC=nop             
  nop                       #  19    0x142d18  1      OPC=nop             
  nop                       #  20    0x142d19  1      OPC=nop             
  nop                       #  21    0x142d1a  1      OPC=nop             
  testl %esi, %esi          #  22    0x142d1b  2      OPC=testl_r32_r32   
  nop                       #  23    0x142d1d  1      OPC=nop             
  je .L_142d80              #  24    0x142d1e  2      OPC=je_label        
  subl $0x1, %esi           #  25    0x142d20  3      OPC=subl_r32_imm8   
  jmpq .L_142d40            #  26    0x142d23  2      OPC=jmpq_label      
  nop                       #  27    0x142d25  1      OPC=nop             
  nop                       #  28    0x142d26  1      OPC=nop             
.L_142d20:                  #        0x142d27  0      OPC=<label>         
  testl %esi, %esi          #  29    0x142d27  2      OPC=testl_r32_r32   
  je .L_142d60              #  30    0x142d29  2      OPC=je_label        
  subl $0x1, %esi           #  31    0x142d2b  3      OPC=subl_r32_imm8   
.L_142d40:                  #        0x142d2e  0      OPC=<label>         
  addl $0x4, %eax           #  32    0x142d2e  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  33    0x142d31  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  34    0x142d35  2      OPC=testl_r32_r32   
  jne .L_142d20             #  35    0x142d37  2      OPC=jne_label       
.L_142d60:                  #        0x142d39  0      OPC=<label>         
  subl %edi, %eax           #  36    0x142d39  2      OPC=subl_r32_r32    
  nop                       #  37    0x142d3b  1      OPC=nop             
  nop                       #  38    0x142d3c  1      OPC=nop             
  shrl $0x2, %eax           #  39    0x142d3d  3      OPC=shrl_r32_imm8   
  nop                       #  40    0x142d40  1      OPC=nop             
  nop                       #  41    0x142d41  1      OPC=nop             
  nop                       #  42    0x142d42  1      OPC=nop             
  nop                       #  43    0x142d43  1      OPC=nop             
  nop                       #  44    0x142d44  1      OPC=nop             
  nop                       #  45    0x142d45  1      OPC=nop             
  nop                       #  46    0x142d46  1      OPC=nop             
  retq                      #  47    0x142d47  1      OPC=retq            
.L_142d80:                  #        0x142d48  0      OPC=<label>         
  nop                       #  48    0x142d48  1      OPC=nop             
  nop                       #  49    0x142d49  1      OPC=nop             
  subq %rax, %rax           #  50    0x142d4a  3      OPC=subq_r64_r64    
  nop                       #  51    0x142d4d  1      OPC=nop             
  nop                       #  52    0x142d4e  1      OPC=nop             
  nop                       #  53    0x142d4f  1      OPC=nop             
  nopl %eax                 #  54    0x142d50  3      OPC=nopl_r32        
  nop                       #  55    0x142d53  1      OPC=nop             
  nop                       #  56    0x142d54  1      OPC=nop             
  nop                       #  57    0x142d55  1      OPC=nop             
  nop                       #  58    0x142d56  1      OPC=nop             
  nop                       #  59    0x142d57  1      OPC=nop             
  retq                      #  60    0x142d58  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
