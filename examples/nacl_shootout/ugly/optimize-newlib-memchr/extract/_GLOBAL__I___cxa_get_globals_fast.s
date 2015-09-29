  .text
  .globl _GLOBAL__I___cxa_get_globals_fast
  .type _GLOBAL__I___cxa_get_globals_fast, @function

#! file-offset 0x121140
#! rip-offset  0xe1140
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._GLOBAL__I___cxa_get_globals_fast:  #        0xe1140  0      OPC=<label>         
  movl $0x100704e0, %edx             #  1     0xe1140  5      OPC=movl_r32_imm32  
  movl $0x10073634, %esi             #  2     0xe1145  5      OPC=movl_r32_imm32  
  movl $0xe10c0, %edi                #  3     0xe114a  5      OPC=movl_r32_imm32  
  movb $0x0, 0xff924e2(%rip)         #  4     0xe114f  7      OPC=movb_m8_imm8    
  jmpq .__cxa_atexit                 #  5     0xe1156  5      OPC=jmpq_label_1    
  nop                                #  6     0xe115b  1      OPC=nop             
  nop                                #  7     0xe115c  1      OPC=nop             
  nop                                #  8     0xe115d  1      OPC=nop             
  nop                                #  9     0xe115e  1      OPC=nop             
  nop                                #  10    0xe115f  1      OPC=nop             
                                                                                  
.size _GLOBAL__I___cxa_get_globals_fast, .-_GLOBAL__I___cxa_get_globals_fast

