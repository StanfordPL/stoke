  .text
  .globl __cxa_atexit
  .type __cxa_atexit, @function

#! file-offset 0x159ec0
#! rip-offset  0x119ec0
#! capacity    32 bytes

# Text                       #  Line  RIP       Bytes  Opcode              
.__cxa_atexit:               #        0x119ec0  0      OPC=<label>         
  movl %edi, %edi            #  1     0x119ec0  2      OPC=movl_r32_r32    
  movl %esi, %esi            #  2     0x119ec2  2      OPC=movl_r32_r32    
  movl %edx, %ecx            #  3     0x119ec4  2      OPC=movl_r32_r32    
  movl %esi, %edx            #  4     0x119ec6  2      OPC=movl_r32_r32    
  movl %edi, %esi            #  5     0x119ec8  2      OPC=movl_r32_r32    
  movl $0x2, %edi            #  6     0x119eca  5      OPC=movl_r32_imm32  
  jmpq .__register_exitproc  #  7     0x119ecf  5      OPC=jmpq_label_1    
  nop                        #  8     0x119ed4  1      OPC=nop             
  nop                        #  9     0x119ed5  1      OPC=nop             
  nop                        #  10    0x119ed6  1      OPC=nop             
  nop                        #  11    0x119ed7  1      OPC=nop             
  nop                        #  12    0x119ed8  1      OPC=nop             
  nop                        #  13    0x119ed9  1      OPC=nop             
  nop                        #  14    0x119eda  1      OPC=nop             
  nop                        #  15    0x119edb  1      OPC=nop             
  nop                        #  16    0x119edc  1      OPC=nop             
  nop                        #  17    0x119edd  1      OPC=nop             
  nop                        #  18    0x119ede  1      OPC=nop             
  nop                        #  19    0x119edf  1      OPC=nop             
                                                                           
.size __cxa_atexit, .-__cxa_atexit

