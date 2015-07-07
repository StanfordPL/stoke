  .text
  .globl ClearBenchmarks
  .type ClearBenchmarks, @function

#! file-offset 0x7002
#! rip-offset  0x407002
#! capacity    81 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.ClearBenchmarks:               #        0x407002  0      OPC=0     
  movl 0x21e81c(%rip), %eax     #  1     0x407002  6      OPC=1156  
  testl %eax, %eax              #  2     0x407008  2      OPC=2436  
  jle .L_407048                 #  3     0x40700a  6      OPC=919   
  nop                           #  4     0x407010  1      OPC=1343  
  nop                           #  5     0x407011  1      OPC=1343  
  pushq %rbp                    #  6     0x407012  1      OPC=1861  
  pushq %rbx                    #  7     0x407013  1      OPC=1861  
  subq $0x8, %rsp               #  8     0x407014  4      OPC=2389  
  movl $0x6255a0, %ebx          #  9     0x407018  5      OPC=1154  
  subl $0x1, %eax               #  10    0x40701d  3      OPC=2384  
  leaq (%rax,%rax,4), %rax      #  11    0x407020  4      OPC=1069  
  leaq 0x6255c8(,%rax,8), %rbp  #  12    0x407024  8      OPC=1069  
.L_407026:                      #        0x40702c  0      OPC=0     
  movq (%rbx), %rdi             #  13    0x40702c  3      OPC=1161  
  callq .free_plt               #  14    0x40702f  5      OPC=260   
  addq $0x28, %rbx              #  15    0x407034  4      OPC=70    
  cmpq %rbp, %rbx               #  16    0x407038  3      OPC=477   
  jne .L_407026                 #  17    0x40703b  6      OPC=963   
  nop                           #  18    0x407041  1      OPC=1343  
  nop                           #  19    0x407042  1      OPC=1343  
  movl $0x0, 0x21e7e3(%rip)     #  20    0x407043  10     OPC=1135  
  addq $0x8, %rsp               #  21    0x40704d  4      OPC=70    
  popq %rbx                     #  22    0x407051  1      OPC=1694  
  popq %rbp                     #  23    0x407052  1      OPC=1694  
  retq                          #  24    0x407053  1      OPC=1978  
.L_407048:                      #        0x407054  0      OPC=0     
  movl $0x0, 0x21e7d2(%rip)     #  25    0x407054  10     OPC=1135  
  retq                          #  26    0x40705e  1      OPC=1978  
                                                                    
.size ClearBenchmarks, .-ClearBenchmarks

