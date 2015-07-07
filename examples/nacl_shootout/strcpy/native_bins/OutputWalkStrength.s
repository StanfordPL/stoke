  .text
  .globl OutputWalkStrength
  .type OutputWalkStrength, @function

#! file-offset 0x60ff
#! rip-offset  0x4060ff
#! capacity    57 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.OutputWalkStrength:              #        0x4060ff  0      OPC=0     
  movl 0xc(%rdi), %eax            #  1     0x4060ff  3      OPC=1156  
  movsbq 0x10(%rdi), %rdx         #  2     0x406102  5      OPC=1285  
  movsbl 0x13(%rdi,%rdx,1), %esi  #  3     0x406107  5      OPC=1280  
  movsbl 0x11(%rdi), %edx         #  4     0x40610c  4      OPC=1280  
  subl $0x1, %edx                 #  5     0x406110  3      OPC=2384  
  js .L_406137                    #  6     0x406113  6      OPC=1043  
  nop                             #  7     0x406119  1      OPC=1343  
  nop                             #  8     0x40611a  1      OPC=1343  
.L_406115:                        #        0x40611b  0      OPC=0     
  movslq %edx, %rcx               #  9     0x40611b  3      OPC=1289  
  movsbq 0x13(%rdi,%rcx,1), %rcx  #  10    0x40611e  6      OPC=1285  
  cmpl %esi, %ecx                 #  11    0x406124  2      OPC=472   
  je .L_40612f                    #  12    0x406126  6      OPC=893   
  nop                             #  13    0x40612c  1      OPC=1343  
  nop                             #  14    0x40612d  1      OPC=1343  
  movq 0x20(%rdi,%rcx,8), %rcx    #  15    0x40612e  5      OPC=1161  
  movl 0x20(%rcx), %ecx           #  16    0x406133  3      OPC=1156  
  cmpl %ecx, %eax                 #  17    0x406136  2      OPC=472   
  cmovbl %ecx, %eax               #  18    0x406138  3      OPC=284   
.L_40612f:                        #        0x40613b  0      OPC=0     
  subl $0x1, %edx                 #  19    0x40613b  3      OPC=2384  
  cmpl $0xffffffff, %edx          #  20    0x40613e  6      OPC=469   
  nop                             #  21    0x406144  1      OPC=1343  
  nop                             #  22    0x406145  1      OPC=1343  
  nop                             #  23    0x406146  1      OPC=1343  
  jne .L_406115                   #  24    0x406147  6      OPC=963   
  nop                             #  25    0x40614d  1      OPC=1343  
  nop                             #  26    0x40614e  1      OPC=1343  
.L_406137:                        #        0x40614f  0      OPC=0     
  retq                            #  27    0x40614f  1      OPC=1978  
                                                                      
.size OutputWalkStrength, .-OutputWalkStrength

