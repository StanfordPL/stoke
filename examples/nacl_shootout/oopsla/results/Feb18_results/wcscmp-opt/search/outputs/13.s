  .text
  .globl wcscmp
  .type wcscmp, @function

#! file-offset 0x1810e0
#! rip-offset  0x1410e0
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcscmp:                    #        0x1410e0  0      OPC=<label>        
  andl %esi, %esi           #  1     0x1410e0  2      OPC=andl_r32_r32   
  nop                       #  2     0x1410e2  1      OPC=nop            
  nop                       #  3     0x1410e3  1      OPC=nop            
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
  nop                       #  16    0x1410f1  1      OPC=nop            
  nopl %eax                 #  17    0x1410f2  3      OPC=nopl_r32       
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
.L_141100:                  #        0x141102  0      OPC=<label>        
  addl $0x4, %edi           #  31    0x141102  3      OPC=addl_r32_imm8  
  nop                       #  32    0x141105  1      OPC=nop            
  nop                       #  33    0x141106  1      OPC=nop            
  nop                       #  34    0x141107  1      OPC=nop            
  nop                       #  35    0x141108  1      OPC=nop            
  nop                       #  36    0x141109  1      OPC=nop            
  nop                       #  37    0x14110a  1      OPC=nop            
.L_141120:                  #        0x14110b  0      OPC=<label>        
  movl %esi, %esi           #  38    0x14110b  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %edx  #  39    0x14110d  4      OPC=movl_r32_m32   
  movl %edi, %edi           #  40    0x141111  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax  #  41    0x141113  4      OPC=movl_r32_m32   
  addl $0x4, %esi           #  42    0x141117  3      OPC=addl_r32_imm8  
  cmpl %edx, %eax           #  43    0x14111a  2      OPC=cmpl_r32_r32   
  jne .L_141160             #  44    0x14111c  2      OPC=jne_label      
  testl %eax, %eax          #  45    0x14111e  2      OPC=testl_r32_r32  
  jne .L_141100             #  46    0x141120  2      OPC=jne_label      
  nop                       #  47    0x141122  1      OPC=nop            
  nop                       #  48    0x141123  1      OPC=nop            
  nop                       #  49    0x141124  1      OPC=nop            
  nop                       #  50    0x141125  1      OPC=nop            
  nop                       #  51    0x141126  1      OPC=nop            
  nop                       #  52    0x141127  1      OPC=nop            
  nop                       #  53    0x141128  1      OPC=nop            
.L_141160:                  #        0x141129  0      OPC=<label>        
  subl %edx, %eax           #  54    0x141129  2      OPC=subl_r32_r32   
  retq                      #  55    0x14112b  1      OPC=retq           
                                                                         
.size wcscmp, .-wcscmp
