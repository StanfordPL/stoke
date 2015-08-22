  .text
  .globl __gmp_exception
  .type __gmp_exception, @function

#! file-offset 0x78460
#! rip-offset  0x38460
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__gmp_exception:              #        0x38460  0      OPC=<label>         
  movl $0xa, %edx              #  1     0x38460  5      OPC=movl_r32_imm32  
  subl $0x8, %esp              #  2     0x38465  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  3     0x38468  3      OPC=addq_r64_r64    
  orl %edi, 0x1003a1af(%rip)   #  4     0x3846b  6      OPC=orl_m32_r32     
  movl %edx, %eax              #  5     0x38471  2      OPC=movl_r32_r32    
  sarl $0x1f, %edx             #  6     0x38473  3      OPC=sarl_r32_imm8   
  idivl 0x10001b04(%rip)       #  7     0x38476  6      OPC=idivl_m32       
  nop                          #  8     0x3847c  1      OPC=nop             
  nop                          #  9     0x3847d  1      OPC=nop             
  nop                          #  10    0x3847e  1      OPC=nop             
  nop                          #  11    0x3847f  1      OPC=nop             
  movl %eax, 0x10040d9e(%rip)  #  12    0x38480  6      OPC=movl_m32_r32    
  nop                          #  13    0x38486  1      OPC=nop             
  nop                          #  14    0x38487  1      OPC=nop             
  nop                          #  15    0x38488  1      OPC=nop             
  nop                          #  16    0x38489  1      OPC=nop             
  nop                          #  17    0x3848a  1      OPC=nop             
  nop                          #  18    0x3848b  1      OPC=nop             
  nop                          #  19    0x3848c  1      OPC=nop             
  nop                          #  20    0x3848d  1      OPC=nop             
  nop                          #  21    0x3848e  1      OPC=nop             
  nop                          #  22    0x3848f  1      OPC=nop             
  nop                          #  23    0x38490  1      OPC=nop             
  nop                          #  24    0x38491  1      OPC=nop             
  nop                          #  25    0x38492  1      OPC=nop             
  nop                          #  26    0x38493  1      OPC=nop             
  nop                          #  27    0x38494  1      OPC=nop             
  nop                          #  28    0x38495  1      OPC=nop             
  nop                          #  29    0x38496  1      OPC=nop             
  nop                          #  30    0x38497  1      OPC=nop             
  nop                          #  31    0x38498  1      OPC=nop             
  nop                          #  32    0x38499  1      OPC=nop             
  nop                          #  33    0x3849a  1      OPC=nop             
  callq .abort                 #  34    0x3849b  5      OPC=callq_label     
                                                                            
.size __gmp_exception, .-__gmp_exception

