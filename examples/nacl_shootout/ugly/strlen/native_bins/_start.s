  .text
  .globl _start
  .type _start, @function

#! file-offset 0x1861
#! rip-offset  0x401861
#! capacity    47 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
._start:                        #        0x401861  0      OPC=0     
  xorl %ebp, %ebp               #  1     0x401861  2      OPC=3758  
  movq %rdx, %r9                #  2     0x401863  3      OPC=1162  
  popq %rsi                     #  3     0x401866  1      OPC=1694  
  movq %rsp, %rdx               #  4     0x401867  3      OPC=1162  
  andq $0xf0, %rsp              #  5     0x40186a  4      OPC=137   
  pushq %rax                    #  6     0x40186e  1      OPC=1861  
  pushq %rsp                    #  7     0x40186f  1      OPC=1861  
  movq $0x408200, %r8           #  8     0x401870  7      OPC=1159  
  movq $0x408190, %rcx          #  9     0x401877  7      OPC=1159  
  movq $0x401831, %rdi          #  10    0x40187e  7      OPC=1159  
  callq .__libc_start_main_plt  #  11    0x401885  5      OPC=260   
  retq                          #  12    0x40188a  1      OPC=1978  
  nop                           #  13    0x40188b  1      OPC=1343  
  nop                           #  14    0x40188c  1      OPC=1343  
  nop                           #  15    0x40188d  1      OPC=1343  
  nop                           #  16    0x40188e  1      OPC=1343  
  nop                           #  17    0x40188f  1      OPC=1343  
                                                                    
.size _start, .-_start

