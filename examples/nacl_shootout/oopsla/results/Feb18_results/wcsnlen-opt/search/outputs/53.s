  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsnlen:                   #        0x142d00  0      OPC=<label>         
  orl %edi, %edi            #  1     0x142d00  2      OPC=orl_r32_r32_1   
  movl (%r15,%rdi,1), %ecx  #  2     0x142d02  4      OPC=movl_r32_m32    
  nop                       #  3     0x142d06  1      OPC=nop             
  testl %ecx, %ecx          #  4     0x142d07  2      OPC=testl_r32_r32   
  je .L_142d80              #  5     0x142d09  2      OPC=je_label        
  testl %esi, %esi          #  6     0x142d0b  2      OPC=testl_r32_r32   
  nop                       #  7     0x142d0d  1      OPC=nop             
  nop                       #  8     0x142d0e  1      OPC=nop             
  nop                       #  9     0x142d0f  1      OPC=nop             
  nop                       #  10    0x142d10  1      OPC=nop             
  nop                       #  11    0x142d11  1      OPC=nop             
  nop                       #  12    0x142d12  1      OPC=nop             
  nop                       #  13    0x142d13  1      OPC=nop             
  je .L_142d80              #  14    0x142d14  2      OPC=je_label        
  nop                       #  15    0x142d16  1      OPC=nop             
  nop                       #  16    0x142d17  1      OPC=nop             
  nop                       #  17    0x142d18  1      OPC=nop             
  subq $0x1, %rsi           #  18    0x142d19  7      OPC=subq_r64_imm32  
  nop                       #  19    0x142d20  1      OPC=nop             
  nop                       #  20    0x142d21  1      OPC=nop             
  nop                       #  21    0x142d22  1      OPC=nop             
  nop                       #  22    0x142d23  1      OPC=nop             
  nop                       #  23    0x142d24  1      OPC=nop             
  nop                       #  24    0x142d25  1      OPC=nop             
  movq %rdi, %rax           #  25    0x142d26  3      OPC=movq_r64_r64    
  jmpq .L_142d40            #  26    0x142d29  2      OPC=jmpq_label      
.L_142d20:                  #        0x142d2b  0      OPC=<label>         
  testl %esi, %esi          #  27    0x142d2b  2      OPC=testl_r32_r32   
  je .L_142d60              #  28    0x142d2d  2      OPC=je_label        
  subl $0x1, %esi           #  29    0x142d2f  3      OPC=subl_r32_imm8   
.L_142d40:                  #        0x142d32  0      OPC=<label>         
  addl $0x4, %eax           #  30    0x142d32  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  31    0x142d35  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  32    0x142d39  2      OPC=testl_r32_r32   
  jne .L_142d20             #  33    0x142d3b  2      OPC=jne_label       
  nop                       #  34    0x142d3d  1      OPC=nop             
.L_142d60:                  #        0x142d3e  0      OPC=<label>         
  subl %edi, %eax           #  35    0x142d3e  2      OPC=subl_r32_r32_1  
  shrw $0x2, %ax            #  36    0x142d40  4      OPC=shrw_r16_imm8   
  retq                      #  37    0x142d44  1      OPC=retq            
  nop                       #  38    0x142d45  1      OPC=nop             
  nop                       #  39    0x142d46  1      OPC=nop             
  nop                       #  40    0x142d47  1      OPC=nop             
  nop                       #  41    0x142d48  1      OPC=nop             
  nop                       #  42    0x142d49  1      OPC=nop             
.L_142d80:                  #        0x142d4a  0      OPC=<label>         
  xorq %rax, %rax           #  43    0x142d4a  3      OPC=xorq_r64_r64    
  nopl %eax                 #  44    0x142d4d  3      OPC=nopl_r32        
  nop                       #  45    0x142d50  1      OPC=nop             
  nop                       #  46    0x142d51  1      OPC=nop             
  nop                       #  47    0x142d52  1      OPC=nop             
  nop                       #  48    0x142d53  1      OPC=nop             
  nop                       #  49    0x142d54  1      OPC=nop             
  nop                       #  50    0x142d55  1      OPC=nop             
  nop                       #  51    0x142d56  1      OPC=nop             
  nop                       #  52    0x142d57  1      OPC=nop             
  nop                       #  53    0x142d58  1      OPC=nop             
  retq                      #  54    0x142d59  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
