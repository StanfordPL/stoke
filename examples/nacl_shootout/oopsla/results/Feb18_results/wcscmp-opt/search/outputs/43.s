  .text
  .globl wcscmp
  .type wcscmp, @function

#! file-offset 0x1810e0
#! rip-offset  0x1410e0
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscmp:                    #        0x1410e0  0      OPC=<label>         
  nop                       #  1     0x1410e0  1      OPC=nop             
  nopl %eax                 #  2     0x1410e1  3      OPC=nopl_r32        
  nopl %eax                 #  3     0x1410e4  3      OPC=nopl_r32        
  jmpq .L_141120            #  4     0x1410e7  2      OPC=jmpq_label      
  nop                       #  5     0x1410e9  1      OPC=nop             
  nop                       #  6     0x1410ea  1      OPC=nop             
  nop                       #  7     0x1410eb  1      OPC=nop             
  nop                       #  8     0x1410ec  1      OPC=nop             
  nop                       #  9     0x1410ed  1      OPC=nop             
  nop                       #  10    0x1410ee  1      OPC=nop             
  nop                       #  11    0x1410ef  1      OPC=nop             
  nop                       #  12    0x1410f0  1      OPC=nop             
  nop                       #  13    0x1410f1  1      OPC=nop             
  nop                       #  14    0x1410f2  1      OPC=nop             
  nop                       #  15    0x1410f3  1      OPC=nop             
.L_141100:                  #        0x1410f4  0      OPC=<label>         
  addl $0x4, %edi           #  16    0x1410f4  6      OPC=addl_r32_imm32  
.L_141120:                  #        0x1410fa  0      OPC=<label>         
  andl %esi, %esi           #  17    0x1410fa  2      OPC=andl_r32_r32    
  movl (%r15,%rsi,1), %edx  #  18    0x1410fc  4      OPC=movl_r32_m32    
  orl %edi, %edi            #  19    0x141100  2      OPC=orl_r32_r32_1   
  movl (%r15,%rdi,1), %eax  #  20    0x141102  4      OPC=movl_r32_m32    
  addl $0x4, %esi           #  21    0x141106  6      OPC=addl_r32_imm32  
  cmpl %edx, %eax           #  22    0x14110c  2      OPC=cmpl_r32_r32    
  jne .L_141160             #  23    0x14110e  2      OPC=jne_label       
  testl %eax, %edx          #  24    0x141110  2      OPC=testl_r32_r32   
  jne .L_141100             #  25    0x141112  2      OPC=jne_label       
  nop                       #  26    0x141114  1      OPC=nop             
  nop                       #  27    0x141115  1      OPC=nop             
  nop                       #  28    0x141116  1      OPC=nop             
.L_141160:                  #        0x141117  0      OPC=<label>         
  nop                       #  29    0x141117  1      OPC=nop             
  subl %edx, %eax           #  30    0x141118  2      OPC=subl_r32_r32_1  
  nop                       #  31    0x14111a  1      OPC=nop             
  nopl %eax                 #  32    0x14111b  3      OPC=nopl_r32        
  nop                       #  33    0x14111e  1      OPC=nop             
  nop                       #  34    0x14111f  1      OPC=nop             
  nopl %eax                 #  35    0x141120  3      OPC=nopl_r32        
  nop                       #  36    0x141123  1      OPC=nop             
  retq                      #  37    0x141124  1      OPC=retq            
                                                                          
.size wcscmp, .-wcscmp
