  .text
  .globl std
  .type std, @function

#! file-offset 0x159f20
#! rip-offset  0x119f20
#! capacity    192 bytes

# Text                               #  Line  RIP       Bytes  Opcode    
.std:                                #        0x119f20  0      OPC=0     
  pushq %rbx                         #  1     0x119f20  1      OPC=1861  
  movl %edi, %ebx                    #  2     0x119f21  2      OPC=1157  
  leal 0x70(%rbx), %edi              #  3     0x119f23  3      OPC=1066  
  movl %ebx, %ebx                    #  4     0x119f26  2      OPC=1157  
  movw %si, 0xc(%r15,%rbx,1)         #  5     0x119f28  6      OPC=1133  
  movl %ebx, %ebx                    #  6     0x119f2e  2      OPC=1157  
  movw %dx, 0xe(%r15,%rbx,1)         #  7     0x119f30  6      OPC=1133  
  movl %ebx, %ebx                    #  8     0x119f36  2      OPC=1157  
  movl $0x0, (%r15,%rbx,1)           #  9     0x119f38  8      OPC=1135  
  movl %ebx, %ebx                    #  10    0x119f40  2      OPC=1157  
  movl $0x0, 0x4(%r15,%rbx,1)        #  11    0x119f42  9      OPC=1135  
  movl $0x8, %edx                    #  12    0x119f4b  5      OPC=1154  
  movl %ebx, %ebx                    #  13    0x119f50  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rbx,1)        #  14    0x119f52  9      OPC=1135  
  nop                                #  15    0x119f5b  1      OPC=1343  
  nop                                #  16    0x119f5c  1      OPC=1343  
  nop                                #  17    0x119f5d  1      OPC=1343  
  nop                                #  18    0x119f5e  1      OPC=1343  
  nop                                #  19    0x119f5f  1      OPC=1343  
  movl %ebx, %ebx                    #  20    0x119f60  2      OPC=1157  
  movl $0x0, 0x78(%r15,%rbx,1)       #  21    0x119f62  9      OPC=1135  
  xorl %esi, %esi                    #  22    0x119f6b  2      OPC=3758  
  movl %ebx, %ebx                    #  23    0x119f6d  2      OPC=1157  
  movl $0x0, 0x10(%r15,%rbx,1)       #  24    0x119f6f  9      OPC=1135  
  nop                                #  25    0x119f78  1      OPC=1343  
  nop                                #  26    0x119f79  1      OPC=1343  
  nop                                #  27    0x119f7a  1      OPC=1343  
  nop                                #  28    0x119f7b  1      OPC=1343  
  nop                                #  29    0x119f7c  1      OPC=1343  
  nop                                #  30    0x119f7d  1      OPC=1343  
  nop                                #  31    0x119f7e  1      OPC=1343  
  nop                                #  32    0x119f7f  1      OPC=1343  
  movl %ebx, %ebx                    #  33    0x119f80  2      OPC=1157  
  movl $0x0, 0x14(%r15,%rbx,1)       #  34    0x119f82  9      OPC=1135  
  movl %ebx, %ebx                    #  35    0x119f8b  2      OPC=1157  
  movl $0x0, 0x18(%r15,%rbx,1)       #  36    0x119f8d  9      OPC=1135  
  nop                                #  37    0x119f96  1      OPC=1343  
  nop                                #  38    0x119f97  1      OPC=1343  
  nop                                #  39    0x119f98  1      OPC=1343  
  nop                                #  40    0x119f99  1      OPC=1343  
  nop                                #  41    0x119f9a  1      OPC=1343  
  callq .memset                      #  42    0x119f9b  5      OPC=260   
  movl %ebx, %ebx                    #  43    0x119fa0  2      OPC=1157  
  movl %ebx, 0x1c(%r15,%rbx,1)       #  44    0x119fa2  5      OPC=1136  
  movl %ebx, %ebx                    #  45    0x119fa7  2      OPC=1157  
  movl $0x125e20, 0x20(%r15,%rbx,1)  #  46    0x119fa9  9      OPC=1135  
  leal 0x5c(%rbx), %edi              #  47    0x119fb2  3      OPC=1066  
  movl %ebx, %ebx                    #  48    0x119fb5  2      OPC=1157  
  movl $0x125d80, 0x24(%r15,%rbx,1)  #  49    0x119fb7  9      OPC=1135  
  movl %ebx, %ebx                    #  50    0x119fc0  2      OPC=1157  
  movl $0x125d00, 0x28(%r15,%rbx,1)  #  51    0x119fc2  9      OPC=1135  
  movl %ebx, %ebx                    #  52    0x119fcb  2      OPC=1157  
  movl $0x125ce0, 0x2c(%r15,%rbx,1)  #  53    0x119fcd  9      OPC=1135  
  popq %rbx                          #  54    0x119fd6  1      OPC=1694  
  jmpq .__local_lock_init_recursive  #  55    0x119fd7  5      OPC=930   
  nop                                #  56    0x119fdc  1      OPC=1343  
  nop                                #  57    0x119fdd  1      OPC=1343  
  nop                                #  58    0x119fde  1      OPC=1343  
  nop                                #  59    0x119fdf  1      OPC=1343  
                                                                         
.size std, .-std

