  .text
  .globl idlefn
  .type idlefn, @function

#! file-offset 0x5267
#! rip-offset  0x405267
#! capacity    99 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.idlefn:                     #        0x405267  0      OPC=0     
  subq $0x1, 0x2207b1(%rip)  #  1     0x405267  8      OPC=2373  
  je .L_4052b4               #  2     0x40526f  6      OPC=893   
  nop                        #  3     0x405275  1      OPC=1343  
  nop                        #  4     0x405276  1      OPC=1343  
  movq 0x220798(%rip), %rax  #  5     0x405277  7      OPC=1161  
  testb $0x1, %al            #  6     0x40527e  2      OPC=2421  
  je .L_40529b               #  7     0x405280  6      OPC=893   
  nop                        #  8     0x405286  1      OPC=1343  
  nop                        #  9     0x405287  1      OPC=1343  
  sarq $0x1, %rax            #  10    0x405288  3      OPC=2100  
  andl $0x7fff, %eax         #  11    0x40528b  5      OPC=113   
  xorq $0xd008, %rax         #  12    0x405290  6      OPC=3771  
  movq %rax, 0x22077f(%rip)  #  13    0x405296  7      OPC=1138  
  movl $0x6, %edi            #  14    0x40529d  5      OPC=1154  
  jmpq .release              #  15    0x4052a2  5      OPC=930   
.L_40529b:                   #        0x4052a7  0      OPC=0     
  sarq $0x1, %rax            #  16    0x4052a7  3      OPC=2100  
  andl $0x7fff, %eax         #  17    0x4052aa  5      OPC=113   
  movq %rax, 0x220766(%rip)  #  18    0x4052af  7      OPC=1138  
  movl $0x5, %edi            #  19    0x4052b6  5      OPC=1154  
  jmpq .release              #  20    0x4052bb  5      OPC=930   
.L_4052b4:                   #        0x4052c0  0      OPC=0     
  addl $0x1, 0x22016d(%rip)  #  21    0x4052c0  7      OPC=51    
  movq 0x220746(%rip), %rax  #  22    0x4052c7  7      OPC=1161  
  orl $0x4, 0x18(%rax)       #  23    0x4052ce  4      OPC=1364  
  movq (%rax), %rax          #  24    0x4052d2  3      OPC=1161  
  retq                       #  25    0x4052d5  1      OPC=1978  
                                                                 
.size idlefn, .-idlefn

