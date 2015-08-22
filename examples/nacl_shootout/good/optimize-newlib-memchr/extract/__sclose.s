  .text
  .globl __sclose
  .type __sclose, @function

#! file-offset 0x166c40
#! rip-offset  0x126c40
#! capacity    32 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.__sclose:                       #        0x126c40  0      OPC=<label>         
  movl %esi, %esi                #  1     0x126c40  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  2     0x126c42  2      OPC=movl_r32_r32    
  movswl 0xe(%r15,%rsi,1), %edi  #  3     0x126c44  6      OPC=movswl_r32_m16  
  jmpq .close                    #  4     0x126c4a  5      OPC=jmpq_label_1    
  xchgw %ax, %ax                 #  5     0x126c4f  2      OPC=xchgw_ax_r16    
  nop                            #  6     0x126c51  1      OPC=nop             
  nop                            #  7     0x126c52  1      OPC=nop             
  nop                            #  8     0x126c53  1      OPC=nop             
  nop                            #  9     0x126c54  1      OPC=nop             
  nop                            #  10    0x126c55  1      OPC=nop             
  nop                            #  11    0x126c56  1      OPC=nop             
  nop                            #  12    0x126c57  1      OPC=nop             
  nop                            #  13    0x126c58  1      OPC=nop             
  nop                            #  14    0x126c59  1      OPC=nop             
  nop                            #  15    0x126c5a  1      OPC=nop             
  nop                            #  16    0x126c5b  1      OPC=nop             
  nop                            #  17    0x126c5c  1      OPC=nop             
  nop                            #  18    0x126c5d  1      OPC=nop             
  nop                            #  19    0x126c5e  1      OPC=nop             
  nop                            #  20    0x126c5f  1      OPC=nop             
                                                                               
.size __sclose, .-__sclose

