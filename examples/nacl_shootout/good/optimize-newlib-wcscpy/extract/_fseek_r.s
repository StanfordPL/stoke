  .text
  .globl _fseek_r
  .type _fseek_r, @function

#! file-offset 0x15bdc0
#! rip-offset  0x11bdc0
#! capacity    32 bytes

# Text               #  Line  RIP       Bytes  Opcode              
._fseek_r:           #        0x11bdc0  0      OPC=<label>         
  movl %edi, %edi    #  1     0x11bdc0  2      OPC=movl_r32_r32    
  movl %esi, %esi    #  2     0x11bdc2  2      OPC=movl_r32_r32    
  movslq %edx, %rdx  #  3     0x11bdc4  3      OPC=movslq_r64_r32  
  jmpq ._fseeko_r    #  4     0x11bdc7  5      OPC=jmpq_label_1    
  nop                #  5     0x11bdcc  1      OPC=nop             
  nop                #  6     0x11bdcd  1      OPC=nop             
  nop                #  7     0x11bdce  1      OPC=nop             
  nop                #  8     0x11bdcf  1      OPC=nop             
  nop                #  9     0x11bdd0  1      OPC=nop             
  nop                #  10    0x11bdd1  1      OPC=nop             
  nop                #  11    0x11bdd2  1      OPC=nop             
  nop                #  12    0x11bdd3  1      OPC=nop             
  nop                #  13    0x11bdd4  1      OPC=nop             
  nop                #  14    0x11bdd5  1      OPC=nop             
  nop                #  15    0x11bdd6  1      OPC=nop             
  nop                #  16    0x11bdd7  1      OPC=nop             
  nop                #  17    0x11bdd8  1      OPC=nop             
  nop                #  18    0x11bdd9  1      OPC=nop             
  nop                #  19    0x11bdda  1      OPC=nop             
  nop                #  20    0x11bddb  1      OPC=nop             
  nop                #  21    0x11bddc  1      OPC=nop             
  nop                #  22    0x11bddd  1      OPC=nop             
  nop                #  23    0x11bdde  1      OPC=nop             
  nop                #  24    0x11bddf  1      OPC=nop             
                                                                   
.size _fseek_r, .-_fseek_r

