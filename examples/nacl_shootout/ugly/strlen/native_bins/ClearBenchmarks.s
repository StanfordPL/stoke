  .text
  .globl ClearBenchmarks
  .type ClearBenchmarks, @function

#! file-offset 0x7062
#! rip-offset  0x407062
#! capacity    81 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.ClearBenchmarks:               #        0x407062  0      OPC=0     
  movl 0x21e7bc(%rip), %eax     #  1     0x407062  6      OPC=1156  
  testl %eax, %eax              #  2     0x407068  2      OPC=2436  
  jle .L_4070a8                 #  3     0x40706a  6      OPC=919   
  nop                           #  4     0x407070  1      OPC=1343  
  nop                           #  5     0x407071  1      OPC=1343  
  pushq %rbp                    #  6     0x407072  1      OPC=1861  
  pushq %rbx                    #  7     0x407073  1      OPC=1861  
  subq $0x8, %rsp               #  8     0x407074  4      OPC=2389  
  movl $0x6255a0, %ebx          #  9     0x407078  5      OPC=1154  
  subl $0x1, %eax               #  10    0x40707d  3      OPC=2384  
  leaq (%rax,%rax,4), %rax      #  11    0x407080  4      OPC=1069  
  leaq 0x6255c8(,%rax,8), %rbp  #  12    0x407084  8      OPC=1069  
.L_407086:                      #        0x40708c  0      OPC=0     
  movq (%rbx), %rdi             #  13    0x40708c  3      OPC=1161  
  callq .free_plt               #  14    0x40708f  5      OPC=260   
  addq $0x28, %rbx              #  15    0x407094  4      OPC=70    
  cmpq %rbp, %rbx               #  16    0x407098  3      OPC=477   
  jne .L_407086                 #  17    0x40709b  6      OPC=963   
  nop                           #  18    0x4070a1  1      OPC=1343  
  nop                           #  19    0x4070a2  1      OPC=1343  
  movl $0x0, 0x21e783(%rip)     #  20    0x4070a3  10     OPC=1135  
  addq $0x8, %rsp               #  21    0x4070ad  4      OPC=70    
  popq %rbx                     #  22    0x4070b1  1      OPC=1694  
  popq %rbp                     #  23    0x4070b2  1      OPC=1694  
  retq                          #  24    0x4070b3  1      OPC=1978  
.L_4070a8:                      #        0x4070b4  0      OPC=0     
  movl $0x0, 0x21e772(%rip)     #  25    0x4070b4  10     OPC=1135  
  retq                          #  26    0x4070be  1      OPC=1978  
                                                                    
.size ClearBenchmarks, .-ClearBenchmarks

