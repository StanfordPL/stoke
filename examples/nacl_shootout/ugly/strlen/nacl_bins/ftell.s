  .text
  .globl ftell
  .type ftell, @function

#! file-offset 0x15c440
#! rip-offset  0x11c440
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.ftell:                     #        0x11c440  0      OPC=0     
  pushq %rbx                #  1     0x11c440  1      OPC=1861  
  movl %edi, %ebx           #  2     0x11c441  2      OPC=1157  
  nop                       #  3     0x11c443  1      OPC=1343  
  nop                       #  4     0x11c444  1      OPC=1343  
  nop                       #  5     0x11c445  1      OPC=1343  
  nop                       #  6     0x11c446  1      OPC=1343  
  nop                       #  7     0x11c447  1      OPC=1343  
  nop                       #  8     0x11c448  1      OPC=1343  
  nop                       #  9     0x11c449  1      OPC=1343  
  nop                       #  10    0x11c44a  1      OPC=1343  
  nop                       #  11    0x11c44b  1      OPC=1343  
  nop                       #  12    0x11c44c  1      OPC=1343  
  nop                       #  13    0x11c44d  1      OPC=1343  
  nop                       #  14    0x11c44e  1      OPC=1343  
  nop                       #  15    0x11c44f  1      OPC=1343  
  nop                       #  16    0x11c450  1      OPC=1343  
  nop                       #  17    0x11c451  1      OPC=1343  
  nop                       #  18    0x11c452  1      OPC=1343  
  nop                       #  19    0x11c453  1      OPC=1343  
  nop                       #  20    0x11c454  1      OPC=1343  
  nop                       #  21    0x11c455  1      OPC=1343  
  nop                       #  22    0x11c456  1      OPC=1343  
  nop                       #  23    0x11c457  1      OPC=1343  
  nop                       #  24    0x11c458  1      OPC=1343  
  nop                       #  25    0x11c459  1      OPC=1343  
  nop                       #  26    0x11c45a  1      OPC=1343  
  callq .__nacl_read_tp     #  27    0x11c45b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  28    0x11c460  7      OPC=1069  
  movl %ebx, %esi           #  29    0x11c467  2      OPC=1157  
  popq %rbx                 #  30    0x11c469  1      OPC=1694  
  movl %eax, %eax           #  31    0x11c46a  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  32    0x11c46c  4      OPC=1156  
  jmpq ._ftell_r            #  33    0x11c470  5      OPC=930   
  nop                       #  34    0x11c475  1      OPC=1343  
  nop                       #  35    0x11c476  1      OPC=1343  
  nop                       #  36    0x11c477  1      OPC=1343  
  nop                       #  37    0x11c478  1      OPC=1343  
  nop                       #  38    0x11c479  1      OPC=1343  
  nop                       #  39    0x11c47a  1      OPC=1343  
  nop                       #  40    0x11c47b  1      OPC=1343  
  nop                       #  41    0x11c47c  1      OPC=1343  
  nop                       #  42    0x11c47d  1      OPC=1343  
  nop                       #  43    0x11c47e  1      OPC=1343  
  nop                       #  44    0x11c47f  1      OPC=1343  
                                                                
.size ftell, .-ftell

