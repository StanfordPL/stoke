  .text
  .globl __gmp_exception
  .type __gmp_exception, @function

#! file-offset 0x77d40
#! rip-offset  0x37d40
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__gmp_exception:              #        0x37d40  0      OPC=<label>         
  movl $0xa, %edx              #  1     0x37d40  5      OPC=movl_r32_imm32  
  subl $0x8, %esp              #  2     0x37d45  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  3     0x37d48  3      OPC=addq_r64_r64    
  orl %edi, 0x1003a8cf(%rip)   #  4     0x37d4b  6      OPC=orl_m32_r32     
  movl %edx, %eax              #  5     0x37d51  2      OPC=movl_r32_r32    
  sarl $0x1f, %edx             #  6     0x37d53  3      OPC=sarl_r32_imm8   
  idivl 0x10002224(%rip)       #  7     0x37d56  6      OPC=idivl_m32       
  nop                          #  8     0x37d5c  1      OPC=nop             
  nop                          #  9     0x37d5d  1      OPC=nop             
  nop                          #  10    0x37d5e  1      OPC=nop             
  nop                          #  11    0x37d5f  1      OPC=nop             
  movl %eax, 0x100414be(%rip)  #  12    0x37d60  6      OPC=movl_m32_r32    
  nop                          #  13    0x37d66  1      OPC=nop             
  nop                          #  14    0x37d67  1      OPC=nop             
  nop                          #  15    0x37d68  1      OPC=nop             
  nop                          #  16    0x37d69  1      OPC=nop             
  nop                          #  17    0x37d6a  1      OPC=nop             
  nop                          #  18    0x37d6b  1      OPC=nop             
  nop                          #  19    0x37d6c  1      OPC=nop             
  nop                          #  20    0x37d6d  1      OPC=nop             
  nop                          #  21    0x37d6e  1      OPC=nop             
  nop                          #  22    0x37d6f  1      OPC=nop             
  nop                          #  23    0x37d70  1      OPC=nop             
  nop                          #  24    0x37d71  1      OPC=nop             
  nop                          #  25    0x37d72  1      OPC=nop             
  nop                          #  26    0x37d73  1      OPC=nop             
  nop                          #  27    0x37d74  1      OPC=nop             
  nop                          #  28    0x37d75  1      OPC=nop             
  nop                          #  29    0x37d76  1      OPC=nop             
  nop                          #  30    0x37d77  1      OPC=nop             
  nop                          #  31    0x37d78  1      OPC=nop             
  nop                          #  32    0x37d79  1      OPC=nop             
  nop                          #  33    0x37d7a  1      OPC=nop             
  callq .abort                 #  34    0x37d7b  5      OPC=callq_label     
                                                                            
.size __gmp_exception, .-__gmp_exception

