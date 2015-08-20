  .text
  .globl nacl_tls_init
  .type nacl_tls_init, @function

#! file-offset 0x1594c0
#! rip-offset  0x1194c0
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.nacl_tls_init:               #        0x1194c0  0      OPC=<label>         
  movl 0xff5fda2(%rip), %eax  #  1     0x1194c0  6      OPC=movl_r32_m32    
  movl %edi, %edi             #  2     0x1194c6  2      OPC=movl_r32_r32    
  andl $0xffffffe0, %eax      #  3     0x1194c8  6      OPC=andl_r32_imm32  
  nop                         #  4     0x1194ce  1      OPC=nop             
  nop                         #  5     0x1194cf  1      OPC=nop             
  nop                         #  6     0x1194d0  1      OPC=nop             
  addq %r15, %rax             #  7     0x1194d1  3      OPC=addq_r64_r64    
  jmpq %rax                   #  8     0x1194d4  2      OPC=jmpq_r64        
  nop                         #  9     0x1194d6  1      OPC=nop             
  nop                         #  10    0x1194d7  1      OPC=nop             
  nop                         #  11    0x1194d8  1      OPC=nop             
  nop                         #  12    0x1194d9  1      OPC=nop             
  nop                         #  13    0x1194da  1      OPC=nop             
  nop                         #  14    0x1194db  1      OPC=nop             
  nop                         #  15    0x1194dc  1      OPC=nop             
  nop                         #  16    0x1194dd  1      OPC=nop             
  nop                         #  17    0x1194de  1      OPC=nop             
  nop                         #  18    0x1194df  1      OPC=nop             
  nop                         #  19    0x1194e0  1      OPC=nop             
  nop                         #  20    0x1194e1  1      OPC=nop             
  nop                         #  21    0x1194e2  1      OPC=nop             
  nop                         #  22    0x1194e3  1      OPC=nop             
  nop                         #  23    0x1194e4  1      OPC=nop             
  nop                         #  24    0x1194e5  1      OPC=nop             
                                                                            
.size nacl_tls_init, .-nacl_tls_init

