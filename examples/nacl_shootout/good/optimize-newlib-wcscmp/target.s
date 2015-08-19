  .text
  .globl wcscmp
  .type wcscmp, @function

#! file-offset 0x1810e0
#! rip-offset  0x1410e0
#! capacity    160 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcscmp:                    #        0x1410e0  0      OPC=<label>         
  movl %edi, %edi           #  1     0x1410e0  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  2     0x1410e2  2      OPC=movl_r32_r32    
  jmpq .L_141120            #  3     0x1410e4  2      OPC=jmpq_label      
  nop                       #  4     0x1410e6  1      OPC=nop             
  nop                       #  5     0x1410e7  1      OPC=nop             
  nop                       #  6     0x1410e8  1      OPC=nop             
  nop                       #  7     0x1410e9  1      OPC=nop             
  nop                       #  8     0x1410ea  1      OPC=nop             
  nop                       #  9     0x1410eb  1      OPC=nop             
  nop                       #  10    0x1410ec  1      OPC=nop             
  nop                       #  11    0x1410ed  1      OPC=nop             
  nop                       #  12    0x1410ee  1      OPC=nop             
  nop                       #  13    0x1410ef  1      OPC=nop             
  nop                       #  14    0x1410f0  1      OPC=nop             
  nop                       #  15    0x1410f1  1      OPC=nop             
  nop                       #  16    0x1410f2  1      OPC=nop             
  nop                       #  17    0x1410f3  1      OPC=nop             
  nop                       #  18    0x1410f4  1      OPC=nop             
  nop                       #  19    0x1410f5  1      OPC=nop             
  nop                       #  20    0x1410f6  1      OPC=nop             
  nop                       #  21    0x1410f7  1      OPC=nop             
  nop                       #  22    0x1410f8  1      OPC=nop             
  nop                       #  23    0x1410f9  1      OPC=nop             
  nop                       #  24    0x1410fa  1      OPC=nop             
  nop                       #  25    0x1410fb  1      OPC=nop             
  nop                       #  26    0x1410fc  1      OPC=nop             
  nop                       #  27    0x1410fd  1      OPC=nop             
  nop                       #  28    0x1410fe  1      OPC=nop             
  nop                       #  29    0x1410ff  1      OPC=nop             
.L_141100:                  #        0x141100  0      OPC=<label>         
  addl $0x4, %edi           #  30    0x141100  3      OPC=addl_r32_imm8   
  nop                       #  31    0x141103  1      OPC=nop             
  nop                       #  32    0x141104  1      OPC=nop             
  nop                       #  33    0x141105  1      OPC=nop             
  nop                       #  34    0x141106  1      OPC=nop             
  nop                       #  35    0x141107  1      OPC=nop             
  nop                       #  36    0x141108  1      OPC=nop             
  nop                       #  37    0x141109  1      OPC=nop             
  nop                       #  38    0x14110a  1      OPC=nop             
  nop                       #  39    0x14110b  1      OPC=nop             
  nop                       #  40    0x14110c  1      OPC=nop             
  nop                       #  41    0x14110d  1      OPC=nop             
  nop                       #  42    0x14110e  1      OPC=nop             
  nop                       #  43    0x14110f  1      OPC=nop             
  nop                       #  44    0x141110  1      OPC=nop             
  nop                       #  45    0x141111  1      OPC=nop             
  nop                       #  46    0x141112  1      OPC=nop             
  nop                       #  47    0x141113  1      OPC=nop             
  nop                       #  48    0x141114  1      OPC=nop             
  nop                       #  49    0x141115  1      OPC=nop             
  nop                       #  50    0x141116  1      OPC=nop             
  nop                       #  51    0x141117  1      OPC=nop             
  nop                       #  52    0x141118  1      OPC=nop             
  nop                       #  53    0x141119  1      OPC=nop             
  nop                       #  54    0x14111a  1      OPC=nop             
  nop                       #  55    0x14111b  1      OPC=nop             
  nop                       #  56    0x14111c  1      OPC=nop             
  nop                       #  57    0x14111d  1      OPC=nop             
  nop                       #  58    0x14111e  1      OPC=nop             
  nop                       #  59    0x14111f  1      OPC=nop             
