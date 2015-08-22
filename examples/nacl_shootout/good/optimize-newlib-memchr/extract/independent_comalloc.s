  .text
  .globl independent_comalloc
  .type independent_comalloc, @function

#! file-offset 0x158ae0
#! rip-offset  0x118ae0
#! capacity    32 bytes

# Text                  #  Line  RIP       Bytes  Opcode            
.independent_comalloc:  #        0x118ae0  0      OPC=<label>       
  movl %edx, %ecx       #  1     0x118ae0  2      OPC=movl_r32_r32  
  movl %esi, %esi       #  2     0x118ae2  2      OPC=movl_r32_r32  
  xorl %edx, %edx       #  3     0x118ae4  2      OPC=xorl_r32_r32  
  jmpq .T_278           #  4     0x118ae6  5      OPC=jmpq_label_1  
  nop                   #  5     0x118aeb  1      OPC=nop           
  nop                   #  6     0x118aec  1      OPC=nop           
  nop                   #  7     0x118aed  1      OPC=nop           
  nop                   #  8     0x118aee  1      OPC=nop           
  nop                   #  9     0x118aef  1      OPC=nop           
  nop                   #  10    0x118af0  1      OPC=nop           
  nop                   #  11    0x118af1  1      OPC=nop           
  nop                   #  12    0x118af2  1      OPC=nop           
  nop                   #  13    0x118af3  1      OPC=nop           
  nop                   #  14    0x118af4  1      OPC=nop           
  nop                   #  15    0x118af5  1      OPC=nop           
  nop                   #  16    0x118af6  1      OPC=nop           
  nop                   #  17    0x118af7  1      OPC=nop           
  nop                   #  18    0x118af8  1      OPC=nop           
  nop                   #  19    0x118af9  1      OPC=nop           
  nop                   #  20    0x118afa  1      OPC=nop           
  nop                   #  21    0x118afb  1      OPC=nop           
  nop                   #  22    0x118afc  1      OPC=nop           
  nop                   #  23    0x118afd  1      OPC=nop           
  nop                   #  24    0x118afe  1      OPC=nop           
  nop                   #  25    0x118aff  1      OPC=nop           
                                                                    
.size independent_comalloc, .-independent_comalloc

