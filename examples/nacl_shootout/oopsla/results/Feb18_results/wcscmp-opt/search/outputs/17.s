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
  jmpq .L_141120            #  4     0x1410e3  2      OPC=jmpq_label      
  nop                       #  5     0x1410e5  1      OPC=nop             
  nop                       #  6     0x1410e6  1      OPC=nop             
  nop                       #  7     0x1410e7  1      OPC=nop             
  nop                       #  8     0x1410e8  1      OPC=nop             
.L_141100:                  #        0x1410e9  0      OPC=<label>         
  addl $0x4, %edi           #  9     0x1410e9  3      OPC=addl_r32_imm8   
  addw $0x4, %si            #  10    0x1410ec  4      OPC=addw_r16_imm8   
.L_141120:                  #        0x1410f0  0      OPC=<label>         
  andl %esi, %esi           #  11    0x1410f0  2      OPC=andl_r32_r32_1  
  movl (%r15,%rsi,1), %edx  #  12    0x1410f2  4      OPC=movl_r32_m32    
  orl %edi, %edi            #  13    0x1410f6  2      OPC=orl_r32_r32     
  movl (%r15,%rdi,1), %eax  #  14    0x1410f8  4      OPC=movl_r32_m32    
  cmpl %edx, %eax           #  15    0x1410fc  2      OPC=cmpl_r32_r32    
  jne .L_141160             #  16    0x1410fe  2      OPC=jne_label       
  testl %eax, %eax          #  17    0x141100  2      OPC=testl_r32_r32   
  jne .L_141100             #  18    0x141102  2      OPC=jne_label       
  nopl %eax                 #  19    0x141104  3      OPC=nopl_r32        
  nop                       #  20    0x141107  1      OPC=nop             
  nop                       #  21    0x141108  1      OPC=nop             
  nopl %eax                 #  22    0x141109  3      OPC=nopl_r32        
  nop                       #  23    0x14110c  1      OPC=nop             
  negw %dx                  #  24    0x14110d  3      OPC=negw_r16        
  nop                       #  25    0x141110  1      OPC=nop             
  nop                       #  26    0x141111  1      OPC=nop             
  andw $0x5, %ax            #  27    0x141112  4      OPC=andw_ax_imm16   
  nop                       #  28    0x141116  1      OPC=nop             
  nop                       #  29    0x141117  1      OPC=nop             
  nop                       #  30    0x141118  1      OPC=nop             
  nop                       #  31    0x141119  1      OPC=nop             
  nop                       #  32    0x14111a  1      OPC=nop             
  nop                       #  33    0x14111b  1      OPC=nop             
  nop                       #  34    0x14111c  1      OPC=nop             
  nop                       #  35    0x14111d  1      OPC=nop             
  nop                       #  36    0x14111e  1      OPC=nop             
  nop                       #  37    0x14111f  1      OPC=nop             
  nop                       #  38    0x141120  1      OPC=nop             
  nop                       #  39    0x141121  1      OPC=nop             
  nop                       #  40    0x141122  1      OPC=nop             
.L_141160:                  #        0x141123  0      OPC=<label>         
  nop                       #  41    0x141123  1      OPC=nop             
  subl %edx, %eax           #  42    0x141124  2      OPC=subl_r32_r32_1  
  nop                       #  43    0x141126  1      OPC=nop             
  nop                       #  44    0x141127  1      OPC=nop             
  nop                       #  45    0x141128  1      OPC=nop             
  retq                      #  46    0x141129  1      OPC=retq            
                                                                          
.size wcscmp, .-wcscmp
