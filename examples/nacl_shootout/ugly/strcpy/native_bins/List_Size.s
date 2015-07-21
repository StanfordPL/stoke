  .text
  .globl List_Size
  .type List_Size, @function

#! file-offset 0x5873
#! rip-offset  0x405873
#! capacity    10 bytes

# Text                   #  Line  RIP       Bytes  Opcode    
.List_Size:              #        0x405873  0      OPC=0     
  movl 0x10(%rdi), %eax  #  1     0x405873  3      OPC=1156  
  subl 0xc(%rdi), %eax   #  2     0x405876  3      OPC=2385  
  addl $0x1, %eax        #  3     0x405879  3      OPC=65    
  retq                   #  4     0x40587c  1      OPC=1978  
                                                             
.size List_Size, .-List_Size

