  .text
  .globl __libnacl_irt_mprotect
  .type __libnacl_irt_mprotect, @function

#! file-offset 0x1598e0
#! rip-offset  0x1198e0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__libnacl_irt_mprotect:   #        0x1198e0  0      OPC=<label>         
  popq %r11                #  1     0x1198e0  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x1198e2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x1198e7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x1198ee  1      OPC=nop             
  nop                      #  5     0x1198ef  1      OPC=nop             
  nop                      #  6     0x1198f0  1      OPC=nop             
  nop                      #  7     0x1198f1  1      OPC=nop             
  addq %r15, %r11          #  8     0x1198f2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x1198f5  3      OPC=jmpq_r64        
  nop                      #  10    0x1198f8  1      OPC=nop             
  nop                      #  11    0x1198f9  1      OPC=nop             
  nop                      #  12    0x1198fa  1      OPC=nop             
  nop                      #  13    0x1198fb  1      OPC=nop             
  nop                      #  14    0x1198fc  1      OPC=nop             
  nop                      #  15    0x1198fd  1      OPC=nop             
  nop                      #  16    0x1198fe  1      OPC=nop             
  nop                      #  17    0x1198ff  1      OPC=nop             
  nop                      #  18    0x119900  1      OPC=nop             
  nop                      #  19    0x119901  1      OPC=nop             
  nop                      #  20    0x119902  1      OPC=nop             
  nop                      #  21    0x119903  1      OPC=nop             
  nop                      #  22    0x119904  1      OPC=nop             
  nop                      #  23    0x119905  1      OPC=nop             
  nop                      #  24    0x119906  1      OPC=nop             
                                                                         
.size __libnacl_irt_mprotect, .-__libnacl_irt_mprotect

