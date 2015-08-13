  .text
  .globl __libnacl_irt_mprotect
  .type __libnacl_irt_mprotect, @function

#! file-offset 0x158ec0
#! rip-offset  0x118ec0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__libnacl_irt_mprotect:   #        0x118ec0  0      OPC=<label>         
  popq %r11                #  1     0x118ec0  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x118ec2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x118ec7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x118ece  1      OPC=nop             
  nop                      #  5     0x118ecf  1      OPC=nop             
  nop                      #  6     0x118ed0  1      OPC=nop             
  nop                      #  7     0x118ed1  1      OPC=nop             
  addq %r15, %r11          #  8     0x118ed2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x118ed5  3      OPC=jmpq_r64        
  nop                      #  10    0x118ed8  1      OPC=nop             
  nop                      #  11    0x118ed9  1      OPC=nop             
  nop                      #  12    0x118eda  1      OPC=nop             
  nop                      #  13    0x118edb  1      OPC=nop             
  nop                      #  14    0x118edc  1      OPC=nop             
  nop                      #  15    0x118edd  1      OPC=nop             
  nop                      #  16    0x118ede  1      OPC=nop             
  nop                      #  17    0x118edf  1      OPC=nop             
  nop                      #  18    0x118ee0  1      OPC=nop             
  nop                      #  19    0x118ee1  1      OPC=nop             
  nop                      #  20    0x118ee2  1      OPC=nop             
  nop                      #  21    0x118ee3  1      OPC=nop             
  nop                      #  22    0x118ee4  1      OPC=nop             
  nop                      #  23    0x118ee5  1      OPC=nop             
  nop                      #  24    0x118ee6  1      OPC=nop             
                                                                         
.size __libnacl_irt_mprotect, .-__libnacl_irt_mprotect

