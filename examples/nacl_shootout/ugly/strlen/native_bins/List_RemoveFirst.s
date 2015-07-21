  .text
  .globl List_RemoveFirst
  .type List_RemoveFirst, @function

#! file-offset 0x58d0
#! rip-offset  0x4058d0
#! capacity    26 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.List_RemoveFirst:          #        0x4058d0  0      OPC=0     
  movslq 0xc(%rdi), %rax    #  1     0x4058d0  4      OPC=1288  
  cmpl %eax, 0x10(%rdi)     #  2     0x4058d4  3      OPC=457   
  jl .L_4058e7              #  3     0x4058d7  6      OPC=913   
  nop                       #  4     0x4058dd  1      OPC=1343  
  nop                       #  5     0x4058de  1      OPC=1343  
  movq (%rdi), %rdx         #  6     0x4058df  3      OPC=1161  
  leal 0x1(%rax), %ecx      #  7     0x4058e2  3      OPC=1066  
  movl %ecx, 0xc(%rdi)      #  8     0x4058e5  3      OPC=1136  
  movq (%rdx,%rax,8), %rax  #  9     0x4058e8  4      OPC=1161  
  retq                      #  10    0x4058ec  1      OPC=1978  
.L_4058e7:                  #        0x4058ed  0      OPC=0     
  xorl %eax, %eax           #  11    0x4058ed  2      OPC=3758  
  retq                      #  12    0x4058ef  1      OPC=1978  
                                                                
.size List_RemoveFirst, .-List_RemoveFirst

