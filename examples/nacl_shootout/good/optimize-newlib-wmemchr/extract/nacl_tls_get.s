  .text
  .globl nacl_tls_get
  .type nacl_tls_get, @function

#! file-offset 0x1591a0
#! rip-offset  0x1191a0
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.nacl_tls_get:                #        0x1191a0  0      OPC=<label>         
  movl 0xff600c6(%rip), %eax  #  1     0x1191a0  6      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax      #  2     0x1191a6  6      OPC=andl_r32_imm32  
  nop                         #  3     0x1191ac  1      OPC=nop             
  nop                         #  4     0x1191ad  1      OPC=nop             
  nop                         #  5     0x1191ae  1      OPC=nop             
  addq %r15, %rax             #  6     0x1191af  3      OPC=addq_r64_r64    
  jmpq %rax                   #  7     0x1191b2  2      OPC=jmpq_r64        
  nop                         #  8     0x1191b4  1      OPC=nop             
  nop                         #  9     0x1191b5  1      OPC=nop             
  nop                         #  10    0x1191b6  1      OPC=nop             
  nop                         #  11    0x1191b7  1      OPC=nop             
  nop                         #  12    0x1191b8  1      OPC=nop             
  nop                         #  13    0x1191b9  1      OPC=nop             
  nop                         #  14    0x1191ba  1      OPC=nop             
  nop                         #  15    0x1191bb  1      OPC=nop             
  nop                         #  16    0x1191bc  1      OPC=nop             
  nop                         #  17    0x1191bd  1      OPC=nop             
  nop                         #  18    0x1191be  1      OPC=nop             
  nop                         #  19    0x1191bf  1      OPC=nop             
  nop                         #  20    0x1191c0  1      OPC=nop             
  nop                         #  21    0x1191c1  1      OPC=nop             
  nop                         #  22    0x1191c2  1      OPC=nop             
  nop                         #  23    0x1191c3  1      OPC=nop             
  nop                         #  24    0x1191c4  1      OPC=nop             
  nop                         #  25    0x1191c5  1      OPC=nop             
                                                                            
.size nacl_tls_get, .-nacl_tls_get

