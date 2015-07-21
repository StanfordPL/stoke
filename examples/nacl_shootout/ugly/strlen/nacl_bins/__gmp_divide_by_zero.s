  .text
  .globl __gmp_divide_by_zero
  .type __gmp_divide_by_zero, @function

#! file-offset 0x77540
#! rip-offset  0x37540
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode    
.__gmp_divide_by_zero:    #        0x37540  0      OPC=0     
  subl $0x8, %esp         #  1     0x37540  3      OPC=2384  
  addq %r15, %rsp         #  2     0x37543  3      OPC=72    
  movl $0x2, %edi         #  3     0x37546  5      OPC=1154  
  nop                     #  4     0x3754b  1      OPC=1343  
  nop                     #  5     0x3754c  1      OPC=1343  
  nop                     #  6     0x3754d  1      OPC=1343  
  nop                     #  7     0x3754e  1      OPC=1343  
  nop                     #  8     0x3754f  1      OPC=1343  
  nop                     #  9     0x37550  1      OPC=1343  
  nop                     #  10    0x37551  1      OPC=1343  
  nop                     #  11    0x37552  1      OPC=1343  
  nop                     #  12    0x37553  1      OPC=1343  
  nop                     #  13    0x37554  1      OPC=1343  
  nop                     #  14    0x37555  1      OPC=1343  
  nop                     #  15    0x37556  1      OPC=1343  
  nop                     #  16    0x37557  1      OPC=1343  
  nop                     #  17    0x37558  1      OPC=1343  
  nop                     #  18    0x37559  1      OPC=1343  
  nop                     #  19    0x3755a  1      OPC=1343  
  callq .__gmp_exception  #  20    0x3755b  5      OPC=260   
                                                             
.size __gmp_divide_by_zero, .-__gmp_divide_by_zero

