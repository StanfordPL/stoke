  .text
  .globl _ZNSolsEf
  .type _ZNSolsEf, @function

#! file-offset 0xe1040
#! rip-offset  0xa1040
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode                
._ZNSolsEf:                       #        0xa1040  0      OPC=<label>           
  unpcklps %xmm0, %xmm0           #  1     0xa1040  3      OPC=unpcklps_xmm_xmm  
  movl %edi, %edi                 #  2     0xa1043  2      OPC=movl_r32_r32      
  cvtps2pd %xmm0, %xmm0           #  3     0xa1045  3      OPC=cvtps2pd_xmm_xmm  
  jmpq ._ZNSo9_M_insertIdEERSoT_  #  4     0xa1048  5      OPC=jmpq_label_1      
  nop                             #  5     0xa104d  1      OPC=nop               
  nop                             #  6     0xa104e  1      OPC=nop               
  nop                             #  7     0xa104f  1      OPC=nop               
  nop                             #  8     0xa1050  1      OPC=nop               
  nop                             #  9     0xa1051  1      OPC=nop               
  nop                             #  10    0xa1052  1      OPC=nop               
  nop                             #  11    0xa1053  1      OPC=nop               
  nop                             #  12    0xa1054  1      OPC=nop               
  nop                             #  13    0xa1055  1      OPC=nop               
  nop                             #  14    0xa1056  1      OPC=nop               
  nop                             #  15    0xa1057  1      OPC=nop               
  nop                             #  16    0xa1058  1      OPC=nop               
  nop                             #  17    0xa1059  1      OPC=nop               
  nop                             #  18    0xa105a  1      OPC=nop               
  nop                             #  19    0xa105b  1      OPC=nop               
  nop                             #  20    0xa105c  1      OPC=nop               
  nop                             #  21    0xa105d  1      OPC=nop               
  nop                             #  22    0xa105e  1      OPC=nop               
  nop                             #  23    0xa105f  1      OPC=nop               
                                                                                 
.size _ZNSolsEf, .-_ZNSolsEf

