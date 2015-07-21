  .text
  .globl stringfile_seek
  .type stringfile_seek, @function

#! file-offset 0x7655
#! rip-offset  0x407655
#! capacity    75 bytes

# Text                    #  Line  RIP       Bytes  Opcode    
.stringfile_seek:         #        0x407655  0      OPC=0     
  cmpl $0x1, %edx         #  1     0x407655  3      OPC=470   
  je .L_407691            #  2     0x407658  6      OPC=893   
  nop                     #  3     0x40765e  1      OPC=1343  
  nop                     #  4     0x40765f  1      OPC=1343  
  cmpl $0x2, %edx         #  5     0x407660  3      OPC=470   
  je .L_407681            #  6     0x407663  6      OPC=893   
  nop                     #  7     0x407669  1      OPC=1343  
  nop                     #  8     0x40766a  1      OPC=1343  
  testl %edx, %edx        #  9     0x40766b  2      OPC=2436  
  je .L_407669            #  10    0x40766d  6      OPC=893   
  nop                     #  11    0x407673  1      OPC=1343  
  nop                     #  12    0x407674  1      OPC=1343  
.L_407663:                #        0x407675  0      OPC=0     
  movl $0xffffffff, %eax  #  13    0x407675  6      OPC=1155  
  retq                    #  14    0x40767b  1      OPC=1978  
.L_407669:                #        0x40767c  0      OPC=0     
  movq (%rsi), %rax       #  15    0x40767c  3      OPC=1161  
.L_40766c:                #        0x40767f  0      OPC=0     
  testq %rax, %rax        #  16    0x40767f  3      OPC=2438  
  js .L_407663            #  17    0x407682  6      OPC=1043  
  nop                     #  18    0x407688  1      OPC=1343  
  nop                     #  19    0x407689  1      OPC=1343  
  cmpq 0x10(%rdi), %rax   #  20    0x40768a  4      OPC=476   
  ja .L_407663            #  21    0x40768e  6      OPC=863   
  nop                     #  22    0x407694  1      OPC=1343  
  nop                     #  23    0x407695  1      OPC=1343  
  movq %rax, 0x18(%rdi)   #  24    0x407696  4      OPC=1138  
  movq %rax, (%rsi)       #  25    0x40769a  3      OPC=1138  
  xorl %eax, %eax         #  26    0x40769d  2      OPC=3758  
  retq                    #  27    0x40769f  1      OPC=1978  
.L_407681:                #        0x4076a0  0      OPC=0     
  movl 0xc(%rdi), %eax    #  28    0x4076a0  3      OPC=1156  
  testl %eax, %eax        #  29    0x4076a3  2      OPC=2436  
  jne .L_40769a           #  30    0x4076a5  6      OPC=963   
  nop                     #  31    0x4076ab  1      OPC=1343  
  nop                     #  32    0x4076ac  1      OPC=1343  
  movq 0x20(%rdi), %rax   #  33    0x4076ad  4      OPC=1161  
.L_40768c:                #        0x4076b1  0      OPC=0     
  subq (%rsi), %rax       #  34    0x4076b1  3      OPC=2390  
  jmpq .L_40766c          #  35    0x4076b4  5      OPC=930   
  nop                     #  36    0x4076b9  1      OPC=1343  
  nop                     #  37    0x4076ba  1      OPC=1343  
.L_407691:                #        0x4076bb  0      OPC=0     
  movq 0x18(%rdi), %rax   #  38    0x4076bb  4      OPC=1161  
  addq (%rsi), %rax       #  39    0x4076bf  3      OPC=71    
  jmpq .L_40766c          #  40    0x4076c2  5      OPC=930   
  nop                     #  41    0x4076c7  1      OPC=1343  
  nop                     #  42    0x4076c8  1      OPC=1343  
.L_40769a:                #        0x4076c9  0      OPC=0     
  movq 0x10(%rdi), %rax   #  43    0x4076c9  4      OPC=1161  
  jmpq .L_40768c          #  44    0x4076cd  5      OPC=930   
  nop                     #  45    0x4076d2  1      OPC=1343  
  nop                     #  46    0x4076d3  1      OPC=1343  
                                                              
.size stringfile_seek, .-stringfile_seek

