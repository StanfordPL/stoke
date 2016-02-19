  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x182d00
#! rip-offset  0x142d00
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcsnlen:                   #        0x142d00  0      OPC=<label>         
  movl %edi, %eax           #  1     0x142d00  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx  #  2     0x142d02  4      OPC=movl_r32_m32    
  testl %ecx, %ecx          #  3     0x142d06  2      OPC=testl_r32_r32   
  je .L_142d80              #  4     0x142d08  2      OPC=je_label        
.L_142d20:                  #        0x142d0a  0      OPC=<label>         
  testl %esi, %esi          #  5     0x142d0a  2      OPC=testl_r32_r32   
  je .L_142d60              #  6     0x142d0c  2      OPC=je_label        
  subl $0x1, %esi           #  7     0x142d0e  3      OPC=subl_r32_imm8   
.L_142d40:                  #        0x142d11  0      OPC=<label>         
  addl $0x4, %eax           #  8     0x142d11  6      OPC=addl_r32_imm32  
  movl (%r15,%rax,1), %edx  #  9     0x142d17  4      OPC=movl_r32_m32    
  addl %edx, %edx           #  10    0x142d1b  2      OPC=addl_r32_r32_1  
  jne .L_142d20             #  11    0x142d1d  2      OPC=jne_label       
  nop                       #  12    0x142d1f  1      OPC=nop             
  nopl %eax                 #  13    0x142d20  3      OPC=nopl_r32        
.L_142d60:                  #        0x142d23  0      OPC=<label>         
  nop                       #  14    0x142d23  1      OPC=nop             
  nop                       #  15    0x142d24  1      OPC=nop             
  nop                       #  16    0x142d25  1      OPC=nop             
  nop                       #  17    0x142d26  1      OPC=nop             
  subl %edi, %eax           #  18    0x142d27  2      OPC=subl_r32_r32    
  nop                       #  19    0x142d29  1      OPC=nop             
  nop                       #  20    0x142d2a  1      OPC=nop             
  nop                       #  21    0x142d2b  1      OPC=nop             
  nop                       #  22    0x142d2c  1      OPC=nop             
  shrw $0x2, %ax            #  23    0x142d2d  4      OPC=shrw_r16_imm8   
  retq                      #  24    0x142d31  1      OPC=retq            
  nop                       #  25    0x142d32  1      OPC=nop             
.L_142d80:                  #        0x142d33  0      OPC=<label>         
  nop                       #  26    0x142d33  1      OPC=nop             
  nop                       #  27    0x142d34  1      OPC=nop             
  nop                       #  28    0x142d35  1      OPC=nop             
  andq %rcx, %rax           #  29    0x142d36  3      OPC=andq_r64_r64    
  nop                       #  30    0x142d39  1      OPC=nop             
  nop                       #  31    0x142d3a  1      OPC=nop             
  nop                       #  32    0x142d3b  1      OPC=nop             
  nop                       #  33    0x142d3c  1      OPC=nop             
  nop                       #  34    0x142d3d  1      OPC=nop             
  retq                      #  35    0x142d3e  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
