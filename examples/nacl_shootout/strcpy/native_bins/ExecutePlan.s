  .text
  .globl ExecutePlan
  .type ExecutePlan, @function

#! file-offset 0x5e31
#! rip-offset  0x405e31
#! capacity    57 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.ExecutePlan:               #        0x405e31  0      OPC=0     
  pushq %rbp                #  1     0x405e31  1      OPC=1861  
  pushq %rbx                #  2     0x405e32  1      OPC=1861  
  subq $0x8, %rsp           #  3     0x405e33  4      OPC=2389  
  movq (%rdi), %rax         #  4     0x405e37  3      OPC=1161  
  movslq 0xc(%rdi), %rdx    #  5     0x405e3a  4      OPC=1288  
  leaq (%rax,%rdx,8), %rbx  #  6     0x405e3e  4      OPC=1069  
  movslq 0x10(%rdi), %rdx   #  7     0x405e42  4      OPC=1288  
  leaq (%rax,%rdx,8), %rbp  #  8     0x405e46  4      OPC=1069  
  cmpq %rbp, %rbx           #  9     0x405e4a  3      OPC=477   
  ja .L_405e63              #  10    0x405e4d  6      OPC=863   
  nop                       #  11    0x405e53  1      OPC=1343  
  nop                       #  12    0x405e54  1      OPC=1343  
.L_405e4f:                  #        0x405e55  0      OPC=0     
  addq $0x8, %rbx           #  13    0x405e55  4      OPC=70    
  movq -0x8(%rbx), %rdi     #  14    0x405e59  4      OPC=1161  
  xorl %eax, %eax           #  15    0x405e5d  2      OPC=3758  
  callq .Execute            #  16    0x405e5f  5      OPC=260   
  cmpq %rbx, %rbp           #  17    0x405e64  3      OPC=477   
  jae .L_405e4f             #  18    0x405e67  6      OPC=869   
  nop                       #  19    0x405e6d  1      OPC=1343  
  nop                       #  20    0x405e6e  1      OPC=1343  
.L_405e63:                  #        0x405e6f  0      OPC=0     
  addq $0x8, %rsp           #  21    0x405e6f  4      OPC=70    
  popq %rbx                 #  22    0x405e73  1      OPC=1694  
  popq %rbp                 #  23    0x405e74  1      OPC=1694  
  retq                      #  24    0x405e75  1      OPC=1978  
                                                                
.size ExecutePlan, .-ExecutePlan

