  .text
  .globl _ZNSolsEf
  .type _ZNSolsEf, @function

#! file-offset 0xe0620
#! rip-offset  0xa0620
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode                
._ZNSolsEf:                       #        0xa0620  0      OPC=<label>           
  unpcklps %xmm0, %xmm0           #  1     0xa0620  3      OPC=unpcklps_xmm_xmm  
  movl %edi, %edi                 #  2     0xa0623  2      OPC=movl_r32_r32      
  cvtps2pd %xmm0, %xmm0           #  3     0xa0625  3      OPC=cvtps2pd_xmm_xmm  
  jmpq ._ZNSo9_M_insertIdEERSoT_  #  4     0xa0628  5      OPC=jmpq_label_1      
  nop                             #  5     0xa062d  1      OPC=nop               
  nop                             #  6     0xa062e  1      OPC=nop               
  nop                             #  7     0xa062f  1      OPC=nop               
  nop                             #  8     0xa0630  1      OPC=nop               
  nop                             #  9     0xa0631  1      OPC=nop               
  nop                             #  10    0xa0632  1      OPC=nop               
  nop                             #  11    0xa0633  1      OPC=nop               
  nop                             #  12    0xa0634  1      OPC=nop               
  nop                             #  13    0xa0635  1      OPC=nop               
  nop                             #  14    0xa0636  1      OPC=nop               
  nop                             #  15    0xa0637  1      OPC=nop               
  nop                             #  16    0xa0638  1      OPC=nop               
  nop                             #  17    0xa0639  1      OPC=nop               
  nop                             #  18    0xa063a  1      OPC=nop               
  nop                             #  19    0xa063b  1      OPC=nop               
  nop                             #  20    0xa063c  1      OPC=nop               
  nop                             #  21    0xa063d  1      OPC=nop               
  nop                             #  22    0xa063e  1      OPC=nop               
  nop                             #  23    0xa063f  1      OPC=nop               
                                                                                 
.size _ZNSolsEf, .-_ZNSolsEf

