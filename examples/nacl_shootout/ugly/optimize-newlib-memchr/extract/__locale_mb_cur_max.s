  .text
  .globl __locale_mb_cur_max
  .type __locale_mb_cur_max, @function

#! file-offset 0x160a60
#! rip-offset  0x120a60
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.__locale_mb_cur_max:         #        0x120a60  0      OPC=<label>         
  popq %r11                   #  1     0x120a60  2      OPC=popq_r64_1      
  movl 0xff503d8(%rip), %eax  #  2     0x120a62  6      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d     #  3     0x120a68  7      OPC=andl_r32_imm32  
  nop                         #  4     0x120a6f  1      OPC=nop             
  nop                         #  5     0x120a70  1      OPC=nop             
  nop                         #  6     0x120a71  1      OPC=nop             
  nop                         #  7     0x120a72  1      OPC=nop             
  addq %r15, %r11             #  8     0x120a73  3      OPC=addq_r64_r64    
  jmpq %r11                   #  9     0x120a76  3      OPC=jmpq_r64        
  nop                         #  10    0x120a79  1      OPC=nop             
  nop                         #  11    0x120a7a  1      OPC=nop             
  nop                         #  12    0x120a7b  1      OPC=nop             
  nop                         #  13    0x120a7c  1      OPC=nop             
  nop                         #  14    0x120a7d  1      OPC=nop             
  nop                         #  15    0x120a7e  1      OPC=nop             
  nop                         #  16    0x120a7f  1      OPC=nop             
  nop                         #  17    0x120a80  1      OPC=nop             
  nop                         #  18    0x120a81  1      OPC=nop             
  nop                         #  19    0x120a82  1      OPC=nop             
  nop                         #  20    0x120a83  1      OPC=nop             
  nop                         #  21    0x120a84  1      OPC=nop             
  nop                         #  22    0x120a85  1      OPC=nop             
  nop                         #  23    0x120a86  1      OPC=nop             
                                                                            
.size __locale_mb_cur_max, .-__locale_mb_cur_max

