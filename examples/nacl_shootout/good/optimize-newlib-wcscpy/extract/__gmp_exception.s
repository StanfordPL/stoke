  .text
  .globl __gmp_exception
  .type __gmp_exception, @function

#! file-offset 0x77a40
#! rip-offset  0x37a40
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__gmp_exception:              #        0x37a40  0      OPC=<label>         
  movl $0xa, %edx              #  1     0x37a40  5      OPC=movl_r32_imm32  
  subl $0x8, %esp              #  2     0x37a45  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  3     0x37a48  3      OPC=addq_r64_r64    
  orl %edi, 0x1003abcf(%rip)   #  4     0x37a4b  6      OPC=orl_m32_r32     
  movl %edx, %eax              #  5     0x37a51  2      OPC=movl_r32_r32    
  sarl $0x1f, %edx             #  6     0x37a53  3      OPC=sarl_r32_imm8   
  idivl 0x10002524(%rip)       #  7     0x37a56  6      OPC=idivl_m32       
  nop                          #  8     0x37a5c  1      OPC=nop             
  nop                          #  9     0x37a5d  1      OPC=nop             
  nop                          #  10    0x37a5e  1      OPC=nop             
  nop                          #  11    0x37a5f  1      OPC=nop             
  movl %eax, 0x100417be(%rip)  #  12    0x37a60  6      OPC=movl_m32_r32    
  nop                          #  13    0x37a66  1      OPC=nop             
  nop                          #  14    0x37a67  1      OPC=nop             
  nop                          #  15    0x37a68  1      OPC=nop             
  nop                          #  16    0x37a69  1      OPC=nop             
  nop                          #  17    0x37a6a  1      OPC=nop             
  nop                          #  18    0x37a6b  1      OPC=nop             
  nop                          #  19    0x37a6c  1      OPC=nop             
  nop                          #  20    0x37a6d  1      OPC=nop             
  nop                          #  21    0x37a6e  1      OPC=nop             
  nop                          #  22    0x37a6f  1      OPC=nop             
  nop                          #  23    0x37a70  1      OPC=nop             
  nop                          #  24    0x37a71  1      OPC=nop             
  nop                          #  25    0x37a72  1      OPC=nop             
  nop                          #  26    0x37a73  1      OPC=nop             
  nop                          #  27    0x37a74  1      OPC=nop             
  nop                          #  28    0x37a75  1      OPC=nop             
  nop                          #  29    0x37a76  1      OPC=nop             
  nop                          #  30    0x37a77  1      OPC=nop             
  nop                          #  31    0x37a78  1      OPC=nop             
  nop                          #  32    0x37a79  1      OPC=nop             
  nop                          #  33    0x37a7a  1      OPC=nop             
  callq .abort                 #  34    0x37a7b  5      OPC=callq_label     
                                                                            
.size __gmp_exception, .-__gmp_exception

