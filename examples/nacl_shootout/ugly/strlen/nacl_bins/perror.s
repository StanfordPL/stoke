  .text
  .globl perror
  .type perror, @function

#! file-offset 0x162ea0
#! rip-offset  0x122ea0
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.perror:                    #        0x122ea0  0      OPC=0     
  pushq %rbx                #  1     0x122ea0  1      OPC=1861  
  movl %edi, %ebx           #  2     0x122ea1  2      OPC=1157  
  nop                       #  3     0x122ea3  1      OPC=1343  
  nop                       #  4     0x122ea4  1      OPC=1343  
  nop                       #  5     0x122ea5  1      OPC=1343  
  nop                       #  6     0x122ea6  1      OPC=1343  
  nop                       #  7     0x122ea7  1      OPC=1343  
  nop                       #  8     0x122ea8  1      OPC=1343  
  nop                       #  9     0x122ea9  1      OPC=1343  
  nop                       #  10    0x122eaa  1      OPC=1343  
  nop                       #  11    0x122eab  1      OPC=1343  
  nop                       #  12    0x122eac  1      OPC=1343  
  nop                       #  13    0x122ead  1      OPC=1343  
  nop                       #  14    0x122eae  1      OPC=1343  
  nop                       #  15    0x122eaf  1      OPC=1343  
  nop                       #  16    0x122eb0  1      OPC=1343  
  nop                       #  17    0x122eb1  1      OPC=1343  
  nop                       #  18    0x122eb2  1      OPC=1343  
  nop                       #  19    0x122eb3  1      OPC=1343  
  nop                       #  20    0x122eb4  1      OPC=1343  
  nop                       #  21    0x122eb5  1      OPC=1343  
  nop                       #  22    0x122eb6  1      OPC=1343  
  nop                       #  23    0x122eb7  1      OPC=1343  
  nop                       #  24    0x122eb8  1      OPC=1343  
  nop                       #  25    0x122eb9  1      OPC=1343  
  nop                       #  26    0x122eba  1      OPC=1343  
  callq .__nacl_read_tp     #  27    0x122ebb  5      OPC=260   
  leaq -0x480(%rax), %rax   #  28    0x122ec0  7      OPC=1069  
  movl %ebx, %esi           #  29    0x122ec7  2      OPC=1157  
  popq %rbx                 #  30    0x122ec9  1      OPC=1694  
  movl %eax, %eax           #  31    0x122eca  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  32    0x122ecc  4      OPC=1156  
  jmpq ._perror_r           #  33    0x122ed0  5      OPC=930   
  nop                       #  34    0x122ed5  1      OPC=1343  
  nop                       #  35    0x122ed6  1      OPC=1343  
  nop                       #  36    0x122ed7  1      OPC=1343  
  nop                       #  37    0x122ed8  1      OPC=1343  
  nop                       #  38    0x122ed9  1      OPC=1343  
  nop                       #  39    0x122eda  1      OPC=1343  
  nop                       #  40    0x122edb  1      OPC=1343  
  nop                       #  41    0x122edc  1      OPC=1343  
  nop                       #  42    0x122edd  1      OPC=1343  
  nop                       #  43    0x122ede  1      OPC=1343  
  nop                       #  44    0x122edf  1      OPC=1343  
                                                                
.size perror, .-perror

