  .text
  .globl InputsKnown
  .type InputsKnown, @function

#! file-offset 0x5fc5
#! rip-offset  0x405fc5
#! capacity    77 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.InputsKnown:                     #        0x405fc5  0      OPC=0     
  movsbq 0x10(%rdi), %rax         #  1     0x405fc5  5      OPC=1285  
  movsbl 0x13(%rdi,%rax,1), %ecx  #  2     0x405fca  5      OPC=1280  
  movsbl 0x12(%rdi), %eax         #  3     0x405fcf  4      OPC=1280  
  subl $0x1, %eax                 #  4     0x405fd3  3      OPC=2384  
  js .L_406009                    #  5     0x405fd6  6      OPC=1043  
  nop                             #  6     0x405fdc  1      OPC=1343  
  nop                             #  7     0x405fdd  1      OPC=1343  
  movq 0x21f469(%rip), %rsi       #  8     0x405fde  7      OPC=1161  
.L_405fdf:                        #        0x405fe5  0      OPC=0     
  cmpl %ecx, %eax                 #  9     0x405fe5  2      OPC=472   
  je .L_406001                    #  10    0x405fe7  6      OPC=893   
  nop                             #  11    0x405fed  1      OPC=1343  
  nop                             #  12    0x405fee  1      OPC=1343  
  movslq %eax, %rdx               #  13    0x405fef  3      OPC=1289  
  movq 0x20(%rdi,%rdx,8), %rdx    #  14    0x405ff2  5      OPC=1161  
  cmpq %rsi, 0x18(%rdx)           #  15    0x405ff7  4      OPC=460   
  je .L_406001                    #  16    0x405ffb  6      OPC=893   
  nop                             #  17    0x406001  1      OPC=1343  
  nop                             #  18    0x406002  1      OPC=1343  
  movl 0x24(%rdx), %r8d           #  19    0x406003  4      OPC=1156  
  testl %r8d, %r8d                #  20    0x406007  3      OPC=2436  
  jne .L_406001                   #  21    0x40600a  6      OPC=963   
  nop                             #  22    0x406010  1      OPC=1343  
  nop                             #  23    0x406011  1      OPC=1343  
  cmpq $0x0, 0x10(%rdx)           #  24    0x406012  5      OPC=459   
  jne .L_40600f                   #  25    0x406017  6      OPC=963   
  nop                             #  26    0x40601d  1      OPC=1343  
  nop                             #  27    0x40601e  1      OPC=1343  
.L_406001:                        #        0x40601f  0      OPC=0     
  subl $0x1, %eax                 #  28    0x40601f  3      OPC=2384  
  cmpl $0xffffffff, %eax          #  29    0x406022  6      OPC=469   
  nop                             #  30    0x406028  1      OPC=1343  
  nop                             #  31    0x406029  1      OPC=1343  
  nop                             #  32    0x40602a  1      OPC=1343  
  jne .L_405fdf                   #  33    0x40602b  6      OPC=963   
  nop                             #  34    0x406031  1      OPC=1343  
  nop                             #  35    0x406032  1      OPC=1343  
.L_406009:                        #        0x406033  0      OPC=0     
  movl $0x1, %eax                 #  36    0x406033  5      OPC=1154  
  retq                            #  37    0x406038  1      OPC=1978  
.L_40600f:                        #        0x406039  0      OPC=0     
  xorl %eax, %eax                 #  38    0x406039  2      OPC=3758  
  retq                            #  39    0x40603b  1      OPC=1978  
                                                                      
.size InputsKnown, .-InputsKnown

