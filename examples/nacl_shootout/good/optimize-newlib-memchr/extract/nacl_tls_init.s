  .text
  .globl nacl_tls_init
  .type nacl_tls_init, @function

#! file-offset 0x159be0
#! rip-offset  0x119be0
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.nacl_tls_init:               #        0x119be0  0      OPC=<label>         
  movl 0xff5f682(%rip), %eax  #  1     0x119be0  6      OPC=movl_r32_m32    
  movl %edi, %edi             #  2     0x119be6  2      OPC=movl_r32_r32    
  andl $0xffffffe0, %eax      #  3     0x119be8  6      OPC=andl_r32_imm32  
  nop                         #  4     0x119bee  1      OPC=nop             
  nop                         #  5     0x119bef  1      OPC=nop             
  nop                         #  6     0x119bf0  1      OPC=nop             
  addq %r15, %rax             #  7     0x119bf1  3      OPC=addq_r64_r64    
  jmpq %rax                   #  8     0x119bf4  2      OPC=jmpq_r64        
  nop                         #  9     0x119bf6  1      OPC=nop             
  nop                         #  10    0x119bf7  1      OPC=nop             
  nop                         #  11    0x119bf8  1      OPC=nop             
  nop                         #  12    0x119bf9  1      OPC=nop             
  nop                         #  13    0x119bfa  1      OPC=nop             
  nop                         #  14    0x119bfb  1      OPC=nop             
  nop                         #  15    0x119bfc  1      OPC=nop             
  nop                         #  16    0x119bfd  1      OPC=nop             
  nop                         #  17    0x119bfe  1      OPC=nop             
  nop                         #  18    0x119bff  1      OPC=nop             
  nop                         #  19    0x119c00  1      OPC=nop             
  nop                         #  20    0x119c01  1      OPC=nop             
  nop                         #  21    0x119c02  1      OPC=nop             
  nop                         #  22    0x119c03  1      OPC=nop             
  nop                         #  23    0x119c04  1      OPC=nop             
  nop                         #  24    0x119c05  1      OPC=nop             
                                                                            
.size nacl_tls_init, .-nacl_tls_init

