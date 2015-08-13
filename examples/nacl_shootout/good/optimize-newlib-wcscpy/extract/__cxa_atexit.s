  .text
  .globl __cxa_atexit
  .type __cxa_atexit, @function

#! file-offset 0x1594a0
#! rip-offset  0x1194a0
#! capacity    32 bytes

# Text                       #  Line  RIP       Bytes  Opcode              
.__cxa_atexit:               #        0x1194a0  0      OPC=<label>         
  movl %edi, %edi            #  1     0x1194a0  2      OPC=movl_r32_r32    
  movl %esi, %esi            #  2     0x1194a2  2      OPC=movl_r32_r32    
  movl %edx, %ecx            #  3     0x1194a4  2      OPC=movl_r32_r32    
  movl %esi, %edx            #  4     0x1194a6  2      OPC=movl_r32_r32    
  movl %edi, %esi            #  5     0x1194a8  2      OPC=movl_r32_r32    
  movl $0x2, %edi            #  6     0x1194aa  5      OPC=movl_r32_imm32  
  jmpq .__register_exitproc  #  7     0x1194af  5      OPC=jmpq_label_1    
  nop                        #  8     0x1194b4  1      OPC=nop             
  nop                        #  9     0x1194b5  1      OPC=nop             
  nop                        #  10    0x1194b6  1      OPC=nop             
  nop                        #  11    0x1194b7  1      OPC=nop             
  nop                        #  12    0x1194b8  1      OPC=nop             
  nop                        #  13    0x1194b9  1      OPC=nop             
  nop                        #  14    0x1194ba  1      OPC=nop             
  nop                        #  15    0x1194bb  1      OPC=nop             
  nop                        #  16    0x1194bc  1      OPC=nop             
  nop                        #  17    0x1194bd  1      OPC=nop             
  nop                        #  18    0x1194be  1      OPC=nop             
  nop                        #  19    0x1194bf  1      OPC=nop             
                                                                           
.size __cxa_atexit, .-__cxa_atexit

