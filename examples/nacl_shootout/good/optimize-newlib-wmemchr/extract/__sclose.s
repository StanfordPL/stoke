  .text
  .globl __sclose
  .type __sclose, @function

#! file-offset 0x166520
#! rip-offset  0x126520
#! capacity    32 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.__sclose:                       #        0x126520  0      OPC=<label>         
  movl %esi, %esi                #  1     0x126520  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  2     0x126522  2      OPC=movl_r32_r32    
  movswl 0xe(%r15,%rsi,1), %edi  #  3     0x126524  6      OPC=movswl_r32_m16  
  jmpq .close                    #  4     0x12652a  5      OPC=jmpq_label_1    
  xchgw %ax, %ax                 #  5     0x12652f  2      OPC=xchgw_ax_r16    
  nop                            #  6     0x126531  1      OPC=nop             
  nop                            #  7     0x126532  1      OPC=nop             
  nop                            #  8     0x126533  1      OPC=nop             
  nop                            #  9     0x126534  1      OPC=nop             
  nop                            #  10    0x126535  1      OPC=nop             
  nop                            #  11    0x126536  1      OPC=nop             
  nop                            #  12    0x126537  1      OPC=nop             
  nop                            #  13    0x126538  1      OPC=nop             
  nop                            #  14    0x126539  1      OPC=nop             
  nop                            #  15    0x12653a  1      OPC=nop             
  nop                            #  16    0x12653b  1      OPC=nop             
  nop                            #  17    0x12653c  1      OPC=nop             
  nop                            #  18    0x12653d  1      OPC=nop             
  nop                            #  19    0x12653e  1      OPC=nop             
  nop                            #  20    0x12653f  1      OPC=nop             
                                                                               
.size __sclose, .-__sclose

