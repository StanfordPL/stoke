  .text
  .globl Execute
  .type Execute, @function

#! file-offset 0x5b09
#! rip-offset  0x405b09
#! capacity    7 bytes

# Text               #  Line  RIP       Bytes  Opcode    
.Execute:            #        0x405b09  0      OPC=0     
  movq (%rdi), %rdx  #  1     0x405b09  3      OPC=1161  
  xorl %eax, %eax    #  2     0x405b0c  2      OPC=3758  
  jmpq %rdx          #  3     0x405b0e  2      OPC=928   
                                                         
.size Execute, .-Execute

