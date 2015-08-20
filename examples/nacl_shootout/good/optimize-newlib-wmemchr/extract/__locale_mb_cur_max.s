  .text
  .globl __locale_mb_cur_max
  .type __locale_mb_cur_max, @function

#! file-offset 0x160340
#! rip-offset  0x120340
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__locale_mb_cur_max:         #        0x120340  0      OPC=<label>         
  popq %r11                   #  1     0x120340  2      OPC=popq_r64_1      
  movl 0xff50af8(%rip), %eax  #  2     0x120342  6      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d     #  3     0x120348  7      OPC=andl_r32_imm32  
  nop                         #  4     0x12034f  1      OPC=nop             
  nop                         #  5     0x120350  1      OPC=nop             
  nop                         #  6     0x120351  1      OPC=nop             
  nop                         #  7     0x120352  1      OPC=nop             
  addq %r15, %r11             #  8     0x120353  3      OPC=addq_r64_r64    
  jmpq %r11                   #  9     0x120356  3      OPC=jmpq_r64        
  nop                         #  10    0x120359  1      OPC=nop             
  nop                         #  11    0x12035a  1      OPC=nop             
  nop                         #  12    0x12035b  1      OPC=nop             
  nop                         #  13    0x12035c  1      OPC=nop             
  nop                         #  14    0x12035d  1      OPC=nop             
  nop                         #  15    0x12035e  1      OPC=nop             
  nop                         #  16    0x12035f  1      OPC=nop             
  nop                         #  17    0x120360  1      OPC=nop             
  nop                         #  18    0x120361  1      OPC=nop             
  nop                         #  19    0x120362  1      OPC=nop             
  nop                         #  20    0x120363  1      OPC=nop             
  nop                         #  21    0x120364  1      OPC=nop             
  nop                         #  22    0x120365  1      OPC=nop             
  nop                         #  23    0x120366  1      OPC=nop             
                                                                            
.size __locale_mb_cur_max, .-__locale_mb_cur_max

