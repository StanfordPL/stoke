  .text
  .globl _Znaj
  .type _Znaj, @function

#! file-offset 0x121740
#! rip-offset  0xe1740
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._Znaj:                         #        0xe1740  0      OPC=<label>         
  subl $0x8, %esp               #  1     0xe1740  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  2     0xe1743  3      OPC=addq_r64_r64    
  nop                           #  3     0xe1746  1      OPC=nop             
  nop                           #  4     0xe1747  1      OPC=nop             
  nop                           #  5     0xe1748  1      OPC=nop             
  nop                           #  6     0xe1749  1      OPC=nop             
  nop                           #  7     0xe174a  1      OPC=nop             
  nop                           #  8     0xe174b  1      OPC=nop             
  nop                           #  9     0xe174c  1      OPC=nop             
  nop                           #  10    0xe174d  1      OPC=nop             
  nop                           #  11    0xe174e  1      OPC=nop             
  nop                           #  12    0xe174f  1      OPC=nop             
  nop                           #  13    0xe1750  1      OPC=nop             
  nop                           #  14    0xe1751  1      OPC=nop             
  nop                           #  15    0xe1752  1      OPC=nop             
  nop                           #  16    0xe1753  1      OPC=nop             
  nop                           #  17    0xe1754  1      OPC=nop             
  nop                           #  18    0xe1755  1      OPC=nop             
  nop                           #  19    0xe1756  1      OPC=nop             
  nop                           #  20    0xe1757  1      OPC=nop             
  nop                           #  21    0xe1758  1      OPC=nop             
  nop                           #  22    0xe1759  1      OPC=nop             
  nop                           #  23    0xe175a  1      OPC=nop             
  callq ._Znwj                  #  24    0xe175b  5      OPC=callq_label     
  addl $0x8, %esp               #  25    0xe1760  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  26    0xe1763  3      OPC=addq_r64_r64    
  movl %eax, %eax               #  27    0xe1766  2      OPC=movl_r32_r32    
  popq %r11                     #  28    0xe1768  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  29    0xe176a  7      OPC=andl_r32_imm32  
  nop                           #  30    0xe1771  1      OPC=nop             
  nop                           #  31    0xe1772  1      OPC=nop             
  nop                           #  32    0xe1773  1      OPC=nop             
  nop                           #  33    0xe1774  1      OPC=nop             
  addq %r15, %r11               #  34    0xe1775  3      OPC=addq_r64_r64    
  jmpq %r11                     #  35    0xe1778  3      OPC=jmpq_r64        
  nop                           #  36    0xe177b  1      OPC=nop             
  nop                           #  37    0xe177c  1      OPC=nop             
  nop                           #  38    0xe177d  1      OPC=nop             
  nop                           #  39    0xe177e  1      OPC=nop             
  nop                           #  40    0xe177f  1      OPC=nop             
  nop                           #  41    0xe1780  1      OPC=nop             
  nop                           #  42    0xe1781  1      OPC=nop             
  nop                           #  43    0xe1782  1      OPC=nop             
  nop                           #  44    0xe1783  1      OPC=nop             
  nop                           #  45    0xe1784  1      OPC=nop             
  nop                           #  46    0xe1785  1      OPC=nop             
  nop                           #  47    0xe1786  1      OPC=nop             
  cmpq $0xff, %rdx              #  48    0xe1787  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi               #  49    0xe178b  2      OPC=movl_r32_r32    
  je .L_e17a0                   #  50    0xe178d  2      OPC=je_label        
  nop                           #  51    0xe178f  1      OPC=nop             
  nop                           #  52    0xe1790  1      OPC=nop             
  nop                           #  53    0xe1791  1      OPC=nop             
  nop                           #  54    0xe1792  1      OPC=nop             
  nop                           #  55    0xe1793  1      OPC=nop             
  nop                           #  56    0xe1794  1      OPC=nop             
  nop                           #  57    0xe1795  1      OPC=nop             
  nop                           #  58    0xe1796  1      OPC=nop             
  nop                           #  59    0xe1797  1      OPC=nop             
  nop                           #  60    0xe1798  1      OPC=nop             
  nop                           #  61    0xe1799  1      OPC=nop             
  nop                           #  62    0xe179a  1      OPC=nop             
  nop                           #  63    0xe179b  1      OPC=nop             
  nop                           #  64    0xe179c  1      OPC=nop             
  nop                           #  65    0xe179d  1      OPC=nop             
  nop                           #  66    0xe179e  1      OPC=nop             
  nop                           #  67    0xe179f  1      OPC=nop             
  nop                           #  68    0xe17a0  1      OPC=nop             
  nop                           #  69    0xe17a1  1      OPC=nop             
  callq ._Unwind_Resume         #  70    0xe17a2  5      OPC=callq_label     
.L_e17a0:                       #        0xe17a7  0      OPC=<label>         
  nop                           #  71    0xe17a7  1      OPC=nop             
  nop                           #  72    0xe17a8  1      OPC=nop             
  nop                           #  73    0xe17a9  1      OPC=nop             
  nop                           #  74    0xe17aa  1      OPC=nop             
  nop                           #  75    0xe17ab  1      OPC=nop             
  nop                           #  76    0xe17ac  1      OPC=nop             
  nop                           #  77    0xe17ad  1      OPC=nop             
  nop                           #  78    0xe17ae  1      OPC=nop             
  nop                           #  79    0xe17af  1      OPC=nop             
  nop                           #  80    0xe17b0  1      OPC=nop             
  nop                           #  81    0xe17b1  1      OPC=nop             
  nop                           #  82    0xe17b2  1      OPC=nop             
  nop                           #  83    0xe17b3  1      OPC=nop             
  nop                           #  84    0xe17b4  1      OPC=nop             
  nop                           #  85    0xe17b5  1      OPC=nop             
  nop                           #  86    0xe17b6  1      OPC=nop             
  nop                           #  87    0xe17b7  1      OPC=nop             
  nop                           #  88    0xe17b8  1      OPC=nop             
  nop                           #  89    0xe17b9  1      OPC=nop             
  nop                           #  90    0xe17ba  1      OPC=nop             
  nop                           #  91    0xe17bb  1      OPC=nop             
  nop                           #  92    0xe17bc  1      OPC=nop             
  nop                           #  93    0xe17bd  1      OPC=nop             
  nop                           #  94    0xe17be  1      OPC=nop             
  nop                           #  95    0xe17bf  1      OPC=nop             
  nop                           #  96    0xe17c0  1      OPC=nop             
  nop                           #  97    0xe17c1  1      OPC=nop             
  callq .__cxa_call_unexpected  #  98    0xe17c2  5      OPC=callq_label     
                                                                             
.size _Znaj, .-_Znaj

