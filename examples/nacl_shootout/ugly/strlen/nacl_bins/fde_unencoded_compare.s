  .text
  .globl fde_unencoded_compare
  .type fde_unencoded_compare, @function

#! file-offset 0x14e540
#! rip-offset  0x10e540
#! capacity    64 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
.fde_unencoded_compare:        #        0x10e540  0      OPC=0     
  movl %esi, %esi              #  1     0x10e540  2      OPC=1157  
  movl %edx, %edx              #  2     0x10e542  2      OPC=1157  
  movl $0x1, %eax              #  3     0x10e544  5      OPC=1154  
  movl %edx, %edx              #  4     0x10e549  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %edx  #  5     0x10e54b  5      OPC=1156  
  movl %esi, %esi              #  6     0x10e550  2      OPC=1157  
  cmpl %edx, 0x8(%r15,%rsi,1)  #  7     0x10e552  5      OPC=457   
  popq %r11                    #  8     0x10e557  2      OPC=1694  
  sbbl %ecx, %ecx              #  9     0x10e559  2      OPC=2134  
  nop                          #  10    0x10e55b  1      OPC=1343  
  nop                          #  11    0x10e55c  1      OPC=1343  
  nop                          #  12    0x10e55d  1      OPC=1343  
  nop                          #  13    0x10e55e  1      OPC=1343  
  nop                          #  14    0x10e55f  1      OPC=1343  
  movl %esi, %esi              #  15    0x10e560  2      OPC=1157  
  cmpl %edx, 0x8(%r15,%rsi,1)  #  16    0x10e562  5      OPC=457   
  cmovbel %ecx, %eax           #  17    0x10e567  3      OPC=290   
  andl $0xffffffe0, %r11d      #  18    0x10e56a  7      OPC=131   
  nop                          #  19    0x10e571  1      OPC=1343  
  nop                          #  20    0x10e572  1      OPC=1343  
  nop                          #  21    0x10e573  1      OPC=1343  
  nop                          #  22    0x10e574  1      OPC=1343  
  addq %r15, %r11              #  23    0x10e575  3      OPC=72    
  jmpq %r11                    #  24    0x10e578  3      OPC=928   
  nop                          #  25    0x10e57b  1      OPC=1343  
  nop                          #  26    0x10e57c  1      OPC=1343  
  nop                          #  27    0x10e57d  1      OPC=1343  
  nop                          #  28    0x10e57e  1      OPC=1343  
  nop                          #  29    0x10e57f  1      OPC=1343  
  nop                          #  30    0x10e580  1      OPC=1343  
  nop                          #  31    0x10e581  1      OPC=1343  
  nop                          #  32    0x10e582  1      OPC=1343  
  nop                          #  33    0x10e583  1      OPC=1343  
  nop                          #  34    0x10e584  1      OPC=1343  
  nop                          #  35    0x10e585  1      OPC=1343  
  nop                          #  36    0x10e586  1      OPC=1343  
                                                                   
.size fde_unencoded_compare, .-fde_unencoded_compare

