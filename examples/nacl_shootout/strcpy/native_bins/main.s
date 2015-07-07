  .text
  .globl main
  .type main, @function

#! file-offset 0x1831
#! rip-offset  0x401831
#! capacity    48 bytes

# Text                   #  Line  RIP       Bytes  Opcode    
.main:                   #        0x401831  0      OPC=0     
  subq $0x8, %rsp        #  1     0x401831  4      OPC=2389  
  movl $0x421e38, %edi   #  2     0x401835  5      OPC=1154  
  callq .puts_plt        #  3     0x40183a  5      OPC=260   
  xorl %edi, %edi        #  4     0x40183f  2      OPC=3758  
  callq .framework_main  #  5     0x401841  5      OPC=260   
  movl $0x421e58, %edi   #  6     0x401846  5      OPC=1154  
  callq .puts_plt        #  7     0x40184b  5      OPC=260   
  movl $0x1, %edi        #  8     0x401850  5      OPC=1154  
  callq .framework_main  #  9     0x401855  5      OPC=260   
  xorl %eax, %eax        #  10    0x40185a  2      OPC=3758  
  addq $0x8, %rsp        #  11    0x40185c  4      OPC=70    
  retq                   #  12    0x401860  1      OPC=1978  
                                                             
.size main, .-main

