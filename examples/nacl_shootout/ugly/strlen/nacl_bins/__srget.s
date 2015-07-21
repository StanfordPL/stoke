  .text
  .globl __srget
  .type __srget, @function

#! file-offset 0x164ea0
#! rip-offset  0x124ea0
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.__srget:                   #        0x124ea0  0      OPC=0     
  pushq %rbx                #  1     0x124ea0  1      OPC=1861  
  movl %edi, %ebx           #  2     0x124ea1  2      OPC=1157  
  nop                       #  3     0x124ea3  1      OPC=1343  
  nop                       #  4     0x124ea4  1      OPC=1343  
  nop                       #  5     0x124ea5  1      OPC=1343  
  nop                       #  6     0x124ea6  1      OPC=1343  
  nop                       #  7     0x124ea7  1      OPC=1343  
  nop                       #  8     0x124ea8  1      OPC=1343  
  nop                       #  9     0x124ea9  1      OPC=1343  
  nop                       #  10    0x124eaa  1      OPC=1343  
  nop                       #  11    0x124eab  1      OPC=1343  
  nop                       #  12    0x124eac  1      OPC=1343  
  nop                       #  13    0x124ead  1      OPC=1343  
  nop                       #  14    0x124eae  1      OPC=1343  
  nop                       #  15    0x124eaf  1      OPC=1343  
  nop                       #  16    0x124eb0  1      OPC=1343  
  nop                       #  17    0x124eb1  1      OPC=1343  
  nop                       #  18    0x124eb2  1      OPC=1343  
  nop                       #  19    0x124eb3  1      OPC=1343  
  nop                       #  20    0x124eb4  1      OPC=1343  
  nop                       #  21    0x124eb5  1      OPC=1343  
  nop                       #  22    0x124eb6  1      OPC=1343  
  nop                       #  23    0x124eb7  1      OPC=1343  
  nop                       #  24    0x124eb8  1      OPC=1343  
  nop                       #  25    0x124eb9  1      OPC=1343  
  nop                       #  26    0x124eba  1      OPC=1343  
  callq .__nacl_read_tp     #  27    0x124ebb  5      OPC=260   
  leaq -0x480(%rax), %rax   #  28    0x124ec0  7      OPC=1069  
  movl %ebx, %esi           #  29    0x124ec7  2      OPC=1157  
  popq %rbx                 #  30    0x124ec9  1      OPC=1694  
  movl %eax, %eax           #  31    0x124eca  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  32    0x124ecc  4      OPC=1156  
  jmpq .__srget_r           #  33    0x124ed0  5      OPC=930   
  nop                       #  34    0x124ed5  1      OPC=1343  
  nop                       #  35    0x124ed6  1      OPC=1343  
  nop                       #  36    0x124ed7  1      OPC=1343  
  nop                       #  37    0x124ed8  1      OPC=1343  
  nop                       #  38    0x124ed9  1      OPC=1343  
  nop                       #  39    0x124eda  1      OPC=1343  
  nop                       #  40    0x124edb  1      OPC=1343  
  nop                       #  41    0x124edc  1      OPC=1343  
  nop                       #  42    0x124edd  1      OPC=1343  
  nop                       #  43    0x124ede  1      OPC=1343  
  nop                       #  44    0x124edf  1      OPC=1343  
                                                                
.size __srget, .-__srget

