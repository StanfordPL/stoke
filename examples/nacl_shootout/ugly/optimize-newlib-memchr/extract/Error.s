  .text
  .globl Error
  .type Error, @function

#! file-offset 0x67380
#! rip-offset  0x27380
#! capacity    64 bytes

# Text                    #  Line  RIP      Bytes  Opcode                
.Error:                   #        0x27380  0      OPC=<label>           
  subl $0x8, %esp         #  1     0x27380  3      OPC=subl_r32_imm8     
  addq %r15, %rsp         #  2     0x27383  3      OPC=addq_r64_r64      
  movl %edi, %esi         #  3     0x27386  2      OPC=movl_r32_r32      
  movl $0x10020ad5, %edi  #  4     0x27388  5      OPC=movl_r32_imm32    
  xorl %eax, %eax         #  5     0x2738d  2      OPC=xorl_r32_r32      
  nop                     #  6     0x2738f  1      OPC=nop               
  nop                     #  7     0x27390  1      OPC=nop               
  nop                     #  8     0x27391  1      OPC=nop               
  nop                     #  9     0x27392  1      OPC=nop               
  nop                     #  10    0x27393  1      OPC=nop               
  nop                     #  11    0x27394  1      OPC=nop               
  nop                     #  12    0x27395  1      OPC=nop               
  nop                     #  13    0x27396  1      OPC=nop               
  nop                     #  14    0x27397  1      OPC=nop               
  nop                     #  15    0x27398  1      OPC=nop               
  nop                     #  16    0x27399  1      OPC=nop               
  nop                     #  17    0x2739a  1      OPC=nop               
  callq .printf           #  18    0x2739b  5      OPC=callq_label       
  movl $0xffffffff, %edi  #  19    0x273a0  6      OPC=movl_r32_imm32_1  
  nop                     #  20    0x273a6  1      OPC=nop               
  nop                     #  21    0x273a7  1      OPC=nop               
  nop                     #  22    0x273a8  1      OPC=nop               
  nop                     #  23    0x273a9  1      OPC=nop               
  nop                     #  24    0x273aa  1      OPC=nop               
  nop                     #  25    0x273ab  1      OPC=nop               
  nop                     #  26    0x273ac  1      OPC=nop               
  nop                     #  27    0x273ad  1      OPC=nop               
  nop                     #  28    0x273ae  1      OPC=nop               
  nop                     #  29    0x273af  1      OPC=nop               
  nop                     #  30    0x273b0  1      OPC=nop               
  nop                     #  31    0x273b1  1      OPC=nop               
  nop                     #  32    0x273b2  1      OPC=nop               
  nop                     #  33    0x273b3  1      OPC=nop               
  nop                     #  34    0x273b4  1      OPC=nop               
  nop                     #  35    0x273b5  1      OPC=nop               
  nop                     #  36    0x273b6  1      OPC=nop               
  nop                     #  37    0x273b7  1      OPC=nop               
  nop                     #  38    0x273b8  1      OPC=nop               
  nop                     #  39    0x273b9  1      OPC=nop               
  nop                     #  40    0x273ba  1      OPC=nop               
  nop                     #  41    0x273bb  1      OPC=nop               
  callq .exit             #  42    0x273bc  5      OPC=callq_label       
                                                                         
.size Error, .-Error

