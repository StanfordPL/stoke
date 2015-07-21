  .text
  .globl release
  .type release, @function

#! file-offset 0x5238
#! rip-offset  0x405238
#! capacity    47 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.release:                    #        0x405238  0      OPC=0     
  subq $0x8, %rsp            #  1     0x405238  4      OPC=2389  
  callq .findtcb             #  2     0x40523c  5      OPC=260   
  testq %rax, %rax           #  3     0x405241  3      OPC=2438  
  je .L_405263               #  4     0x405244  6      OPC=893   
  nop                        #  5     0x40524a  1      OPC=1343  
  nop                        #  6     0x40524b  1      OPC=1343  
  andl $0xfffb, 0x18(%rax)   #  7     0x40524c  7      OPC=117   
  movq 0x2207b4(%rip), %rdx  #  8     0x405253  7      OPC=1161  
  movl 0xc(%rdx), %ecx       #  9     0x40525a  3      OPC=1156  
  cmpl %ecx, 0xc(%rax)       #  10    0x40525d  3      OPC=457   
  cmovleq %rdx, %rax         #  11    0x405260  4      OPC=328   
.L_40525e:                   #        0x405264  0      OPC=0     
  addq $0x8, %rsp            #  12    0x405264  4      OPC=70    
  retq                       #  13    0x405268  1      OPC=1978  
.L_405263:                   #        0x405269  0      OPC=0     
  xorl %eax, %eax            #  14    0x405269  2      OPC=3758  
  jmpq .L_40525e             #  15    0x40526b  5      OPC=930   
  nop                        #  16    0x405270  1      OPC=1343  
  nop                        #  17    0x405271  1      OPC=1343  
                                                                 
.size release, .-release

