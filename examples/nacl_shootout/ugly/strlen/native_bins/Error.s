  .text
  .globl Error
  .type Error, @function

#! file-offset 0x58f9
#! rip-offset  0x4058f9
#! capacity    34 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.Error:                    #        0x4058f9  0      OPC=0     
  subq $0x8, %rsp          #  1     0x4058f9  4      OPC=2389  
  movq %rdi, %rdx          #  2     0x4058fd  3      OPC=1162  
  movl $0x408af5, %esi     #  3     0x405900  5      OPC=1154  
  movl $0x1, %edi          #  4     0x405905  5      OPC=1154  
  xorl %eax, %eax          #  5     0x40590a  2      OPC=3758  
  callq .__printf_chk_plt  #  6     0x40590c  5      OPC=260   
  movl $0xffffffff, %edi   #  7     0x405911  6      OPC=1155  
  callq .exit_plt          #  8     0x405917  5      OPC=260   
                                                               
.size Error, .-Error

