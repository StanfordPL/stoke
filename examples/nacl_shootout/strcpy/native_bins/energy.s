  .text
  .globl energy
  .type energy, @function

#! file-offset 0x7d5e
#! rip-offset  0x407d5e
#! capacity    195 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
.energy:                       #        0x407d5e  0      OPC=0     
  movl $0x625890, %ecx         #  1     0x407d5e  5      OPC=1154  
  movl $0x1, %esi              #  2     0x407d63  5      OPC=1154  
  pxor %xmm0, %xmm0            #  3     0x407d68  4      OPC=1867  
  movapd 0x1a05c(%rip), %xmm6  #  4     0x407d6c  8      OPC=1185  
  movl $0x4, %edi              #  5     0x407d74  5      OPC=1154  
.L_407d79:                     #        0x407d79  0      OPC=0     
  movapd -0x10(%rcx), %xmm3    #  6     0x407d79  5      OPC=1185  
  movapd -0x20(%rcx), %xmm2    #  7     0x407d7e  5      OPC=1185  
  movapd -0x30(%rcx), %xmm1    #  8     0x407d83  5      OPC=1185  
  mulpd %xmm1, %xmm1           #  9     0x407d88  4      OPC=1322  
  mulpd %xmm2, %xmm2           #  10    0x407d8c  4      OPC=1322  
  haddpd %xmm2, %xmm1          #  11    0x407d90  4      OPC=790   
  mulpd %xmm3, %xmm1           #  12    0x407d94  4      OPC=1322  
  haddpd %xmm1, %xmm1          #  13    0x407d98  4      OPC=790   
  mulpd %xmm6, %xmm1           #  14    0x407d9c  4      OPC=1322  
  addpd %xmm1, %xmm0           #  15    0x407da0  4      OPC=88    
  cmpl $0x5, %esi              #  16    0x407da4  3      OPC=470   
  je .L_407e0b                 #  17    0x407da7  6      OPC=893   
  nop                          #  18    0x407dad  1      OPC=1343  
  nop                          #  19    0x407dae  1      OPC=1343  
  movapd -0x50(%rcx), %xmm5    #  20    0x407daf  5      OPC=1185  
  movapd -0x40(%rcx), %xmm4    #  21    0x407db4  5      OPC=1185  
  movl %edi, %eax              #  22    0x407db9  2      OPC=1157  
  subl %esi, %eax              #  23    0x407dbb  2      OPC=2386  
  addq %rsi, %rax              #  24    0x407dbd  3      OPC=72    
  leaq (%rax,%rax,4), %rdx     #  25    0x407dc0  4      OPC=1069  
  shlq $0x4, %rdx              #  26    0x407dc4  4      OPC=2272  
  addq $0x625890, %rdx         #  27    0x407dc8  7      OPC=69    
  movq %rcx, %rax              #  28    0x407dcf  3      OPC=1162  
.L_407dcc:                     #        0x407dd2  0      OPC=0     
  movapd %xmm5, %xmm1          #  29    0x407dd2  4      OPC=1186  
  subpd (%rax), %xmm1          #  30    0x407dd6  4      OPC=2406  
  movapd %xmm4, %xmm2          #  31    0x407dda  4      OPC=1186  
  subpd 0x10(%rax), %xmm2      #  32    0x407dde  5      OPC=2406  
  mulpd %xmm1, %xmm1           #  33    0x407de3  4      OPC=1322  
  mulpd %xmm2, %xmm2           #  34    0x407de7  4      OPC=1322  
  haddpd %xmm2, %xmm1          #  35    0x407deb  4      OPC=790   
  haddpd %xmm1, %xmm1          #  36    0x407def  4      OPC=790   
  sqrtpd %xmm1, %xmm1          #  37    0x407df3  4      OPC=2344  
  movapd 0x40(%rax), %xmm2     #  38    0x407df7  5      OPC=1185  
  mulpd %xmm3, %xmm2           #  39    0x407dfc  4      OPC=1322  
  divpd %xmm1, %xmm2           #  40    0x407e00  4      OPC=616   
  subpd %xmm2, %xmm0           #  41    0x407e04  4      OPC=2407  
  addq $0x50, %rax             #  42    0x407e08  4      OPC=70    
  cmpq %rdx, %rax              #  43    0x407e0c  3      OPC=477   
  jne .L_407dcc                #  44    0x407e0f  6      OPC=963   
  nop                          #  45    0x407e15  1      OPC=1343  
  nop                          #  46    0x407e16  1      OPC=1343  
.L_407e0b:                     #        0x407e17  0      OPC=0     
  addq $0x50, %rcx             #  47    0x407e17  4      OPC=70    
  addq $0x1, %rsi              #  48    0x407e1b  4      OPC=70    
  cmpq $0x625a20, %rcx         #  49    0x407e1f  7      OPC=474   
  jne .L_407d79                #  50    0x407e26  6      OPC=963   
  retq                         #  51    0x407e2c  1      OPC=1978  
                                                                   
.size energy, .-energy

