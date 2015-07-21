  .text
  .globl strdup
  .type strdup, @function

#! file-offset 0x166420
#! rip-offset  0x126420
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.strdup:                    #        0x126420  0      OPC=0     
  pushq %rbx                #  1     0x126420  1      OPC=1861  
  movl %edi, %ebx           #  2     0x126421  2      OPC=1157  
  nop                       #  3     0x126423  1      OPC=1343  
  nop                       #  4     0x126424  1      OPC=1343  
  nop                       #  5     0x126425  1      OPC=1343  
  nop                       #  6     0x126426  1      OPC=1343  
  nop                       #  7     0x126427  1      OPC=1343  
  nop                       #  8     0x126428  1      OPC=1343  
  nop                       #  9     0x126429  1      OPC=1343  
  nop                       #  10    0x12642a  1      OPC=1343  
  nop                       #  11    0x12642b  1      OPC=1343  
  nop                       #  12    0x12642c  1      OPC=1343  
  nop                       #  13    0x12642d  1      OPC=1343  
  nop                       #  14    0x12642e  1      OPC=1343  
  nop                       #  15    0x12642f  1      OPC=1343  
  nop                       #  16    0x126430  1      OPC=1343  
  nop                       #  17    0x126431  1      OPC=1343  
  nop                       #  18    0x126432  1      OPC=1343  
  nop                       #  19    0x126433  1      OPC=1343  
  nop                       #  20    0x126434  1      OPC=1343  
  nop                       #  21    0x126435  1      OPC=1343  
  nop                       #  22    0x126436  1      OPC=1343  
  nop                       #  23    0x126437  1      OPC=1343  
  nop                       #  24    0x126438  1      OPC=1343  
  nop                       #  25    0x126439  1      OPC=1343  
  nop                       #  26    0x12643a  1      OPC=1343  
  callq .__nacl_read_tp     #  27    0x12643b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  28    0x126440  7      OPC=1069  
  movl %ebx, %esi           #  29    0x126447  2      OPC=1157  
  popq %rbx                 #  30    0x126449  1      OPC=1694  
  movl %eax, %eax           #  31    0x12644a  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  32    0x12644c  4      OPC=1156  
  jmpq ._strdup_r           #  33    0x126450  5      OPC=930   
  nop                       #  34    0x126455  1      OPC=1343  
  nop                       #  35    0x126456  1      OPC=1343  
  nop                       #  36    0x126457  1      OPC=1343  
  nop                       #  37    0x126458  1      OPC=1343  
  nop                       #  38    0x126459  1      OPC=1343  
  nop                       #  39    0x12645a  1      OPC=1343  
  nop                       #  40    0x12645b  1      OPC=1343  
  nop                       #  41    0x12645c  1      OPC=1343  
  nop                       #  42    0x12645d  1      OPC=1343  
  nop                       #  43    0x12645e  1      OPC=1343  
  nop                       #  44    0x12645f  1      OPC=1343  
                                                                
.size strdup, .-strdup

