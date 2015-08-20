  .text
  .globl __cxa_atexit
  .type __cxa_atexit, @function

#! file-offset 0x1597a0
#! rip-offset  0x1197a0
#! capacity    32 bytes

# Text                       #  Line  RIP       Bytes  Opcode              
.__cxa_atexit:               #        0x1197a0  0      OPC=<label>         
  movl %edi, %edi            #  1     0x1197a0  2      OPC=movl_r32_r32    
  movl %esi, %esi            #  2     0x1197a2  2      OPC=movl_r32_r32    
  movl %edx, %ecx            #  3     0x1197a4  2      OPC=movl_r32_r32    
  movl %esi, %edx            #  4     0x1197a6  2      OPC=movl_r32_r32    
  movl %edi, %esi            #  5     0x1197a8  2      OPC=movl_r32_r32    
  movl $0x2, %edi            #  6     0x1197aa  5      OPC=movl_r32_imm32  
  jmpq .__register_exitproc  #  7     0x1197af  5      OPC=jmpq_label_1    
  nop                        #  8     0x1197b4  1      OPC=nop             
  nop                        #  9     0x1197b5  1      OPC=nop             
  nop                        #  10    0x1197b6  1      OPC=nop             
  nop                        #  11    0x1197b7  1      OPC=nop             
  nop                        #  12    0x1197b8  1      OPC=nop             
  nop                        #  13    0x1197b9  1      OPC=nop             
  nop                        #  14    0x1197ba  1      OPC=nop             
  nop                        #  15    0x1197bb  1      OPC=nop             
  nop                        #  16    0x1197bc  1      OPC=nop             
  nop                        #  17    0x1197bd  1      OPC=nop             
  nop                        #  18    0x1197be  1      OPC=nop             
  nop                        #  19    0x1197bf  1      OPC=nop             
                                                                           
.size __cxa_atexit, .-__cxa_atexit

