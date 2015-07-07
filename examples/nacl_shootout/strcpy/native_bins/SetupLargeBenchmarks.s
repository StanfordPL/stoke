  .text
  .globl SetupLargeBenchmarks
  .type SetupLargeBenchmarks, @function

#! file-offset 0x70e5
#! rip-offset  0x4070e5
#! capacity    146 bytes

# Text                             #  Line  RIP       Bytes  Opcode    
.SetupLargeBenchmarks:             #        0x4070e5  0      OPC=0     
  subq $0x8, %rsp                  #  1     0x4070e5  4      OPC=2389  
  movl $0x7, %edi                  #  2     0x4070e9  5      OPC=1154  
  callq .malloc_plt                #  3     0x4070ee  5      OPC=260   
  testq %rax, %rax                 #  4     0x4070f3  3      OPC=2438  
  je .L_407108                     #  5     0x4070f6  6      OPC=893   
  nop                              #  6     0x4070fc  1      OPC=1343  
  nop                              #  7     0x4070fd  1      OPC=1343  
  movl $0x63727473, (%rax)         #  8     0x4070fe  6      OPC=1135  
  movw $0x7970, 0x4(%rax)          #  9     0x407104  6      OPC=1132  
  movb $0x0, 0x6(%rax)             #  10    0x40710a  4      OPC=1140  
.L_407108:                         #        0x40710e  0      OPC=0     
  movl 0x21e716(%rip), %ecx        #  11    0x40710e  6      OPC=1156  
  cmpl $0x10, %ecx                 #  12    0x407114  3      OPC=470   
  je .L_407172                     #  13    0x407117  6      OPC=893   
  nop                              #  14    0x40711d  1      OPC=1343  
  nop                              #  15    0x40711e  1      OPC=1343  
  movslq %ecx, %rdx                #  16    0x40711f  3      OPC=1289  
  leaq (%rdx,%rdx,4), %rdx         #  17    0x407122  4      OPC=1069  
  shlq $0x3, %rdx                  #  18    0x407126  4      OPC=2272  
  movq %rax, 0x6255a0(%rdx)        #  19    0x40712a  7      OPC=1138  
  movq $0x406f34, 0x6255a8(%rdx)   #  20    0x407131  11     OPC=1137  
  movq $0x0, 0x6255b0(%rdx)        #  21    0x40713c  11     OPC=1137  
  movq $0x0, 0x6255b8(%rdx)        #  22    0x407147  11     OPC=1137  
  movl $0x1c9c380, 0x6255c0(%rdx)  #  23    0x407152  10     OPC=1135  
  movl $0x989680, 0x6255c4(%rdx)   #  24    0x40715c  10     OPC=1135  
  addl $0x1, %ecx                  #  25    0x407166  3      OPC=65    
  movl %ecx, 0x21e6c1(%rip)        #  26    0x407169  6      OPC=1136  
  movl $0x1, 0x21e313(%rip)        #  27    0x40716f  10     OPC=1135  
  addq $0x8, %rsp                  #  28    0x407179  4      OPC=70    
  retq                             #  29    0x40717d  1      OPC=1978  
.L_407172:                         #        0x40717e  0      OPC=0     
  callq .RegisterBenchmark_part_0  #  30    0x40717e  5      OPC=260   
                                                                       
.size SetupLargeBenchmarks, .-SetupLargeBenchmarks

