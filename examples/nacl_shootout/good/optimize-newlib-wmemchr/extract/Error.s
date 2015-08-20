  .text
  .globl Error
  .type Error, @function

#! file-offset 0x66e20
#! rip-offset  0x26e20
#! capacity    64 bytes

# Text                    #  Line  RIP      Bytes  Opcode                
.Error:                   #        0x26e20  0      OPC=<label>           
  subl $0x8, %esp         #  1     0x26e20  3      OPC=subl_r32_imm8     
  addq %r15, %rsp         #  2     0x26e23  3      OPC=addq_r64_r64      
  movl %edi, %esi         #  3     0x26e26  2      OPC=movl_r32_r32      
  movl $0x10020ad5, %edi  #  4     0x26e28  5      OPC=movl_r32_imm32    
  xorl %eax, %eax         #  5     0x26e2d  2      OPC=xorl_r32_r32      
  nop                     #  6     0x26e2f  1      OPC=nop               
  nop                     #  7     0x26e30  1      OPC=nop               
  nop                     #  8     0x26e31  1      OPC=nop               
  nop                     #  9     0x26e32  1      OPC=nop               
  nop                     #  10    0x26e33  1      OPC=nop               
  nop                     #  11    0x26e34  1      OPC=nop               
  nop                     #  12    0x26e35  1      OPC=nop               
  nop                     #  13    0x26e36  1      OPC=nop               
  nop                     #  14    0x26e37  1      OPC=nop               
  nop                     #  15    0x26e38  1      OPC=nop               
  nop                     #  16    0x26e39  1      OPC=nop               
  nop                     #  17    0x26e3a  1      OPC=nop               
  callq .printf           #  18    0x26e3b  5      OPC=callq_label       
  movl $0xffffffff, %edi  #  19    0x26e40  6      OPC=movl_r32_imm32_1  
  nop                     #  20    0x26e46  1      OPC=nop               
  nop                     #  21    0x26e47  1      OPC=nop               
  nop                     #  22    0x26e48  1      OPC=nop               
  nop                     #  23    0x26e49  1      OPC=nop               
  nop                     #  24    0x26e4a  1      OPC=nop               
  nop                     #  25    0x26e4b  1      OPC=nop               
  nop                     #  26    0x26e4c  1      OPC=nop               
  nop                     #  27    0x26e4d  1      OPC=nop               
  nop                     #  28    0x26e4e  1      OPC=nop               
  nop                     #  29    0x26e4f  1      OPC=nop               
  nop                     #  30    0x26e50  1      OPC=nop               
  nop                     #  31    0x26e51  1      OPC=nop               
  nop                     #  32    0x26e52  1      OPC=nop               
  nop                     #  33    0x26e53  1      OPC=nop               
  nop                     #  34    0x26e54  1      OPC=nop               
  nop                     #  35    0x26e55  1      OPC=nop               
  nop                     #  36    0x26e56  1      OPC=nop               
  nop                     #  37    0x26e57  1      OPC=nop               
  nop                     #  38    0x26e58  1      OPC=nop               
  nop                     #  39    0x26e59  1      OPC=nop               
  nop                     #  40    0x26e5a  1      OPC=nop               
  nop                     #  41    0x26e5b  1      OPC=nop               
  callq .exit             #  42    0x26e5c  5      OPC=callq_label       
                                                                         
.size Error, .-Error

