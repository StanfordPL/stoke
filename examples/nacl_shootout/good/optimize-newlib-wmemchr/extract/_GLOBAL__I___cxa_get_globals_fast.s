  .text
  .globl _GLOBAL__I___cxa_get_globals_fast
  .type _GLOBAL__I___cxa_get_globals_fast, @function

#! file-offset 0x120a20
#! rip-offset  0xe0a20
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._GLOBAL__I___cxa_get_globals_fast:  #        0xe0a20  0      OPC=<label>         
  movl $0x100704e0, %edx             #  1     0xe0a20  5      OPC=movl_r32_imm32  
  movl $0x10073634, %esi             #  2     0xe0a25  5      OPC=movl_r32_imm32  
  movl $0xe09a0, %edi                #  3     0xe0a2a  5      OPC=movl_r32_imm32  
  movb $0x0, 0xff92c02(%rip)         #  4     0xe0a2f  7      OPC=movb_m8_imm8    
  jmpq .__cxa_atexit                 #  5     0xe0a36  5      OPC=jmpq_label_1    
  nop                                #  6     0xe0a3b  1      OPC=nop             
  nop                                #  7     0xe0a3c  1      OPC=nop             
  nop                                #  8     0xe0a3d  1      OPC=nop             
  nop                                #  9     0xe0a3e  1      OPC=nop             
  nop                                #  10    0xe0a3f  1      OPC=nop             
                                                                                  
.size _GLOBAL__I___cxa_get_globals_fast, .-_GLOBAL__I___cxa_get_globals_fast

