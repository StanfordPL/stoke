  .text
  .globl _ZNSolsEf
  .type _ZNSolsEf, @function

#! file-offset 0xe0920
#! rip-offset  0xa0920
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode                
._ZNSolsEf:                       #        0xa0920  0      OPC=<label>           
  unpcklps %xmm0, %xmm0           #  1     0xa0920  3      OPC=unpcklps_xmm_xmm  
  movl %edi, %edi                 #  2     0xa0923  2      OPC=movl_r32_r32      
  cvtps2pd %xmm0, %xmm0           #  3     0xa0925  3      OPC=cvtps2pd_xmm_xmm  
  jmpq ._ZNSo9_M_insertIdEERSoT_  #  4     0xa0928  5      OPC=jmpq_label_1      
  nop                             #  5     0xa092d  1      OPC=nop               
  nop                             #  6     0xa092e  1      OPC=nop               
  nop                             #  7     0xa092f  1      OPC=nop               
  nop                             #  8     0xa0930  1      OPC=nop               
  nop                             #  9     0xa0931  1      OPC=nop               
  nop                             #  10    0xa0932  1      OPC=nop               
  nop                             #  11    0xa0933  1      OPC=nop               
  nop                             #  12    0xa0934  1      OPC=nop               
  nop                             #  13    0xa0935  1      OPC=nop               
  nop                             #  14    0xa0936  1      OPC=nop               
  nop                             #  15    0xa0937  1      OPC=nop               
  nop                             #  16    0xa0938  1      OPC=nop               
  nop                             #  17    0xa0939  1      OPC=nop               
  nop                             #  18    0xa093a  1      OPC=nop               
  nop                             #  19    0xa093b  1      OPC=nop               
  nop                             #  20    0xa093c  1      OPC=nop               
  nop                             #  21    0xa093d  1      OPC=nop               
  nop                             #  22    0xa093e  1      OPC=nop               
  nop                             #  23    0xa093f  1      OPC=nop               
                                                                                 
.size _ZNSolsEf, .-_ZNSolsEf

