  .text
  .globl ChooseMethod
  .type ChooseMethod, @function

#! file-offset 0x6012
#! rip-offset  0x406012
#! capacity    70 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.ChooseMethod:                    #        0x406012  0      OPC=0     
  movl 0xc(%rdi), %esi            #  1     0x406012  3      OPC=1156  
  movsbl 0x11(%rdi), %edx         #  2     0x406015  4      OPC=1280  
  subl $0x1, %edx                 #  3     0x406019  3      OPC=2384  
  js .L_406052                    #  4     0x40601c  6      OPC=1043  
  nop                             #  5     0x406022  1      OPC=1343  
  nop                             #  6     0x406023  1      OPC=1343  
  movq 0x21f423(%rip), %r8        #  7     0x406024  7      OPC=1161  
  movl $0xffffffff, %eax          #  8     0x40602b  6      OPC=1155  
.L_40602a:                        #        0x406031  0      OPC=0     
  movslq %edx, %rcx               #  9     0x406031  3      OPC=1289  
  movsbq 0x13(%rdi,%rcx,1), %rcx  #  10    0x406034  6      OPC=1285  
  movq 0x20(%rdi,%rcx,8), %rcx    #  11    0x40603a  5      OPC=1161  
  cmpq %r8, 0x18(%rcx)            #  12    0x40603f  4      OPC=460   
  je .L_406049                    #  13    0x406043  6      OPC=893   
  nop                             #  14    0x406049  1      OPC=1343  
  nop                             #  15    0x40604a  1      OPC=1343  
  movl 0x20(%rcx), %ecx           #  16    0x40604b  3      OPC=1156  
  cmpl %esi, %ecx                 #  17    0x40604e  2      OPC=472   
  jbe .L_406049                   #  18    0x406050  6      OPC=881   
  nop                             #  19    0x406056  1      OPC=1343  
  nop                             #  20    0x406057  1      OPC=1343  
  movl %ecx, %esi                 #  21    0x406058  2      OPC=1157  
  movl %edx, %eax                 #  22    0x40605a  2      OPC=1157  
.L_406049:                        #        0x40605c  0      OPC=0     
  subl $0x1, %edx                 #  23    0x40605c  3      OPC=2384  
  cmpl $0xffffffff, %edx          #  24    0x40605f  6      OPC=469   
  nop                             #  25    0x406065  1      OPC=1343  
  nop                             #  26    0x406066  1      OPC=1343  
  nop                             #  27    0x406067  1      OPC=1343  
  jne .L_40602a                   #  28    0x406068  6      OPC=963   
  nop                             #  29    0x40606e  1      OPC=1343  
  nop                             #  30    0x40606f  1      OPC=1343  
  retq                            #  31    0x406070  1      OPC=1978  
.L_406052:                        #        0x406071  0      OPC=0     
  movl $0xffffffff, %eax          #  32    0x406071  6      OPC=1155  
  retq                            #  33    0x406077  1      OPC=1978  
                                                                      
.size ChooseMethod, .-ChooseMethod

