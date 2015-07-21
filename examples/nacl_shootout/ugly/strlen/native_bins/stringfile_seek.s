  .text
  .globl stringfile_seek
  .type stringfile_seek, @function

#! file-offset 0x76b5
#! rip-offset  0x4076b5
#! capacity    75 bytes

# Text                    #  Line  RIP       Bytes  Opcode    
.stringfile_seek:         #        0x4076b5  0      OPC=0     
  cmpl $0x1, %edx         #  1     0x4076b5  3      OPC=470   
  je .L_4076f1            #  2     0x4076b8  6      OPC=893   
  nop                     #  3     0x4076be  1      OPC=1343  
  nop                     #  4     0x4076bf  1      OPC=1343  
  cmpl $0x2, %edx         #  5     0x4076c0  3      OPC=470   
  je .L_4076e1            #  6     0x4076c3  6      OPC=893   
  nop                     #  7     0x4076c9  1      OPC=1343  
  nop                     #  8     0x4076ca  1      OPC=1343  
  testl %edx, %edx        #  9     0x4076cb  2      OPC=2436  
  je .L_4076c9            #  10    0x4076cd  6      OPC=893   
  nop                     #  11    0x4076d3  1      OPC=1343  
  nop                     #  12    0x4076d4  1      OPC=1343  
.L_4076c3:                #        0x4076d5  0      OPC=0     
  movl $0xffffffff, %eax  #  13    0x4076d5  6      OPC=1155  
  retq                    #  14    0x4076db  1      OPC=1978  
.L_4076c9:                #        0x4076dc  0      OPC=0     
  movq (%rsi), %rax       #  15    0x4076dc  3      OPC=1161  
.L_4076cc:                #        0x4076df  0      OPC=0     
  testq %rax, %rax        #  16    0x4076df  3      OPC=2438  
  js .L_4076c3            #  17    0x4076e2  6      OPC=1043  
  nop                     #  18    0x4076e8  1      OPC=1343  
  nop                     #  19    0x4076e9  1      OPC=1343  
  cmpq 0x10(%rdi), %rax   #  20    0x4076ea  4      OPC=476   
  ja .L_4076c3            #  21    0x4076ee  6      OPC=863   
  nop                     #  22    0x4076f4  1      OPC=1343  
  nop                     #  23    0x4076f5  1      OPC=1343  
  movq %rax, 0x18(%rdi)   #  24    0x4076f6  4      OPC=1138  
  movq %rax, (%rsi)       #  25    0x4076fa  3      OPC=1138  
  xorl %eax, %eax         #  26    0x4076fd  2      OPC=3758  
  retq                    #  27    0x4076ff  1      OPC=1978  
.L_4076e1:                #        0x407700  0      OPC=0     
  movl 0xc(%rdi), %eax    #  28    0x407700  3      OPC=1156  
  testl %eax, %eax        #  29    0x407703  2      OPC=2436  
  jne .L_4076fa           #  30    0x407705  6      OPC=963   
  nop                     #  31    0x40770b  1      OPC=1343  
  nop                     #  32    0x40770c  1      OPC=1343  
  movq 0x20(%rdi), %rax   #  33    0x40770d  4      OPC=1161  
.L_4076ec:                #        0x407711  0      OPC=0     
  subq (%rsi), %rax       #  34    0x407711  3      OPC=2390  
  jmpq .L_4076cc          #  35    0x407714  5      OPC=930   
  nop                     #  36    0x407719  1      OPC=1343  
  nop                     #  37    0x40771a  1      OPC=1343  
.L_4076f1:                #        0x40771b  0      OPC=0     
  movq 0x18(%rdi), %rax   #  38    0x40771b  4      OPC=1161  
  addq (%rsi), %rax       #  39    0x40771f  3      OPC=71    
  jmpq .L_4076cc          #  40    0x407722  5      OPC=930   
  nop                     #  41    0x407727  1      OPC=1343  
  nop                     #  42    0x407728  1      OPC=1343  
.L_4076fa:                #        0x407729  0      OPC=0     
  movq 0x10(%rdi), %rax   #  43    0x407729  4      OPC=1161  
  jmpq .L_4076ec          #  44    0x40772d  5      OPC=930   
  nop                     #  45    0x407732  1      OPC=1343  
  nop                     #  46    0x407733  1      OPC=1343  
                                                              
.size stringfile_seek, .-stringfile_seek

