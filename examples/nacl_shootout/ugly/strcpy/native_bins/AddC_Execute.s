  .text
  .globl AddC_Execute
  .type AddC_Execute, @function

#! file-offset 0x579c
#! rip-offset  0x40579c
#! capacity    87 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.AddC_Execute:             #        0x40579c  0      OPC=0     
  movzbl 0x10(%rdi), %eax  #  1     0x40579c  4      OPC=1302  
  cmpb $0x1, %al           #  2     0x4057a0  2      OPC=449   
  je .L_4057dd             #  3     0x4057a2  6      OPC=893   
  nop                      #  4     0x4057a8  1      OPC=1343  
  nop                      #  5     0x4057a9  1      OPC=1343  
  cmpb $0x2, %al           #  6     0x4057aa  2      OPC=449   
  je .L_4057c7             #  7     0x4057ac  6      OPC=893   
  nop                      #  8     0x4057b2  1      OPC=1343  
  nop                      #  9     0x4057b3  1      OPC=1343  
  testb %al, %al           #  10    0x4057b4  2      OPC=2440  
  je .L_4057b1             #  11    0x4057b6  6      OPC=893   
  nop                      #  12    0x4057bc  1      OPC=1343  
  nop                      #  13    0x4057bd  1      OPC=1343  
  nop                      #  14    0x4057be  1      OPC=1343  
  nop                      #  15    0x4057bf  1      OPC=1343  
  nop                      #  16    0x4057c0  1      OPC=1343  
  nop                      #  17    0x4057c1  1      OPC=1343  
  retq                     #  18    0x4057c2  1      OPC=1978  
.L_4057b1:                 #        0x4057c3  0      OPC=0     
  movq 0x30(%rdi), %rdx    #  19    0x4057c3  4      OPC=1161  
  movq 0x20(%rdi), %rax    #  20    0x4057c7  4      OPC=1161  
  movq 0x28(%rdi), %rcx    #  21    0x4057cb  4      OPC=1161  
  movq (%rax), %rax        #  22    0x4057cf  3      OPC=1161  
  addq (%rcx), %rax        #  23    0x4057d2  3      OPC=71    
  movq %rax, (%rdx)        #  24    0x4057d5  3      OPC=1138  
  retq                     #  25    0x4057d8  1      OPC=1978  
.L_4057c7:                 #        0x4057d9  0      OPC=0     
  movq 0x20(%rdi), %rdx    #  26    0x4057d9  4      OPC=1161  
  movq 0x30(%rdi), %rax    #  27    0x4057dd  4      OPC=1161  
  movq 0x28(%rdi), %rcx    #  28    0x4057e1  4      OPC=1161  
  movq (%rax), %rax        #  29    0x4057e5  3      OPC=1161  
  subq (%rcx), %rax        #  30    0x4057e8  3      OPC=2390  
  movq %rax, (%rdx)        #  31    0x4057eb  3      OPC=1138  
  retq                     #  32    0x4057ee  1      OPC=1978  
.L_4057dd:                 #        0x4057ef  0      OPC=0     
  movq 0x28(%rdi), %rdx    #  33    0x4057ef  4      OPC=1161  
  movq 0x30(%rdi), %rax    #  34    0x4057f3  4      OPC=1161  
  movq 0x20(%rdi), %rcx    #  35    0x4057f7  4      OPC=1161  
  movq (%rax), %rax        #  36    0x4057fb  3      OPC=1161  
  subq (%rcx), %rax        #  37    0x4057fe  3      OPC=2390  
  movq %rax, (%rdx)        #  38    0x405801  3      OPC=1138  
  retq                     #  39    0x405804  1      OPC=1978  
                                                               
.size AddC_Execute, .-AddC_Execute

