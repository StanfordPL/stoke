  .text
  .globl List_Do
  .type List_Do, @function

#! file-offset 0x583d
#! rip-offset  0x40583d
#! capacity    54 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.List_Do:                   #        0x40583d  0      OPC=0     
  pushq %r12                #  1     0x40583d  2      OPC=1861  
  pushq %rbp                #  2     0x40583f  1      OPC=1861  
  pushq %rbx                #  3     0x405840  1      OPC=1861  
  movq %rsi, %r12           #  4     0x405841  3      OPC=1162  
  movq (%rdi), %rax         #  5     0x405844  3      OPC=1161  
  movslq 0xc(%rdi), %rdx    #  6     0x405847  4      OPC=1288  
  leaq (%rax,%rdx,8), %rbx  #  7     0x40584b  4      OPC=1069  
  movslq 0x10(%rdi), %rdx   #  8     0x40584f  4      OPC=1288  
  leaq (%rax,%rdx,8), %rbp  #  9     0x405853  4      OPC=1069  
  cmpq %rbp, %rbx           #  10    0x405857  3      OPC=477   
  ja .L_40586e              #  11    0x40585a  6      OPC=863   
  nop                       #  12    0x405860  1      OPC=1343  
  nop                       #  13    0x405861  1      OPC=1343  
.L_40585c:                  #        0x405862  0      OPC=0     
  addq $0x8, %rbx           #  14    0x405862  4      OPC=70    
  movq -0x8(%rbx), %rdi     #  15    0x405866  4      OPC=1161  
  xorl %eax, %eax           #  16    0x40586a  2      OPC=3758  
  callq %r12                #  17    0x40586c  3      OPC=258   
  cmpq %rbx, %rbp           #  18    0x40586f  3      OPC=477   
  jae .L_40585c             #  19    0x405872  6      OPC=869   
  nop                       #  20    0x405878  1      OPC=1343  
  nop                       #  21    0x405879  1      OPC=1343  
.L_40586e:                  #        0x40587a  0      OPC=0     
  popq %rbx                 #  22    0x40587a  1      OPC=1694  
  popq %rbp                 #  23    0x40587b  1      OPC=1694  
  popq %r12                 #  24    0x40587c  2      OPC=1694  
  retq                      #  25    0x40587e  1      OPC=1978  
                                                                
.size List_Do, .-List_Do

