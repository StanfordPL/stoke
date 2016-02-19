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
  nop                       #  3     0x1410e2  1      OPC=nop             
  movl %esi, %esi           #  4     0x1410e3  2      OPC=movl_r32_r32    
  jmpq .L_141120            #  5     0x1410e5  2      OPC=jmpq_label      
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
  nop                       #  17    0x1410f4  1      OPC=nop             
  nop                       #  18    0x1410f5  1      OPC=nop             
  nop                       #  19    0x1410f6  1      OPC=nop             
  nop                       #  20    0x1410f7  1      OPC=nop             
  nop                       #  21    0x1410f8  1      OPC=nop             
  nop                       #  22    0x1410f9  1      OPC=nop             
.L_141120:                  #        0x1410fa  0      OPC=<label>         
  movl %esi, %esi           #  23    0x1410fa  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx  #  24    0x1410fc  4      OPC=movl_r32_m32    
  movl %edi, %edi           #  25    0x141100  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  26    0x141102  4      OPC=movl_r32_m32    
  addl $0x4, %esi           #  27    0x141106  6      OPC=addl_r32_imm32  
  cmpl %edx, %eax           #  28    0x14110c  2      OPC=cmpl_r32_r32    
  jne .L_141160             #  29    0x14110e  2      OPC=jne_label       
  testl %eax, %eax          #  30    0x141110  2      OPC=testl_r32_r32   
  jne .L_141100             #  31    0x141112  2      OPC=jne_label       
  nop                       #  32    0x141114  1      OPC=nop             
  addb %al, %ah             #  33    0x141115  2      OPC=addb_rh_r8      
  nop                       #  34    0x141117  1      OPC=nop             
  nop                       #  35    0x141118  1      OPC=nop             
  nop                       #  36    0x141119  1      OPC=nop             
  nopl %eax                 #  37    0x14111a  3      OPC=nopl_r32        
  nop                       #  38    0x14111d  1      OPC=nop             
  nop                       #  39    0x14111e  1      OPC=nop             
  nop                       #  40    0x14111f  1      OPC=nop             
  nop                       #  41    0x141120  1      OPC=nop             
  nop                       #  42    0x141121  1      OPC=nop             
.L_141160:                  #        0x141122  0      OPC=<label>         
  subl %edx, %eax           #  43    0x141122  2      OPC=subl_r32_r32    
  retq                      #  44    0x141124  1      OPC=retq            
                                                                          
.size wcscmp, .-wcscmp
