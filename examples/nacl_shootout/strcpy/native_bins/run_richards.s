  .text
  .globl run_richards
  .type run_richards, @function

#! file-offset 0x56a4
#! rip-offset  0x4056a4
#! capacity    204 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.run_richards:                    #        0x4056a4  0      OPC=0     
  cmpl $0x2710, %edi              #  1     0x4056a4  6      OPC=469   
  je .L_40573a                    #  2     0x4056aa  6      OPC=893   
  cmpl $0xf4240, %edi             #  3     0x4056b0  6      OPC=469   
  je .L_405712                    #  4     0x4056b6  6      OPC=893   
  nop                             #  5     0x4056bc  1      OPC=1343  
  nop                             #  6     0x4056bd  1      OPC=1343  
  cmpl $0x3e8, %edi               #  7     0x4056be  6      OPC=469   
  je .L_4056ea                    #  8     0x4056c4  6      OPC=893   
  nop                             #  9     0x4056ca  1      OPC=1343  
  nop                             #  10    0x4056cb  1      OPC=1343  
  subq $0x8, %rsp                 #  11    0x4056cc  4      OPC=2389  
  movslq %edi, %rdi               #  12    0x4056d0  3      OPC=1289  
  movq %rdi, 0x220362(%rip)       #  13    0x4056d3  7      OPC=1138  
  movl $0x408a48, %esi            #  14    0x4056da  5      OPC=1154  
  movl $0x1, %edi                 #  15    0x4056df  5      OPC=1154  
  xorl %eax, %eax                 #  16    0x4056e4  2      OPC=3758  
  callq .__printf_chk_plt         #  17    0x4056e6  5      OPC=260   
  xorl %eax, %eax                 #  18    0x4056eb  2      OPC=3758  
  addq $0x8, %rsp                 #  19    0x4056ed  4      OPC=70    
  jmpq .richards                  #  20    0x4056f1  5      OPC=930   
.L_4056ea:                        #        0x4056f6  0      OPC=0     
  movq $0x3e8, 0x22033b(%rip)     #  21    0x4056f6  11     OPC=1137  
  movq $0x912, 0x220318(%rip)     #  22    0x405701  11     OPC=1137  
  movq $0x3a0, 0x2202f5(%rip)     #  23    0x40570c  11     OPC=1137  
  xorl %eax, %eax                 #  24    0x405717  2      OPC=3758  
  jmpq .richards                  #  25    0x405719  5      OPC=930   
.L_405712:                        #        0x40571e  0      OPC=0     
  movq $0xf4240, 0x220313(%rip)   #  26    0x40571e  11     OPC=1137  
  movq $0x237f8a, 0x2202f0(%rip)  #  27    0x405729  11     OPC=1137  
  movq $0xe3303, 0x2202cd(%rip)   #  28    0x405734  11     OPC=1137  
  xorl %eax, %eax                 #  29    0x40573f  2      OPC=3758  
  jmpq .richards                  #  30    0x405741  5      OPC=930   
.L_40573a:                        #        0x405746  0      OPC=0     
  movq $0x2710, 0x2202eb(%rip)    #  31    0x405746  11     OPC=1137  
  movq $0x5ace, 0x2202c8(%rip)    #  32    0x405751  11     OPC=1137  
  movq $0x2451, 0x2202a5(%rip)    #  33    0x40575c  11     OPC=1137  
  xorl %eax, %eax                 #  34    0x405767  2      OPC=3758  
  jmpq .richards                  #  35    0x405769  5      OPC=930   
  nop                             #  36    0x40576e  1      OPC=1343  
  nop                             #  37    0x40576f  1      OPC=1343  
  nop                             #  38    0x405770  1      OPC=1343  
  nop                             #  39    0x405771  1      OPC=1343  
  nop                             #  40    0x405772  1      OPC=1343  
  nop                             #  41    0x405773  1      OPC=1343  
  nop                             #  42    0x405774  1      OPC=1343  
  nop                             #  43    0x405775  1      OPC=1343  
  nop                             #  44    0x405776  1      OPC=1343  
  nop                             #  45    0x405777  1      OPC=1343  
  nop                             #  46    0x405778  1      OPC=1343  
  nop                             #  47    0x405779  1      OPC=1343  
  nop                             #  48    0x40577a  1      OPC=1343  
  nop                             #  49    0x40577b  1      OPC=1343  
                                                                      
.size run_richards, .-run_richards

