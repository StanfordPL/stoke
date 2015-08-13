  .text
  .globl __sclose
  .type __sclose, @function

#! file-offset 0x166220
#! rip-offset  0x126220
#! capacity    32 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.__sclose:                       #        0x126220  0      OPC=<label>         
  movl %esi, %esi                #  1     0x126220  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  2     0x126222  2      OPC=movl_r32_r32    
  movswl 0xe(%r15,%rsi,1), %edi  #  3     0x126224  6      OPC=movswl_r32_m16  
  jmpq .close                    #  4     0x12622a  5      OPC=jmpq_label_1    
  xchgw %ax, %ax                 #  5     0x12622f  2      OPC=xchgw_ax_r16    
  nop                            #  6     0x126231  1      OPC=nop             
  nop                            #  7     0x126232  1      OPC=nop             
  nop                            #  8     0x126233  1      OPC=nop             
  nop                            #  9     0x126234  1      OPC=nop             
  nop                            #  10    0x126235  1      OPC=nop             
  nop                            #  11    0x126236  1      OPC=nop             
  nop                            #  12    0x126237  1      OPC=nop             
  nop                            #  13    0x126238  1      OPC=nop             
  nop                            #  14    0x126239  1      OPC=nop             
  nop                            #  15    0x12623a  1      OPC=nop             
  nop                            #  16    0x12623b  1      OPC=nop             
  nop                            #  17    0x12623c  1      OPC=nop             
  nop                            #  18    0x12623d  1      OPC=nop             
  nop                            #  19    0x12623e  1      OPC=nop             
  nop                            #  20    0x12623f  1      OPC=nop             
                                                                               
.size __sclose, .-__sclose

