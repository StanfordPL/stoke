  .text
  .globl nacl_tls_get
  .type nacl_tls_get, @function

#! file-offset 0x1598c0
#! rip-offset  0x1198c0
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.nacl_tls_get:                #        0x1198c0  0      OPC=<label>         
  movl 0xff5f9a6(%rip), %eax  #  1     0x1198c0  6      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax      #  2     0x1198c6  6      OPC=andl_r32_imm32  
  nop                         #  3     0x1198cc  1      OPC=nop             
  nop                         #  4     0x1198cd  1      OPC=nop             
  nop                         #  5     0x1198ce  1      OPC=nop             
  addq %r15, %rax             #  6     0x1198cf  3      OPC=addq_r64_r64    
  jmpq %rax                   #  7     0x1198d2  2      OPC=jmpq_r64        
  nop                         #  8     0x1198d4  1      OPC=nop             
  nop                         #  9     0x1198d5  1      OPC=nop             
  nop                         #  10    0x1198d6  1      OPC=nop             
  nop                         #  11    0x1198d7  1      OPC=nop             
  nop                         #  12    0x1198d8  1      OPC=nop             
  nop                         #  13    0x1198d9  1      OPC=nop             
  nop                         #  14    0x1198da  1      OPC=nop             
  nop                         #  15    0x1198db  1      OPC=nop             
  nop                         #  16    0x1198dc  1      OPC=nop             
  nop                         #  17    0x1198dd  1      OPC=nop             
  nop                         #  18    0x1198de  1      OPC=nop             
  nop                         #  19    0x1198df  1      OPC=nop             
  nop                         #  20    0x1198e0  1      OPC=nop             
  nop                         #  21    0x1198e1  1      OPC=nop             
  nop                         #  22    0x1198e2  1      OPC=nop             
  nop                         #  23    0x1198e3  1      OPC=nop             
  nop                         #  24    0x1198e4  1      OPC=nop             
  nop                         #  25    0x1198e5  1      OPC=nop             
                                                                            
.size nacl_tls_get, .-nacl_tls_get

