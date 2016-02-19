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
  subl $0x1, %esi           #  7     0x142d0e  6      OPC=subl_r32_imm32  
  addl $0x4, %eax           #  8     0x142d14  3      OPC=addl_r32_imm8   
  movl (%r15,%rax,1), %edx  #  9     0x142d17  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  10    0x142d1b  2      OPC=testl_r32_r32   
  jne .L_142d20             #  11    0x142d1d  2      OPC=jne_label       
  nop                       #  12    0x142d1f  1      OPC=nop             
  nop                       #  13    0x142d20  1      OPC=nop             
  nop                       #  14    0x142d21  1      OPC=nop             
  nop                       #  15    0x142d22  1      OPC=nop             
  nop                       #  16    0x142d23  1      OPC=nop             
.L_142d60:                  #        0x142d24  0      OPC=<label>         
  nop                       #  17    0x142d24  1      OPC=nop             
  subl %edi, %eax           #  18    0x142d25  2      OPC=subl_r32_r32_1  
  sarw $0x2, %ax            #  19    0x142d27  4      OPC=sarw_r16_imm8   
  retq                      #  20    0x142d2b  1      OPC=retq            
  nop                       #  21    0x142d2c  1      OPC=nop             
  nop                       #  22    0x142d2d  1      OPC=nop             
  nop                       #  23    0x142d2e  1      OPC=nop             
  nopl %eax                 #  24    0x142d2f  3      OPC=nopl_r32        
  nop                       #  25    0x142d32  1      OPC=nop             
  nop                       #  26    0x142d33  1      OPC=nop             
  nop                       #  27    0x142d34  1      OPC=nop             
.L_142d80:                  #        0x142d35  0      OPC=<label>         
  xorl $0x20, %eax          #  28    0x142d35  5      OPC=xorl_eax_imm32  
  nop                       #  29    0x142d3a  1      OPC=nop             
  andl %ecx, %eax           #  30    0x142d3b  2      OPC=andl_r32_r32    
  andl $0xfffffff8, %eax    #  31    0x142d3d  5      OPC=andl_eax_imm32  
  retq                      #  32    0x142d42  1      OPC=retq            
                                                                          
.size wcsnlen, .-wcsnlen
