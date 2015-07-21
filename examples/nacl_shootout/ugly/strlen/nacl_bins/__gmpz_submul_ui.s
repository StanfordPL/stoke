  .text
  .globl __gmpz_submul_ui
  .type __gmpz_submul_ui, @function

#! file-offset 0x70a20
#! rip-offset  0x30a20
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode    
.__gmpz_submul_ui:        #        0x30a20  0      OPC=0     
  movl %edi, %edi         #  1     0x30a20  2      OPC=1157  
  movl %esi, %esi         #  2     0x30a22  2      OPC=1157  
  movl $0xffffffff, %ecx  #  3     0x30a24  6      OPC=1155  
  jmpq .__gmpz_aorsmul_1  #  4     0x30a2a  5      OPC=930   
  nop                     #  5     0x30a2f  1      OPC=1343  
  nop                     #  6     0x30a30  1      OPC=1343  
  nop                     #  7     0x30a31  1      OPC=1343  
  nop                     #  8     0x30a32  1      OPC=1343  
  nop                     #  9     0x30a33  1      OPC=1343  
  nop                     #  10    0x30a34  1      OPC=1343  
  nop                     #  11    0x30a35  1      OPC=1343  
  nop                     #  12    0x30a36  1      OPC=1343  
  nop                     #  13    0x30a37  1      OPC=1343  
  nop                     #  14    0x30a38  1      OPC=1343  
  nop                     #  15    0x30a39  1      OPC=1343  
  nop                     #  16    0x30a3a  1      OPC=1343  
  nop                     #  17    0x30a3b  1      OPC=1343  
  nop                     #  18    0x30a3c  1      OPC=1343  
  nop                     #  19    0x30a3d  1      OPC=1343  
  nop                     #  20    0x30a3e  1      OPC=1343  
  nop                     #  21    0x30a3f  1      OPC=1343  
  nop                     #  22    0x30a40  1      OPC=1343  
                                                             
.size __gmpz_submul_ui, .-__gmpz_submul_ui

