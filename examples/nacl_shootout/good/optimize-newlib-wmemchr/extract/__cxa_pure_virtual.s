  .text
  .globl __cxa_pure_virtual
  .type __cxa_pure_virtual, @function

#! file-offset 0x123640
#! rip-offset  0xe3640
#! capacity    64 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
.__cxa_pure_virtual:      #        0xe3640  0      OPC=<label>         
  subl $0x8, %esp         #  1     0xe3640  3      OPC=subl_r32_imm8   
  addq %r15, %rsp         #  2     0xe3643  3      OPC=addq_r64_r64    
  movl $0x1b, %edx        #  3     0xe3646  5      OPC=movl_r32_imm32  
  movl $0x1003d428, %esi  #  4     0xe364b  5      OPC=movl_r32_imm32  
  movl $0x2, %edi         #  5     0xe3650  5      OPC=movl_r32_imm32  
  nop                     #  6     0xe3655  1      OPC=nop             
  nop                     #  7     0xe3656  1      OPC=nop             
  nop                     #  8     0xe3657  1      OPC=nop             
  nop                     #  9     0xe3658  1      OPC=nop             
  nop                     #  10    0xe3659  1      OPC=nop             
  nop                     #  11    0xe365a  1      OPC=nop             
  callq .write            #  12    0xe365b  5      OPC=callq_label     
  nop                     #  13    0xe3660  1      OPC=nop             
  nop                     #  14    0xe3661  1      OPC=nop             
  nop                     #  15    0xe3662  1      OPC=nop             
  nop                     #  16    0xe3663  1      OPC=nop             
  nop                     #  17    0xe3664  1      OPC=nop             
  nop                     #  18    0xe3665  1      OPC=nop             
  nop                     #  19    0xe3666  1      OPC=nop             
  nop                     #  20    0xe3667  1      OPC=nop             
  nop                     #  21    0xe3668  1      OPC=nop             
  nop                     #  22    0xe3669  1      OPC=nop             
  nop                     #  23    0xe366a  1      OPC=nop             
  nop                     #  24    0xe366b  1      OPC=nop             
  nop                     #  25    0xe366c  1      OPC=nop             
  nop                     #  26    0xe366d  1      OPC=nop             
  nop                     #  27    0xe366e  1      OPC=nop             
  nop                     #  28    0xe366f  1      OPC=nop             
  nop                     #  29    0xe3670  1      OPC=nop             
  nop                     #  30    0xe3671  1      OPC=nop             
  nop                     #  31    0xe3672  1      OPC=nop             
  nop                     #  32    0xe3673  1      OPC=nop             
  nop                     #  33    0xe3674  1      OPC=nop             
  nop                     #  34    0xe3675  1      OPC=nop             
  nop                     #  35    0xe3676  1      OPC=nop             
  nop                     #  36    0xe3677  1      OPC=nop             
  nop                     #  37    0xe3678  1      OPC=nop             
  nop                     #  38    0xe3679  1      OPC=nop             
  nop                     #  39    0xe367a  1      OPC=nop             
  callq ._ZSt9terminatev  #  40    0xe367b  5      OPC=callq_label     
                                                                       
.size __cxa_pure_virtual, .-__cxa_pure_virtual

