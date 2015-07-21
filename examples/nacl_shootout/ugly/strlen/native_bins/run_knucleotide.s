  .text
  .globl run_knucleotide
  .type run_knucleotide, @function

#! file-offset 0x4daf
#! rip-offset  0x404daf
#! capacity    71 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
.run_knucleotide:              #        0x404daf  0      OPC=0     
  subq $0x8, %rsp              #  1     0x404daf  4      OPC=2389  
  movslq 0x220c36(%rip), %rsi  #  2     0x404db3  7      OPC=1288  
  movl $0x4083bb, %edx         #  3     0x404dba  5      OPC=1154  
  movq 0x2205fa(%rip), %rdi    #  4     0x404dbf  7      OPC=1161  
  callq .stringfile_open       #  5     0x404dc6  5      OPC=260   
  movq %rax, 0x220a56(%rip)    #  6     0x404dcb  7      OPC=1138  
  testq %rax, %rax             #  7     0x404dd2  3      OPC=2438  
  je .L_404def                 #  8     0x404dd5  6      OPC=893   
  nop                          #  9     0x404ddb  1      OPC=1343  
  nop                          #  10    0x404ddc  1      OPC=1343  
  callq .knucleotide_main      #  11    0x404ddd  5      OPC=260   
  movq 0x220a45(%rip), %rdi    #  12    0x404de2  7      OPC=1161  
  callq .stringfile_close      #  13    0x404de9  5      OPC=260   
  xorl %eax, %eax              #  14    0x404dee  2      OPC=3758  
.L_404dea:                     #        0x404df0  0      OPC=0     
  addq $0x8, %rsp              #  15    0x404df0  4      OPC=70    
  retq                         #  16    0x404df4  1      OPC=1978  
.L_404def:                     #        0x404df5  0      OPC=0     
  movl $0xffffffff, %eax       #  17    0x404df5  6      OPC=1155  
  jmpq .L_404dea               #  18    0x404dfb  5      OPC=930   
  nop                          #  19    0x404e00  1      OPC=1343  
  nop                          #  20    0x404e01  1      OPC=1343  
                                                                   
.size run_knucleotide, .-run_knucleotide

