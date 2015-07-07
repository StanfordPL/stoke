  .text
  .globl workfn
  .type workfn, @function

#! file-offset 0x5336
#! rip-offset  0x405336
#! capacity    105 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
.workfn:                       #        0x405336  0      OPC=0     
  testq %rdi, %rdi             #  1     0x405336  3      OPC=2438  
  je .L_405393                 #  2     0x405339  6      OPC=893   
  nop                          #  3     0x40533f  1      OPC=1343  
  nop                          #  4     0x405340  1      OPC=1343  
  movl $0x7, %eax              #  5     0x405341  5      OPC=1154  
  subq 0x2206c9(%rip), %rax    #  6     0x405346  7      OPC=2390  
  movq %rax, 0x2206c2(%rip)    #  7     0x40534d  7      OPC=1138  
  movl %eax, 0x8(%rdi)         #  8     0x405354  3      OPC=1136  
  movl $0x0, 0x10(%rdi)        #  9     0x405357  7      OPC=1135  
  movq 0x2206c1(%rip), %rdx    #  10    0x40535e  7      OPC=1161  
  xorl %eax, %eax              #  11    0x405365  2      OPC=3758  
  movl $0x1, %esi              #  12    0x405367  5      OPC=1154  
.L_405366:                     #        0x40536c  0      OPC=0     
  addq $0x1, %rdx              #  13    0x40536c  4      OPC=70    
  cmpq $0x1a, %rdx             #  14    0x405370  4      OPC=475   
  cmovgq %rsi, %rdx            #  15    0x405374  4      OPC=310   
  movzbl 0x625360(%rdx), %ecx  #  16    0x405378  7      OPC=1302  
  movb %cl, 0x14(%rdi,%rax,1)  #  17    0x40537f  4      OPC=1141  
  addq $0x1, %rax              #  18    0x405383  4      OPC=70    
  cmpq $0x4, %rax              #  19    0x405387  4      OPC=475   
  jne .L_405366                #  20    0x40538b  6      OPC=963   
  nop                          #  21    0x405391  1      OPC=1343  
  nop                          #  22    0x405392  1      OPC=1343  
  movq %rdx, 0x220692(%rip)    #  23    0x405393  7      OPC=1138  
  jmpq .qpkt                   #  24    0x40539a  5      OPC=930   
.L_405393:                     #        0x40539f  0      OPC=0     
  movq 0x22066e(%rip), %rax    #  25    0x40539f  7      OPC=1161  
  orl $0x2, 0x18(%rax)         #  26    0x4053a6  4      OPC=1364  
  retq                         #  27    0x4053aa  1      OPC=1978  
                                                                   
.size workfn, .-workfn

