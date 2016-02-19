  .text
  .globl wcscmp
  .type wcscmp, @function

#! file-offset 0x1810e0
#! rip-offset  0x1410e0
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcscmp:                    #        0x1410e0  0      OPC=<label>        
  movl %edi, %edi           #  1     0x1410e0  2      OPC=movl_r32_r32   
  nopl %eax                 #  2     0x1410e2  3      OPC=nopl_r32       
  nop                       #  3     0x1410e5  1      OPC=nop            
  jmpq .L_141120            #  4     0x1410e6  2      OPC=jmpq_label     
  nop                       #  5     0x1410e8  1      OPC=nop            
  nop                       #  6     0x1410e9  1      OPC=nop            
  nop                       #  7     0x1410ea  1      OPC=nop            
  nop                       #  8     0x1410eb  1      OPC=nop            
  nop                       #  9     0x1410ec  1      OPC=nop            
  nop                       #  10    0x1410ed  1      OPC=nop            
  nop                       #  11    0x1410ee  1      OPC=nop            
  nop                       #  12    0x1410ef  1      OPC=nop            
  nop                       #  13    0x1410f0  1      OPC=nop            
  nop                       #  14    0x1410f1  1      OPC=nop            
  nop                       #  15    0x1410f2  1      OPC=nop            
  nop                       #  16    0x1410f3  1      OPC=nop            
  nop                       #  17    0x1410f4  1      OPC=nop            
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
  nop                       #  38    0x14110b  1      OPC=nop            
  nop                       #  39    0x14110c  1      OPC=nop            
.L_141120:                  #        0x14110d  0      OPC=<label>        
  movl %esi, %esi           #  40    0x14110d  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %edx  #  41    0x14110f  4      OPC=movl_r32_m32   
  movl %edi, %edi           #  42    0x141113  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax  #  43    0x141115  4      OPC=movl_r32_m32   
  addl $0x4, %esi           #  44    0x141119  3      OPC=addl_r32_imm8  
  cmpl %edx, %eax           #  45    0x14111c  2      OPC=cmpl_r32_r32   
  jne .L_141160             #  46    0x14111e  2      OPC=jne_label      
  testl %eax, %eax          #  47    0x141120  2      OPC=testl_r32_r32  
  jne .L_141100             #  48    0x141122  2      OPC=jne_label      
  nop                       #  49    0x141124  1      OPC=nop            
  nop                       #  50    0x141125  1      OPC=nop            
  nop                       #  51    0x141126  1      OPC=nop            
  nop                       #  52    0x141127  1      OPC=nop            
  nop                       #  53    0x141128  1      OPC=nop            
  nop                       #  54    0x141129  1      OPC=nop            
  nop                       #  55    0x14112a  1      OPC=nop            
  nop                       #  56    0x14112b  1      OPC=nop            
  nop                       #  57    0x14112c  1      OPC=nop            
  nop                       #  58    0x14112d  1      OPC=nop            
  retq                      #  59    0x14112e  1      OPC=retq           
  nop                       #  60    0x14112f  1      OPC=nop            
  nop                       #  61    0x141130  1      OPC=nop            
  nop                       #  62    0x141131  1      OPC=nop            
  nop                       #  63    0x141132  1      OPC=nop            
  nop                       #  64    0x141133  1      OPC=nop            
  nop                       #  65    0x141134  1      OPC=nop            
  nop                       #  66    0x141135  1      OPC=nop            
  nop                       #  67    0x141136  1      OPC=nop            
  nop                       #  68    0x141137  1      OPC=nop            
  nop                       #  69    0x141138  1      OPC=nop            
  nop                       #  70    0x141139  1      OPC=nop            
  nop                       #  71    0x14113a  1      OPC=nop            
  nop                       #  72    0x14113b  1      OPC=nop            
  nop                       #  73    0x14113c  1      OPC=nop            
  nop                       #  74    0x14113d  1      OPC=nop            
  nop                       #  75    0x14113e  1      OPC=nop            
  nop                       #  76    0x14113f  1      OPC=nop            
  nop                       #  77    0x141140  1      OPC=nop            
  nop                       #  78    0x141141  1      OPC=nop            
.L_141160:                  #        0x141142  0      OPC=<label>        
  subl %edx, %eax           #  79    0x141142  2      OPC=subl_r32_r32   
  retq                      #  80    0x141144  1      OPC=retq           
                                                                         
.size wcscmp, .-wcscmp
