  .text
  .globl List_Append
  .type List_Append, @function

#! file-offset 0x5ad0
#! rip-offset  0x405ad0
#! capacity    57 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.List_Append:               #        0x405ad0  0      OPC=0     
  pushq %r12                #  1     0x405ad0  2      OPC=1861  
  pushq %rbp                #  2     0x405ad2  1      OPC=1861  
  pushq %rbx                #  3     0x405ad3  1      OPC=1861  
  movq %rdi, %r12           #  4     0x405ad4  3      OPC=1162  
  movq (%rsi), %rax         #  5     0x405ad7  3      OPC=1161  
  movslq 0xc(%rsi), %rdx    #  6     0x405ada  4      OPC=1288  
  leaq (%rax,%rdx,8), %rbx  #  7     0x405ade  4      OPC=1069  
  movslq 0x10(%rsi), %rdx   #  8     0x405ae2  4      OPC=1288  
  leaq (%rax,%rdx,8), %rbp  #  9     0x405ae6  4      OPC=1069  
  cmpq %rbp, %rbx           #  10    0x405aea  3      OPC=477   
  ja .L_405b04              #  11    0x405aed  6      OPC=863   
  nop                       #  12    0x405af3  1      OPC=1343  
  nop                       #  13    0x405af4  1      OPC=1343  
.L_405aef:                  #        0x405af5  0      OPC=0     
  addq $0x8, %rbx           #  14    0x405af5  4      OPC=70    
  movq -0x8(%rbx), %rsi     #  15    0x405af9  4      OPC=1161  
  movq %r12, %rdi           #  16    0x405afd  3      OPC=1162  
  callq .List_Add           #  17    0x405b00  5      OPC=260   
  cmpq %rbx, %rbp           #  18    0x405b05  3      OPC=477   
  jae .L_405aef             #  19    0x405b08  6      OPC=869   
  nop                       #  20    0x405b0e  1      OPC=1343  
  nop                       #  21    0x405b0f  1      OPC=1343  
.L_405b04:                  #        0x405b10  0      OPC=0     
  popq %rbx                 #  22    0x405b10  1      OPC=1694  
  popq %rbp                 #  23    0x405b11  1      OPC=1694  
  popq %r12                 #  24    0x405b12  2      OPC=1694  
  retq                      #  25    0x405b14  1      OPC=1978  
                                                                
.size List_Append, .-List_Append

