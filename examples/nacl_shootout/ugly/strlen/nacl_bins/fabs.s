  .text
  .globl fabs
  .type fabs, @function

#! file-offset 0x148c60
#! rip-offset  0x108c60
#! capacity    64 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.fabs:                            #        0x108c60  0      OPC=0     
  movsd %xmm0, -0x8(%rsp)         #  1     0x108c60  6      OPC=1262  
  movq -0x8(%rsp), %rcx           #  2     0x108c66  5      OPC=1161  
  movq $0x7fffffff00000000, %rdx  #  3     0x108c6b  10     OPC=1160  
  movq %rcx, %rax                 #  4     0x108c75  3      OPC=1162  
  andq %rcx, %rdx                 #  5     0x108c78  3      OPC=139   
  andl $0xffffffff, %eax          #  6     0x108c7b  6      OPC=131   
  nop                             #  7     0x108c81  1      OPC=1343  
  nop                             #  8     0x108c82  1      OPC=1343  
  nop                             #  9     0x108c83  1      OPC=1343  
  xchgw %ax, %ax                  #  10    0x108c84  2      OPC=3700  
  orq %rdx, %rax                  #  11    0x108c86  3      OPC=1385  
  movq %rax, -0x8(%rsp)           #  12    0x108c89  5      OPC=1138  
  movsd -0x8(%rsp), %xmm0         #  13    0x108c8e  6      OPC=1263  
  popq %r11                       #  14    0x108c94  2      OPC=1694  
  andl $0xffffffe0, %r11d         #  15    0x108c96  7      OPC=131   
  nop                             #  16    0x108c9d  1      OPC=1343  
  nop                             #  17    0x108c9e  1      OPC=1343  
  nop                             #  18    0x108c9f  1      OPC=1343  
  nop                             #  19    0x108ca0  1      OPC=1343  
  addq %r15, %r11                 #  20    0x108ca1  3      OPC=72    
  jmpq %r11                       #  21    0x108ca4  3      OPC=928   
  nop                             #  22    0x108ca7  1      OPC=1343  
  nop                             #  23    0x108ca8  1      OPC=1343  
  nop                             #  24    0x108ca9  1      OPC=1343  
  nop                             #  25    0x108caa  1      OPC=1343  
  nop                             #  26    0x108cab  1      OPC=1343  
  nop                             #  27    0x108cac  1      OPC=1343  
                                                                      
.size fabs, .-fabs

