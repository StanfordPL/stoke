  .text
  .globl run_revcomp
  .type run_revcomp, @function

#! file-offset 0x254f
#! rip-offset  0x40254f
#! capacity    146 bytes

# Text                              #  Line  RIP       Bytes  Opcode    
.run_revcomp:                       #        0x40254f  0      OPC=0     
  pushq %rbx                        #  1     0x40254f  1      OPC=1861  
  movslq 0x223499(%rip), %rsi       #  2     0x402550  7      OPC=1288  
  movl $0x4083bb, %edx              #  3     0x402557  5      OPC=1154  
  movq 0x222e5d(%rip), %rdi         #  4     0x40255c  7      OPC=1161  
  callq .stringfile_open            #  5     0x402563  5      OPC=260   
  movq %rax, 0x2232b9(%rip)         #  6     0x402568  7      OPC=1138  
  testq %rax, %rax                  #  7     0x40256f  3      OPC=2438  
  je .L_4025c1                      #  8     0x402572  6      OPC=893   
  nop                               #  9     0x402578  1      OPC=1343  
  nop                               #  10    0x402579  1      OPC=1343  
  movq 0x2234d5(%rip), %rdi         #  11    0x40257a  7      OPC=1161  
  testq %rdi, %rdi                  #  12    0x402581  3      OPC=2438  
  je .L_4025c8                      #  13    0x402584  6      OPC=893   
  nop                               #  14    0x40258a  1      OPC=1343  
  nop                               #  15    0x40258b  1      OPC=1343  
  xorl %esi, %esi                   #  16    0x40258c  2      OPC=3758  
  callq .arrayfile_set_keep_output  #  17    0x40258e  5      OPC=260   
  callq .revcomp_main               #  18    0x402593  5      OPC=260   
  xorl %esi, %esi                   #  19    0x402598  2      OPC=3758  
  movq 0x2234bb(%rip), %rdi         #  20    0x40259a  7      OPC=1161  
  callq .arrayfile_join             #  21    0x4025a1  5      OPC=260   
  movq %rax, %rbx                   #  22    0x4025a6  3      OPC=1162  
  movq 0x2234ac(%rip), %rdi         #  23    0x4025a9  7      OPC=1161  
  callq .arrayfile_rewind           #  24    0x4025b0  5      OPC=260   
  movq %rbx, %rdi                   #  25    0x4025b5  3      OPC=1162  
  callq .free_plt                   #  26    0x4025b8  5      OPC=260   
  movq 0x223270(%rip), %rdi         #  27    0x4025bd  7      OPC=1161  
  callq .stringfile_close           #  28    0x4025c4  5      OPC=260   
  xorl %eax, %eax                   #  29    0x4025c9  2      OPC=3758  
  popq %rbx                         #  30    0x4025cb  1      OPC=1694  
  retq                              #  31    0x4025cc  1      OPC=1978  
.L_4025c1:                          #        0x4025cd  0      OPC=0     
  movl $0xffffffff, %eax            #  32    0x4025cd  6      OPC=1155  
  popq %rbx                         #  33    0x4025d3  1      OPC=1694  
  retq                              #  34    0x4025d4  1      OPC=1978  
.L_4025c8:                          #        0x4025d5  0      OPC=0     
  movl $0x408430, %ecx              #  35    0x4025d5  5      OPC=1154  
  movl $0x14e, %edx                 #  36    0x4025da  5      OPC=1154  
  movl $0x4083a8, %esi              #  37    0x4025df  5      OPC=1154  
  movl $0x4083df, %edi              #  38    0x4025e4  5      OPC=1154  
  callq .__assert_fail_plt          #  39    0x4025e9  5      OPC=260   
                                                                        
.size run_revcomp, .-run_revcomp

