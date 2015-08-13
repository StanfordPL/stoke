  .text
  .globl _user_strerror
  .type _user_strerror, @function

#! file-offset 0x1773a0
#! rip-offset  0x1373a0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
._user_strerror:           #        0x1373a0  0      OPC=<label>         
  popq %r11                #  1     0x1373a0  2      OPC=popq_r64_1      
  xorl %eax, %eax          #  2     0x1373a2  2      OPC=xorl_r32_r32    
  andl $0xffffffe0, %r11d  #  3     0x1373a4  7      OPC=andl_r32_imm32  
  nop                      #  4     0x1373ab  1      OPC=nop             
  nop                      #  5     0x1373ac  1      OPC=nop             
  nop                      #  6     0x1373ad  1      OPC=nop             
  nop                      #  7     0x1373ae  1      OPC=nop             
  addq %r15, %r11          #  8     0x1373af  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x1373b2  3      OPC=jmpq_r64        
  nop                      #  10    0x1373b5  1      OPC=nop             
  nop                      #  11    0x1373b6  1      OPC=nop             
  nop                      #  12    0x1373b7  1      OPC=nop             
  nop                      #  13    0x1373b8  1      OPC=nop             
  nop                      #  14    0x1373b9  1      OPC=nop             
  nop                      #  15    0x1373ba  1      OPC=nop             
  nop                      #  16    0x1373bb  1      OPC=nop             
  nop                      #  17    0x1373bc  1      OPC=nop             
  nop                      #  18    0x1373bd  1      OPC=nop             
  nop                      #  19    0x1373be  1      OPC=nop             
  nop                      #  20    0x1373bf  1      OPC=nop             
  nop                      #  21    0x1373c0  1      OPC=nop             
  nop                      #  22    0x1373c1  1      OPC=nop             
  nop                      #  23    0x1373c2  1      OPC=nop             
  nop                      #  24    0x1373c3  1      OPC=nop             
  nop                      #  25    0x1373c4  1      OPC=nop             
  nop                      #  26    0x1373c5  1      OPC=nop             
  nop                      #  27    0x1373c6  1      OPC=nop             
                                                                         
.size _user_strerror, .-_user_strerror

