  .text
  .globl wcscmp
  .type wcscmp, @function

#! file-offset 0x1810e0
#! rip-offset  0x1410e0
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcscmp:                    #        0x1410e0  0      OPC=<label>        
  nop                       #  1     0x1410e0  1      OPC=nop            
  nop                       #  2     0x1410e1  1      OPC=nop            
  orl %edi, %edi            #  3     0x1410e2  2      OPC=orl_r32_r32_1  
  jmpq .L_141120            #  4     0x1410e4  2      OPC=jmpq_label     
  nop                       #  5     0x1410e6  1      OPC=nop            
  nop                       #  6     0x1410e7  1      OPC=nop            
  nop                       #  7     0x1410e8  1      OPC=nop            
  nop                       #  8     0x1410e9  1      OPC=nop            
  nop                       #  9     0x1410ea  1      OPC=nop            
  nop                       #  10    0x1410eb  1      OPC=nop            
  nop                       #  11    0x1410ec  1      OPC=nop            
  nop                       #  12    0x1410ed  1      OPC=nop            
  nop                       #  13    0x1410ee  1      OPC=nop            
  nop                       #  14    0x1410ef  1      OPC=nop            
  nop                       #  15    0x1410f0  1      OPC=nop            
.L_141100:                  #        0x1410f1  0      OPC=<label>        
  addl $0x4, %edi           #  16    0x1410f1  3      OPC=addl_r32_imm8  
.L_141120:                  #        0x1410f4  0      OPC=<label>        
  movl %esi, %esi           #  17    0x1410f4  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %edx  #  18    0x1410f6  4      OPC=movl_r32_m32   
  movl %edi, %edi           #  19    0x1410fa  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax  #  20    0x1410fc  4      OPC=movl_r32_m32   
  addl $0x4, %esi           #  21    0x141100  3      OPC=addl_r32_imm8  
  cmpl %edx, %eax           #  22    0x141103  2      OPC=cmpl_r32_r32   
  jne .L_141160             #  23    0x141105  2      OPC=jne_label      
  testl %edx, %eax          #  24    0x141107  2      OPC=testl_r32_r32  
  jne .L_141100             #  25    0x141109  2      OPC=jne_label      
  nop                       #  26    0x14110b  1      OPC=nop            
  nop                       #  27    0x14110c  1      OPC=nop            
.L_141160:                  #        0x14110d  0      OPC=<label>        
  subl %edx, %eax           #  28    0x14110d  2      OPC=subl_r32_r32   
  retq                      #  29    0x14110f  1      OPC=retq           
                                                                         
.size wcscmp, .-wcscmp
