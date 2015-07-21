  .text
  .globl quadword_aligned
  .type quadword_aligned, @function

#! file-offset 0x162c6f
#! rip-offset  0x122c6f
#! capacity    49 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.quadword_aligned:              #        0x122c6f  0      OPC=0     
  movq $0x101010101010101, %r8  #  1     0x122c6f  10     OPC=1160  
  movzbl %sil, %eax             #  2     0x122c79  4      OPC=1304  
  nop                           #  3     0x122c7d  1      OPC=1343  
  nop                           #  4     0x122c7e  1      OPC=1343  
  nop                           #  5     0x122c7f  1      OPC=1343  
  imulq %r8, %rax               #  6     0x122c80  4      OPC=828   
  cmpl $0x100, %edx             #  7     0x122c84  6      OPC=469   
  jb .quadword_set              #  8     0x122c8a  6      OPC=875   
  shrl $0x7, %ecx               #  9     0x122c90  3      OPC=2312  
  nop                           #  10    0x122c93  1      OPC=1343  
  nop                           #  11    0x122c94  1      OPC=1343  
  nop                           #  12    0x122c95  1      OPC=1343  
  nop                           #  13    0x122c96  1      OPC=1343  
  nop                           #  14    0x122c97  1      OPC=1343  
  nop                           #  15    0x122c98  1      OPC=1343  
  nop                           #  16    0x122c99  1      OPC=1343  
  nop                           #  17    0x122c9a  1      OPC=1343  
  nop                           #  18    0x122c9b  1      OPC=1343  
  nop                           #  19    0x122c9c  1      OPC=1343  
  nop                           #  20    0x122c9d  1      OPC=1343  
  nop                           #  21    0x122c9e  1      OPC=1343  
  nop                           #  22    0x122c9f  1      OPC=1343  
                                                                    
.size quadword_aligned, .-quadword_aligned

