  .text
  .globl stringfile_read
  .type stringfile_read, @function

#! file-offset 0x75a0
#! rip-offset  0x4075a0
#! capacity    100 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.stringfile_read:           #        0x4075a0  0      OPC=0     
  pushq %rbp                #  1     0x4075a0  1      OPC=1861  
  pushq %rbx                #  2     0x4075a1  1      OPC=1861  
  subq $0x8, %rsp           #  3     0x4075a2  4      OPC=2389  
  movq %rdi, %rbx           #  4     0x4075a6  3      OPC=1162  
  movq %rsi, %rdi           #  5     0x4075a9  3      OPC=1162  
  movq %rdx, %rbp           #  6     0x4075ac  3      OPC=1162  
  movq 0x18(%rbx), %rax     #  7     0x4075af  4      OPC=1161  
  movq 0x10(%rbx), %rdx     #  8     0x4075b3  4      OPC=1161  
  leaq (%rbp,%rax,1), %rcx  #  9     0x4075b7  5      OPC=1069  
  cmpq %rdx, %rcx           #  10    0x4075bc  3      OPC=477   
  jbe .L_4075cc             #  11    0x4075bf  6      OPC=881   
  nop                       #  12    0x4075c5  1      OPC=1343  
  nop                       #  13    0x4075c6  1      OPC=1343  
  cmpq %rdx, %rax           #  14    0x4075c7  3      OPC=477   
  je .L_4075fb              #  15    0x4075ca  6      OPC=893   
  nop                       #  16    0x4075d0  1      OPC=1343  
  nop                       #  17    0x4075d1  1      OPC=1343  
  subq %rax, %rdx           #  18    0x4075d2  3      OPC=2391  
  movq %rdx, %rbp           #  19    0x4075d5  3      OPC=1162  
.L_4075cc:                  #        0x4075d8  0      OPC=0     
  addq (%rbx), %rax         #  20    0x4075d8  3      OPC=71    
  movq %rax, %rsi           #  21    0x4075db  3      OPC=1162  
  movq %rbp, %rdx           #  22    0x4075de  3      OPC=1162  
  callq .memcpy_plt         #  23    0x4075e1  5      OPC=260   
  movq %rbp, %rax           #  24    0x4075e6  3      OPC=1162  
  addq 0x18(%rbx), %rax     #  25    0x4075e9  4      OPC=71    
  movq %rax, 0x18(%rbx)     #  26    0x4075ed  4      OPC=1138  
  cmpq 0x20(%rbx), %rax     #  27    0x4075f1  4      OPC=476   
  ja .L_4075f5              #  28    0x4075f5  6      OPC=863   
  nop                       #  29    0x4075fb  1      OPC=1343  
  nop                       #  30    0x4075fc  1      OPC=1343  
.L_4075eb:                  #        0x4075fd  0      OPC=0     
  movq %rbp, %rax           #  31    0x4075fd  3      OPC=1162  
  addq $0x8, %rsp           #  32    0x407600  4      OPC=70    
  popq %rbx                 #  33    0x407604  1      OPC=1694  
  popq %rbp                 #  34    0x407605  1      OPC=1694  
  retq                      #  35    0x407606  1      OPC=1978  
.L_4075f5:                  #        0x407607  0      OPC=0     
  movq %rax, 0x20(%rbx)     #  36    0x407607  4      OPC=1138  
  jmpq .L_4075eb            #  37    0x40760b  5      OPC=930   
  nop                       #  38    0x407610  1      OPC=1343  
  nop                       #  39    0x407611  1      OPC=1343  
.L_4075fb:                  #        0x407612  0      OPC=0     
  xorl %eax, %eax           #  40    0x407612  2      OPC=3758  
  addq $0x8, %rsp           #  41    0x407614  4      OPC=70    
  popq %rbx                 #  42    0x407618  1      OPC=1694  
  popq %rbp                 #  43    0x407619  1      OPC=1694  
  retq                      #  44    0x40761a  1      OPC=1978  
                                                                
.size stringfile_read, .-stringfile_read

