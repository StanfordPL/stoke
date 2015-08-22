  .text
  .globl _user_strerror
  .type _user_strerror, @function

#! file-offset 0x177dc0
#! rip-offset  0x137dc0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
._user_strerror:           #        0x137dc0  0      OPC=<label>         
  popq %r11                #  1     0x137dc0  2      OPC=popq_r64_1      
  xorl %eax, %eax          #  2     0x137dc2  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d  #  3     0x137dc4  7      OPC=andl_r32_imm32  
  nop                      #  4     0x137dcb  1      OPC=nop             
  nop                      #  5     0x137dcc  1      OPC=nop             
  nop                      #  6     0x137dcd  1      OPC=nop             
  nop                      #  7     0x137dce  1      OPC=nop             
  addq %r15, %r11          #  8     0x137dcf  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x137dd2  3      OPC=jmpq_r64        
  nop                      #  10    0x137dd5  1      OPC=nop             
  nop                      #  11    0x137dd6  1      OPC=nop             
  nop                      #  12    0x137dd7  1      OPC=nop             
  nop                      #  13    0x137dd8  1      OPC=nop             
  nop                      #  14    0x137dd9  1      OPC=nop             
  nop                      #  15    0x137dda  1      OPC=nop             
  nop                      #  16    0x137ddb  1      OPC=nop             
  nop                      #  17    0x137ddc  1      OPC=nop             
  nop                      #  18    0x137ddd  1      OPC=nop             
  nop                      #  19    0x137dde  1      OPC=nop             
  nop                      #  20    0x137ddf  1      OPC=nop             
  nop                      #  21    0x137de0  1      OPC=nop             
  nop                      #  22    0x137de1  1      OPC=nop             
  nop                      #  23    0x137de2  1      OPC=nop             
  nop                      #  24    0x137de3  1      OPC=nop             
  nop                      #  25    0x137de4  1      OPC=nop             
  nop                      #  26    0x137de5  1      OPC=nop             
  nop                      #  27    0x137de6  1      OPC=nop             
                                                                         
.size _user_strerror, .-_user_strerror

