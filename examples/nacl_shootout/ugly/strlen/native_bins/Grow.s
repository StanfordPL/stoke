  .text
  .globl Grow
  .type Grow, @function

#! file-offset 0x59e0
#! rip-offset  0x4059e0
#! capacity    75 bytes

# Text                  #  Line  RIP       Bytes  Opcode    
.Grow:                  #        0x4059e0  0      OPC=0     
  pushq %rbx            #  1     0x4059e0  1      OPC=1861  
  movq %rdi, %rbx       #  2     0x4059e1  3      OPC=1162  
  movl 0x8(%rdi), %eax  #  3     0x4059e4  3      OPC=1156  
  cmpl $0x1ff, %eax     #  4     0x4059e7  5      OPC=451   
  jg .L_405a1a          #  5     0x4059ec  6      OPC=901   
  nop                   #  6     0x4059f2  1      OPC=1343  
  nop                   #  7     0x4059f3  1      OPC=1343  
  movl $0x2, %edx       #  8     0x4059f4  5      OPC=1154  
  cmpl $0x2, %eax       #  9     0x4059f9  3      OPC=470   
  cmovgel %eax, %edx    #  10    0x4059fc  3      OPC=314   
.L_4059f9:              #        0x4059ff  0      OPC=0     
  addl %edx, %eax       #  11    0x4059ff  2      OPC=67    
  movl %eax, 0x8(%rbx)  #  12    0x405a01  3      OPC=1136  
  cltq                  #  13    0x405a04  2      OPC=263   
  leaq (,%rax,8), %rsi  #  14    0x405a06  8      OPC=1069  
  movq (%rbx), %rdi     #  15    0x405a0e  3      OPC=1161  
  callq .realloc_plt    #  16    0x405a11  5      OPC=260   
  movq %rax, (%rbx)     #  17    0x405a16  3      OPC=1138  
  testq %rax, %rax      #  18    0x405a19  3      OPC=2438  
  je .L_405a21          #  19    0x405a1c  6      OPC=893   
  nop                   #  20    0x405a22  1      OPC=1343  
  nop                   #  21    0x405a23  1      OPC=1343  
  popq %rbx             #  22    0x405a24  1      OPC=1694  
  retq                  #  23    0x405a25  1      OPC=1978  
.L_405a1a:              #        0x405a26  0      OPC=0     
  movl $0x200, %edx     #  24    0x405a26  5      OPC=1154  
  jmpq .L_4059f9        #  25    0x405a2b  5      OPC=930   
  nop                   #  26    0x405a30  1      OPC=1343  
  nop                   #  27    0x405a31  1      OPC=1343  
.L_405a21:              #        0x405a32  0      OPC=0     
  movl $0x408b01, %edi  #  28    0x405a32  5      OPC=1154  
  callq .Error          #  29    0x405a37  5      OPC=260   
                                                            
.size Grow, .-Grow

