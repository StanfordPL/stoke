  .text
  .globl qpkt
  .type qpkt, @function

#! file-offset 0x52ca
#! rip-offset  0x4052ca
#! capacity    108 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.qpkt:                       #        0x4052ca  0      OPC=0     
  pushq %rbx                 #  1     0x4052ca  1      OPC=1861  
  movq %rdi, %rbx            #  2     0x4052cb  3      OPC=1162  
  movl 0x8(%rdi), %edi       #  3     0x4052ce  3      OPC=1156  
  callq .findtcb             #  4     0x4052d1  5      OPC=260   
  testq %rax, %rax           #  5     0x4052d6  3      OPC=2438  
  je .L_405332               #  6     0x4052d9  6      OPC=893   
  nop                        #  7     0x4052df  1      OPC=1343  
  nop                        #  8     0x4052e0  1      OPC=1343  
  addl $0x1, 0x22014a(%rip)  #  9     0x4052e1  7      OPC=51    
  movq $0x0, (%rbx)          #  10    0x4052e8  7      OPC=1137  
  movq 0x220738(%rip), %rdx  #  11    0x4052ef  7      OPC=1161  
  movl %edx, 0x8(%rbx)       #  12    0x4052f6  3      OPC=1136  
  cmpq $0x0, 0x10(%rax)      #  13    0x4052f9  5      OPC=459   
  je .L_405317               #  14    0x4052fe  6      OPC=893   
  nop                        #  15    0x405304  1      OPC=1343  
  nop                        #  16    0x405305  1      OPC=1343  
  addq $0x10, %rax           #  17    0x405306  4      OPC=70    
  jmpq .L_405303             #  18    0x40530a  5      OPC=930   
  nop                        #  19    0x40530f  1      OPC=1343  
  nop                        #  20    0x405310  1      OPC=1343  
.L_405300:                   #        0x405311  0      OPC=0     
  movq %rdx, %rax            #  21    0x405311  3      OPC=1162  
.L_405303:                   #        0x405314  0      OPC=0     
  movq (%rax), %rdx          #  22    0x405314  3      OPC=1161  
  testq %rdx, %rdx           #  23    0x405317  3      OPC=2438  
  jne .L_405300              #  24    0x40531a  6      OPC=963   
  nop                        #  25    0x405320  1      OPC=1343  
  nop                        #  26    0x405321  1      OPC=1343  
  movq %rbx, (%rax)          #  27    0x405322  3      OPC=1138  
  movq 0x2206f3(%rip), %rax  #  28    0x405325  7      OPC=1161  
  popq %rbx                  #  29    0x40532c  1      OPC=1694  
  retq                       #  30    0x40532d  1      OPC=1978  
.L_405317:                   #        0x40532e  0      OPC=0     
  movq %rbx, 0x10(%rax)      #  31    0x40532e  4      OPC=1138  
  orl $0x1, 0x18(%rax)       #  32    0x405332  4      OPC=1364  
  movq 0x2206e2(%rip), %rdx  #  33    0x405336  7      OPC=1161  
  movl 0xc(%rdx), %ecx       #  34    0x40533d  3      OPC=1156  
  cmpl %ecx, 0xc(%rax)       #  35    0x405340  3      OPC=457   
  cmovleq %rdx, %rax         #  36    0x405343  4      OPC=328   
  popq %rbx                  #  37    0x405347  1      OPC=1694  
  retq                       #  38    0x405348  1      OPC=1978  
.L_405332:                   #        0x405349  0      OPC=0     
  xorl %eax, %eax            #  39    0x405349  2      OPC=3758  
  popq %rbx                  #  40    0x40534b  1      OPC=1694  
  retq                       #  41    0x40534c  1      OPC=1978  
                                                                 
.size qpkt, .-qpkt

