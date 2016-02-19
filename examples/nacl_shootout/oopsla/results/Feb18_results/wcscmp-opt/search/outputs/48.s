  .text
  .globl wcscmp
  .type wcscmp, @function

#! file-offset 0x1810e0
#! rip-offset  0x1410e0
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcscmp:                    #        0x1410e0  0      OPC=<label>        
  movl %edi, %edi           #  1     0x1410e0  2      OPC=movl_r32_r32   
  nop                       #  2     0x1410e2  1      OPC=nop            
  jmpq .L_141120            #  3     0x1410e3  2      OPC=jmpq_label     
  nop                       #  4     0x1410e5  1      OPC=nop            
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
  nop                       #  16    0x1410f1  1      OPC=nop            
.L_141100:                  #        0x1410f2  0      OPC=<label>        
  addl $0x4, %edi           #  17    0x1410f2  3      OPC=addl_r32_imm8  
  nop                       #  18    0x1410f5  1      OPC=nop            
  nop                       #  19    0x1410f6  1      OPC=nop            
  nop                       #  20    0x1410f7  1      OPC=nop            
  nop                       #  21    0x1410f8  1      OPC=nop            
  nop                       #  22    0x1410f9  1      OPC=nop            
  nop                       #  23    0x1410fa  1      OPC=nop            
  nop                       #  24    0x1410fb  1      OPC=nop            
  nop                       #  25    0x1410fc  1      OPC=nop            
  nop                       #  26    0x1410fd  1      OPC=nop            
  nop                       #  27    0x1410fe  1      OPC=nop            
  nop                       #  28    0x1410ff  1      OPC=nop            
  nop                       #  29    0x141100  1      OPC=nop            
  nop                       #  30    0x141101  1      OPC=nop            
.L_141120:                  #        0x141102  0      OPC=<label>        
  movl %esi, %esi           #  31    0x141102  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %edx  #  32    0x141104  4      OPC=movl_r32_m32   
  movl %edi, %edi           #  33    0x141108  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax  #  34    0x14110a  4      OPC=movl_r32_m32   
  addl $0x4, %esi           #  35    0x14110e  3      OPC=addl_r32_imm8  
  cmpl %edx, %eax           #  36    0x141111  2      OPC=cmpl_r32_r32   
  jne .L_141160             #  37    0x141113  2      OPC=jne_label      
  testl %eax, %edx          #  38    0x141115  2      OPC=testl_r32_r32  
  jne .L_141100             #  39    0x141117  2      OPC=jne_label      
  nop                       #  40    0x141119  1      OPC=nop            
  nop                       #  41    0x14111a  1      OPC=nop            
  nop                       #  42    0x14111b  1      OPC=nop            
  nop                       #  43    0x14111c  1      OPC=nop            
  nop                       #  44    0x14111d  1      OPC=nop            
  nop                       #  45    0x14111e  1      OPC=nop            
  nop                       #  46    0x14111f  1      OPC=nop            
  nop                       #  47    0x141120  1      OPC=nop            
  nop                       #  48    0x141121  1      OPC=nop            
  nop                       #  49    0x141122  1      OPC=nop            
  nop                       #  50    0x141123  1      OPC=nop            
  nop                       #  51    0x141124  1      OPC=nop            
  nop                       #  52    0x141125  1      OPC=nop            
  nop                       #  53    0x141126  1      OPC=nop            
  nop                       #  54    0x141127  1      OPC=nop            
.L_141160:                  #        0x141128  0      OPC=<label>        
  subl %edx, %eax           #  55    0x141128  2      OPC=subl_r32_r32   
  retq                      #  56    0x14112a  1      OPC=retq           
                                                                         
.size wcscmp, .-wcscmp
