  .text
  .globl finite
  .type finite, @function

#! file-offset 0x148ca0
#! rip-offset  0x108ca0
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.finite:                   #        0x108ca0  0      OPC=0     
  movsd %xmm0, -0x8(%rsp)  #  1     0x108ca0  6      OPC=1262  
  movq -0x8(%rsp), %rax    #  2     0x108ca6  5      OPC=1161  
  popq %r11                #  3     0x108cab  2      OPC=1694  
  shrq $0x20, %rax         #  4     0x108cad  4      OPC=2315  
  andl $0x7fffffff, %eax   #  5     0x108cb1  5      OPC=113   
  subl $0x7ff00000, %eax   #  6     0x108cb6  5      OPC=2365  
  shrl $0x1f, %eax         #  7     0x108cbb  3      OPC=2312  
  xchgw %ax, %ax           #  8     0x108cbe  2      OPC=3700  
  andl $0xffffffe0, %r11d  #  9     0x108cc0  7      OPC=131   
  nop                      #  10    0x108cc7  1      OPC=1343  
  nop                      #  11    0x108cc8  1      OPC=1343  
  nop                      #  12    0x108cc9  1      OPC=1343  
  nop                      #  13    0x108cca  1      OPC=1343  
  addq %r15, %r11          #  14    0x108ccb  3      OPC=72    
  jmpq %r11                #  15    0x108cce  3      OPC=928   
  nop                      #  16    0x108cd1  1      OPC=1343  
  nop                      #  17    0x108cd2  1      OPC=1343  
  nop                      #  18    0x108cd3  1      OPC=1343  
  nop                      #  19    0x108cd4  1      OPC=1343  
  nop                      #  20    0x108cd5  1      OPC=1343  
  nop                      #  21    0x108cd6  1      OPC=1343  
  nop                      #  22    0x108cd7  1      OPC=1343  
  nop                      #  23    0x108cd8  1      OPC=1343  
  nop                      #  24    0x108cd9  1      OPC=1343  
  nop                      #  25    0x108cda  1      OPC=1343  
  nop                      #  26    0x108cdb  1      OPC=1343  
  nop                      #  27    0x108cdc  1      OPC=1343  
  nop                      #  28    0x108cdd  1      OPC=1343  
  nop                      #  29    0x108cde  1      OPC=1343  
  nop                      #  30    0x108cdf  1      OPC=1343  
  nop                      #  31    0x108ce0  1      OPC=1343  
  nop                      #  32    0x108ce1  1      OPC=1343  
  nop                      #  33    0x108ce2  1      OPC=1343  
  nop                      #  34    0x108ce3  1      OPC=1343  
  nop                      #  35    0x108ce4  1      OPC=1343  
  nop                      #  36    0x108ce5  1      OPC=1343  
  nop                      #  37    0x108ce6  1      OPC=1343  
                                                               
.size finite, .-finite

