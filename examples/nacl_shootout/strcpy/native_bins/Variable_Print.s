  .text
  .globl Variable_Print
  .type Variable_Print, @function

#! file-offset 0x5d36
#! rip-offset  0x405d36
#! capacity    53 bytes

# Text                    #  Line  RIP       Bytes  Opcode    
.Variable_Print:          #        0x405d36  0      OPC=0     
  pushq %rbp              #  1     0x405d36  1      OPC=1861  
  pushq %rbx              #  2     0x405d37  1      OPC=1861  
  subq $0x8, %rsp         #  3     0x405d38  4      OPC=2389  
  movq %rdi, %rbx         #  4     0x405d3c  3      OPC=1162  
  movq (%rdi), %rbp       #  5     0x405d3f  3      OPC=1161  
  movl 0x20(%rdi), %edi   #  6     0x405d42  3      OPC=1156  
  callq .StrengthString   #  7     0x405d45  5      OPC=260   
  leaq 0x28(%rbx), %rdx   #  8     0x405d4a  4      OPC=1069  
  movq %rbp, %r8          #  9     0x405d4e  3      OPC=1162  
  movq %rax, %rcx         #  10    0x405d51  3      OPC=1162  
  movl $0x408b23, %esi    #  11    0x405d54  5      OPC=1154  
  movl $0x1, %edi         #  12    0x405d59  5      OPC=1154  
  xorl %eax, %eax         #  13    0x405d5e  2      OPC=3758  
  addq $0x8, %rsp         #  14    0x405d60  4      OPC=70    
  popq %rbx               #  15    0x405d64  1      OPC=1694  
  popq %rbp               #  16    0x405d65  1      OPC=1694  
  jmpq .__printf_chk_plt  #  17    0x405d66  5      OPC=930   
                                                              
.size Variable_Print, .-Variable_Print

