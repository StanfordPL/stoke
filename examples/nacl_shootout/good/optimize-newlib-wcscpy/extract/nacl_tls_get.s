  .text
  .globl nacl_tls_get
  .type nacl_tls_get, @function

#! file-offset 0x158ea0
#! rip-offset  0x118ea0
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.nacl_tls_get:                #        0x118ea0  0      OPC=<label>         
  movl 0xff603c6(%rip), %eax  #  1     0x118ea0  6      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax      #  2     0x118ea6  6      OPC=andl_r32_imm32  
  nop                         #  3     0x118eac  1      OPC=nop             
  nop                         #  4     0x118ead  1      OPC=nop             
  nop                         #  5     0x118eae  1      OPC=nop             
  addq %r15, %rax             #  6     0x118eaf  3      OPC=addq_r64_r64    
  jmpq %rax                   #  7     0x118eb2  2      OPC=jmpq_r64        
  nop                         #  8     0x118eb4  1      OPC=nop             
  nop                         #  9     0x118eb5  1      OPC=nop             
  nop                         #  10    0x118eb6  1      OPC=nop             
  nop                         #  11    0x118eb7  1      OPC=nop             
  nop                         #  12    0x118eb8  1      OPC=nop             
  nop                         #  13    0x118eb9  1      OPC=nop             
  nop                         #  14    0x118eba  1      OPC=nop             
  nop                         #  15    0x118ebb  1      OPC=nop             
  nop                         #  16    0x118ebc  1      OPC=nop             
  nop                         #  17    0x118ebd  1      OPC=nop             
  nop                         #  18    0x118ebe  1      OPC=nop             
  nop                         #  19    0x118ebf  1      OPC=nop             
  nop                         #  20    0x118ec0  1      OPC=nop             
  nop                         #  21    0x118ec1  1      OPC=nop             
  nop                         #  22    0x118ec2  1      OPC=nop             
  nop                         #  23    0x118ec3  1      OPC=nop             
  nop                         #  24    0x118ec4  1      OPC=nop             
  nop                         #  25    0x118ec5  1      OPC=nop             
                                                                            
.size nacl_tls_get, .-nacl_tls_get

