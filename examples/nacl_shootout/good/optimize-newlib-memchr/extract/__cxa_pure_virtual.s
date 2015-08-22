  .text
  .globl __cxa_pure_virtual
  .type __cxa_pure_virtual, @function

#! file-offset 0x123d60
#! rip-offset  0xe3d60
#! capacity    64 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
.__cxa_pure_virtual:      #        0xe3d60  0      OPC=<label>         
  subl $0x8, %esp         #  1     0xe3d60  3      OPC=subl_r32_imm8   
  addq %r15, %rsp         #  2     0xe3d63  3      OPC=addq_r64_r64    
  movl $0x1b, %edx        #  3     0xe3d66  5      OPC=movl_r32_imm32  
  movl $0x1003d428, %esi  #  4     0xe3d6b  5      OPC=movl_r32_imm32  
  movl $0x2, %edi         #  5     0xe3d70  5      OPC=movl_r32_imm32  
  nop                     #  6     0xe3d75  1      OPC=nop             
  nop                     #  7     0xe3d76  1      OPC=nop             
  nop                     #  8     0xe3d77  1      OPC=nop             
  nop                     #  9     0xe3d78  1      OPC=nop             
  nop                     #  10    0xe3d79  1      OPC=nop             
  nop                     #  11    0xe3d7a  1      OPC=nop             
  callq .write            #  12    0xe3d7b  5      OPC=callq_label     
  nop                     #  13    0xe3d80  1      OPC=nop             
  nop                     #  14    0xe3d81  1      OPC=nop             
  nop                     #  15    0xe3d82  1      OPC=nop             
  nop                     #  16    0xe3d83  1      OPC=nop             
  nop                     #  17    0xe3d84  1      OPC=nop             
  nop                     #  18    0xe3d85  1      OPC=nop             
  nop                     #  19    0xe3d86  1      OPC=nop             
  nop                     #  20    0xe3d87  1      OPC=nop             
  nop                     #  21    0xe3d88  1      OPC=nop             
  nop                     #  22    0xe3d89  1      OPC=nop             
  nop                     #  23    0xe3d8a  1      OPC=nop             
  nop                     #  24    0xe3d8b  1      OPC=nop             
  nop                     #  25    0xe3d8c  1      OPC=nop             
  nop                     #  26    0xe3d8d  1      OPC=nop             
  nop                     #  27    0xe3d8e  1      OPC=nop             
  nop                     #  28    0xe3d8f  1      OPC=nop             
  nop                     #  29    0xe3d90  1      OPC=nop             
  nop                     #  30    0xe3d91  1      OPC=nop             
  nop                     #  31    0xe3d92  1      OPC=nop             
  nop                     #  32    0xe3d93  1      OPC=nop             
  nop                     #  33    0xe3d94  1      OPC=nop             
  nop                     #  34    0xe3d95  1      OPC=nop             
  nop                     #  35    0xe3d96  1      OPC=nop             
  nop                     #  36    0xe3d97  1      OPC=nop             
  nop                     #  37    0xe3d98  1      OPC=nop             
  nop                     #  38    0xe3d99  1      OPC=nop             
  nop                     #  39    0xe3d9a  1      OPC=nop             
  callq ._ZSt9terminatev  #  40    0xe3d9b  5      OPC=callq_label     
                                                                       
.size __cxa_pure_virtual, .-__cxa_pure_virtual

