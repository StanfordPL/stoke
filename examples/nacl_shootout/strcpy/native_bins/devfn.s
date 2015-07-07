  .text
  .globl devfn
  .type devfn, @function

#! file-offset 0x539f
#! rip-offset  0x40539f
#! capacity    103 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.devfn:                      #        0x40539f  0      OPC=0     
  testq %rdi, %rdi           #  1     0x40539f  3      OPC=2438  
  je .L_4053de               #  2     0x4053a2  6      OPC=893   
  nop                        #  3     0x4053a8  1      OPC=1343  
  nop                        #  4     0x4053a9  1      OPC=1343  
  subq $0x8, %rsp            #  5     0x4053aa  4      OPC=2389  
  movq %rdi, 0x220661(%rip)  #  6     0x4053ae  7      OPC=1138  
  movl 0x22006f(%rip), %eax  #  7     0x4053b5  6      OPC=1156  
  testl %eax, %eax           #  8     0x4053bb  2      OPC=2436  
  jne .L_4053d3              #  9     0x4053bd  6      OPC=963   
  nop                        #  10    0x4053c3  1      OPC=1343  
  nop                        #  11    0x4053c4  1      OPC=1343  
.L_4053b9:                   #        0x4053c5  0      OPC=0     
  addl $0x1, 0x220068(%rip)  #  12    0x4053c5  7      OPC=51    
  movq 0x220641(%rip), %rax  #  13    0x4053cc  7      OPC=1161  
  orl $0x4, 0x18(%rax)       #  14    0x4053d3  4      OPC=1364  
  movq (%rax), %rax          #  15    0x4053d7  3      OPC=1161  
  addq $0x8, %rsp            #  16    0x4053da  4      OPC=70    
  retq                       #  17    0x4053de  1      OPC=1978  
.L_4053d3:                   #        0x4053df  0      OPC=0     
  movsbl 0x10(%rdi), %edi    #  18    0x4053df  4      OPC=1280  
  callq .trace               #  19    0x4053e3  5      OPC=260   
  jmpq .L_4053b9             #  20    0x4053e8  5      OPC=930   
  nop                        #  21    0x4053ed  1      OPC=1343  
  nop                        #  22    0x4053ee  1      OPC=1343  
.L_4053de:                   #        0x4053ef  0      OPC=0     
  movq 0x22062b(%rip), %rdi  #  23    0x4053ef  7      OPC=1161  
  testq %rdi, %rdi           #  24    0x4053f6  3      OPC=2438  
  jne .L_4053f6              #  25    0x4053f9  6      OPC=963   
  nop                        #  26    0x4053ff  1      OPC=1343  
  nop                        #  27    0x405400  1      OPC=1343  
  movq 0x220617(%rip), %rax  #  28    0x405401  7      OPC=1161  
  orl $0x2, 0x18(%rax)       #  29    0x405408  4      OPC=1364  
  retq                       #  30    0x40540c  1      OPC=1978  
.L_4053f6:                   #        0x40540d  0      OPC=0     
  movq $0x0, 0x22060f(%rip)  #  31    0x40540d  11     OPC=1137  
  jmpq .qpkt                 #  32    0x405418  5      OPC=930   
                                                                 
.size devfn, .-devfn

