  .text
  .globl _user_strerror
  .type _user_strerror, @function

#! file-offset 0x1776a0
#! rip-offset  0x1376a0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
._user_strerror:           #        0x1376a0  0      OPC=<label>         
  popq %r11                #  1     0x1376a0  2      OPC=popq_r64_1      
  xorl %eax, %eax          #  2     0x1376a2  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d  #  3     0x1376a4  7      OPC=andl_r32_imm32  
  nop                      #  4     0x1376ab  1      OPC=nop             
  nop                      #  5     0x1376ac  1      OPC=nop             
  nop                      #  6     0x1376ad  1      OPC=nop             
  nop                      #  7     0x1376ae  1      OPC=nop             
  addq %r15, %r11          #  8     0x1376af  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x1376b2  3      OPC=jmpq_r64        
  nop                      #  10    0x1376b5  1      OPC=nop             
  nop                      #  11    0x1376b6  1      OPC=nop             
  nop                      #  12    0x1376b7  1      OPC=nop             
  nop                      #  13    0x1376b8  1      OPC=nop             
  nop                      #  14    0x1376b9  1      OPC=nop             
  nop                      #  15    0x1376ba  1      OPC=nop             
  nop                      #  16    0x1376bb  1      OPC=nop             
  nop                      #  17    0x1376bc  1      OPC=nop             
  nop                      #  18    0x1376bd  1      OPC=nop             
  nop                      #  19    0x1376be  1      OPC=nop             
  nop                      #  20    0x1376bf  1      OPC=nop             
  nop                      #  21    0x1376c0  1      OPC=nop             
  nop                      #  22    0x1376c1  1      OPC=nop             
  nop                      #  23    0x1376c2  1      OPC=nop             
  nop                      #  24    0x1376c3  1      OPC=nop             
  nop                      #  25    0x1376c4  1      OPC=nop             
  nop                      #  26    0x1376c5  1      OPC=nop             
  nop                      #  27    0x1376c6  1      OPC=nop             
                                                                         
.size _user_strerror, .-_user_strerror

