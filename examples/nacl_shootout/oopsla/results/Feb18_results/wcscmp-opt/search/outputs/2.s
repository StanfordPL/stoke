  .text
  .globl wcscmp
  .type wcscmp, @function

#! file-offset 0x1810e0
#! rip-offset  0x1410e0
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscmp:                    #        0x1410e0  0      OPC=<label>         
  jmpq .L_141120            #  1     0x1410e0  2      OPC=jmpq_label      
.L_141100:                  #        0x1410e2  0      OPC=<label>         
  addl $0x4, %esi           #  2     0x1410e2  3      OPC=addl_r32_imm8   
.L_141120:                  #        0x1410e5  0      OPC=<label>         
  movl %esi, %esi           #  3     0x1410e5  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %edx  #  4     0x1410e7  4      OPC=movl_r32_m32    
  movl %edi, %edi           #  5     0x1410eb  2      OPC=movl_r32_r32_1  
  movl (%r15,%rdi,1), %eax  #  6     0x1410ed  4      OPC=movl_r32_m32    
  addl $0x4, %edi           #  7     0x1410f1  3      OPC=addl_r32_imm8   
  cmpl %edx, %eax           #  8     0x1410f4  2      OPC=cmpl_r32_r32    
  jne .L_141160             #  9     0x1410f6  2      OPC=jne_label       
  addl %eax, %edx           #  10    0x1410f8  2      OPC=addl_r32_r32    
  jne .L_141100             #  11    0x1410fa  2      OPC=jne_label       
  nop                       #  12    0x1410fc  1      OPC=nop             
  nop                       #  13    0x1410fd  1      OPC=nop             
  nop                       #  14    0x1410fe  1      OPC=nop             
  nop                       #  15    0x1410ff  1      OPC=nop             
  nop                       #  16    0x141100  1      OPC=nop             
  nop                       #  17    0x141101  1      OPC=nop             
  nop                       #  18    0x141102  1      OPC=nop             
  nop                       #  19    0x141103  1      OPC=nop             
  nop                       #  20    0x141104  1      OPC=nop             
.L_141160:                  #        0x141105  0      OPC=<label>         
  subl %edx, %eax           #  21    0x141105  2      OPC=subl_r32_r32_1  
  nop                       #  22    0x141107  1      OPC=nop             
  nop                       #  23    0x141108  1      OPC=nop             
  nop                       #  24    0x141109  1      OPC=nop             
  nop                       #  25    0x14110a  1      OPC=nop             
  nop                       #  26    0x14110b  1      OPC=nop             
  nop                       #  27    0x14110c  1      OPC=nop             
  nop                       #  28    0x14110d  1      OPC=nop             
  nop                       #  29    0x14110e  1      OPC=nop             
  nop                       #  30    0x14110f  1      OPC=nop             
  nop                       #  31    0x141110  1      OPC=nop             
  retq                      #  32    0x141111  1      OPC=retq            
                                                                          
.size wcscmp, .-wcscmp
