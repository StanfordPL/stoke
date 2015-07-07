  .text
  .globl ConstantOutput
  .type ConstantOutput, @function

#! file-offset 0x6138
#! rip-offset  0x406138
#! capacity    66 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.ConstantOutput:                  #        0x406138  0      OPC=0     
  movl 0x8(%rdi), %ecx            #  1     0x406138  3      OPC=1156  
  testl %ecx, %ecx                #  2     0x40613b  2      OPC=2436  
  jne .L_406171                   #  3     0x40613d  6      OPC=963   
  nop                             #  4     0x406143  1      OPC=1343  
  nop                             #  5     0x406144  1      OPC=1343  
  movsbq 0x10(%rdi), %rax         #  6     0x406145  5      OPC=1285  
  movsbl 0x13(%rdi,%rax,1), %ecx  #  7     0x40614a  5      OPC=1280  
  movsbl 0x12(%rdi), %eax         #  8     0x40614f  4      OPC=1280  
  subl $0x1, %eax                 #  9     0x406153  3      OPC=2384  
  jns .L_40615c                   #  10    0x406156  6      OPC=1005  
  nop                             #  11    0x40615c  1      OPC=1343  
  nop                             #  12    0x40615d  1      OPC=1343  
  jmpq .L_406174                  #  13    0x40615e  5      OPC=930   
  nop                             #  14    0x406163  1      OPC=1343  
  nop                             #  15    0x406164  1      OPC=1343  
.L_406154:                        #        0x406165  0      OPC=0     
  subl $0x1, %eax                 #  16    0x406165  3      OPC=2384  
  cmpl $0xffffffff, %eax          #  17    0x406168  6      OPC=469   
  nop                             #  18    0x40616e  1      OPC=1343  
  nop                             #  19    0x40616f  1      OPC=1343  
  nop                             #  20    0x406170  1      OPC=1343  
  je .L_406174                    #  21    0x406171  6      OPC=893   
  nop                             #  22    0x406177  1      OPC=1343  
  nop                             #  23    0x406178  1      OPC=1343  
.L_40615c:                        #        0x406179  0      OPC=0     
  cmpl %ecx, %eax                 #  24    0x406179  2      OPC=472   
  xchgw %ax, %ax                  #  25    0x40617b  2      OPC=3700  
  je .L_406154                    #  26    0x40617d  6      OPC=893   
  nop                             #  27    0x406183  1      OPC=1343  
  nop                             #  28    0x406184  1      OPC=1343  
  movslq %eax, %rdx               #  29    0x406185  3      OPC=1289  
  movq 0x20(%rdi,%rdx,8), %rdx    #  30    0x406188  5      OPC=1161  
  movl 0x24(%rdx), %edx           #  31    0x40618d  3      OPC=1156  
  testl %edx, %edx                #  32    0x406190  2      OPC=2436  
  jne .L_406154                   #  33    0x406192  6      OPC=963   
  nop                             #  34    0x406198  1      OPC=1343  
  nop                             #  35    0x406199  1      OPC=1343  
.L_406171:                        #        0x40619a  0      OPC=0     
  xorl %eax, %eax                 #  36    0x40619a  2      OPC=3758  
  retq                            #  37    0x40619c  1      OPC=1978  
.L_406174:                        #        0x40619d  0      OPC=0     
  movl $0x1, %eax                 #  38    0x40619d  5      OPC=1154  
  retq                            #  39    0x4061a2  1      OPC=1978  
                                                                      
.size ConstantOutput, .-ConstantOutput