.L_141120:                  #        0x141120  0      OPC=<label>         
  movl %esi, %esi           #  60    0x141120  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx  #  61    0x141122  4      OPC=movl_r32_m32    
  movl %edi, %edi           #  62    0x141126  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  63    0x141128  4      OPC=movl_r32_m32    
  addl $0x4, %esi           #  64    0x14112c  3      OPC=addl_r32_imm8   
  cmpl %edx, %eax           #  65    0x14112f  2      OPC=cmpl_r32_r32    
  jne .L_141160             #  66    0x141131  2      OPC=jne_label       
  testl %eax, %eax          #  67    0x141133  2      OPC=testl_r32_r32   
  jne .L_141100             #  68    0x141135  2      OPC=jne_label       
  nop
  nop
  nop                       #  70    0x141139  1      OPC=nop             
  nop                       #  71    0x14113a  1      OPC=nop             
  nop                       #  72    0x14113b  1      OPC=nop             
  nop                       #  73    0x14113c  1      OPC=nop             
  nop                       #  74    0x14113d  1      OPC=nop             
  nop                       #  75    0x14113e  1      OPC=nop             
  nop                       #  76    0x14113f  1      OPC=nop             
  retq
  nop                       #  84    0x141151  1      OPC=nop             
  nop                       #  85    0x141152  1      OPC=nop             
  nop                       #  86    0x141153  1      OPC=nop             
  nop                       #  87    0x141154  1      OPC=nop             
  nop                       #  88    0x141155  1      OPC=nop             
  nop                       #  89    0x141156  1      OPC=nop             
  nop                       #  90    0x141157  1      OPC=nop             
  nop                       #  91    0x141158  1      OPC=nop             
  nop                       #  92    0x141159  1      OPC=nop             
  nop                       #  93    0x14115a  1      OPC=nop             
  nop                       #  94    0x14115b  1      OPC=nop             
  nop                       #  95    0x14115c  1      OPC=nop             
  nop                       #  96    0x14115d  1      OPC=nop             
  nop                       #  97    0x14115e  1      OPC=nop             
  nop                       #  98    0x14115f  1      OPC=nop             
  nop                       #  99    0x141160  1      OPC=nop             
  nop                       #  100   0x141161  1      OPC=nop             
  nop                       #  101   0x141162  1      OPC=nop             
  nop                       #  102   0x141163  1      OPC=nop             
  nop                       #  103   0x141164  1      OPC=nop             
.L_141160:                  #        0x141167  0      OPC=<label>         
  subl %edx, %eax           #  106   0x141167  2      OPC=subl_r32_r32    
  retq
  nop                       #  115   0x14117c  1      OPC=nop             
  nop                       #  116   0x14117d  1      OPC=nop             
  nop                       #  117   0x14117e  1      OPC=nop             
  nop                       #  118   0x14117f  1      OPC=nop             
  nop                       #  119   0x141180  1      OPC=nop             
  nop                       #  120   0x141181  1      OPC=nop             
  nop                       #  121   0x141182  1      OPC=nop             
  nop                       #  122   0x141183  1      OPC=nop             
  nop                       #  123   0x141184  1      OPC=nop             
  nop                       #  124   0x141185  1      OPC=nop             
  nop                       #  125   0x141186  1      OPC=nop             
  nop                       #  126   0x141187  1      OPC=nop             
  nop                       #  127   0x141188  1      OPC=nop             
  nop                       #  128   0x141189  1      OPC=nop             
  nop                       #  129   0x14118a  1      OPC=nop             
  nop                       #  130   0x14118b  1      OPC=nop             
                                                                          
.size wcscmp, .-wcscmp

