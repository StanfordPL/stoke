  .text
  .globl List_RemoveAll
  .type List_RemoveAll, @function

#! file-offset 0x58ea
#! rip-offset  0x4058ea
#! capacity    15 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.List_RemoveAll:                #        0x4058ea  0      OPC=0     
  movl $0x0, 0xc(%rdi)          #  1     0x4058ea  7      OPC=1135  
  movl $0xffffffff, 0x10(%rdi)  #  2     0x4058f1  7      OPC=1135  
  retq                          #  3     0x4058f8  1      OPC=1978  
                                                                    
.size List_RemoveAll, .-List_RemoveAll

