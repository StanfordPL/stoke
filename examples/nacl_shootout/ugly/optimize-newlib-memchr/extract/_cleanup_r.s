  .text
  .globl _cleanup_r
  .type _cleanup_r, @function

#! file-offset 0x15b120
#! rip-offset  0x11b120
#! capacity    32 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
._cleanup_r:            #        0x11b120  0      OPC=<label>         
  movl %edi, %edi       #  1     0x11b120  2      OPC=movl_r32_r32    
  movl $0x119f80, %esi  #  2     0x11b122  5      OPC=movl_r32_imm32  
  jmpq ._fwalk_reent    #  3     0x11b127  5      OPC=jmpq_label_1    
  nop                   #  4     0x11b12c  1      OPC=nop             
  nop                   #  5     0x11b12d  1      OPC=nop             
  nop                   #  6     0x11b12e  1      OPC=nop             
  nop                   #  7     0x11b12f  1      OPC=nop             
  nop                   #  8     0x11b130  1      OPC=nop             
  nop                   #  9     0x11b131  1      OPC=nop             
  nop                   #  10    0x11b132  1      OPC=nop             
  nop                   #  11    0x11b133  1      OPC=nop             
  nop                   #  12    0x11b134  1      OPC=nop             
  nop                   #  13    0x11b135  1      OPC=nop             
  nop                   #  14    0x11b136  1      OPC=nop             
  nop                   #  15    0x11b137  1      OPC=nop             
  nop                   #  16    0x11b138  1      OPC=nop             
  nop                   #  17    0x11b139  1      OPC=nop             
  nop                   #  18    0x11b13a  1      OPC=nop             
  nop                   #  19    0x11b13b  1      OPC=nop             
  nop                   #  20    0x11b13c  1      OPC=nop             
  nop                   #  21    0x11b13d  1      OPC=nop             
  nop                   #  22    0x11b13e  1      OPC=nop             
  nop                   #  23    0x11b13f  1      OPC=nop             
                                                                      
.size _cleanup_r, .-_cleanup_r

