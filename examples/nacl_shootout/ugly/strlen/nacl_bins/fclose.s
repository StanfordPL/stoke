  .text
  .globl fclose
  .type fclose, @function

#! file-offset 0x159340
#! rip-offset  0x119340
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.fclose:                    #        0x119340  0      OPC=0     
  pushq %rbx                #  1     0x119340  1      OPC=1861  
  movl %edi, %ebx           #  2     0x119341  2      OPC=1157  
  nop                       #  3     0x119343  1      OPC=1343  
  nop                       #  4     0x119344  1      OPC=1343  
  nop                       #  5     0x119345  1      OPC=1343  
  nop                       #  6     0x119346  1      OPC=1343  
  nop                       #  7     0x119347  1      OPC=1343  
  nop                       #  8     0x119348  1      OPC=1343  
  nop                       #  9     0x119349  1      OPC=1343  
  nop                       #  10    0x11934a  1      OPC=1343  
  nop                       #  11    0x11934b  1      OPC=1343  
  nop                       #  12    0x11934c  1      OPC=1343  
  nop                       #  13    0x11934d  1      OPC=1343  
  nop                       #  14    0x11934e  1      OPC=1343  
  nop                       #  15    0x11934f  1      OPC=1343  
  nop                       #  16    0x119350  1      OPC=1343  
  nop                       #  17    0x119351  1      OPC=1343  
  nop                       #  18    0x119352  1      OPC=1343  
  nop                       #  19    0x119353  1      OPC=1343  
  nop                       #  20    0x119354  1      OPC=1343  
  nop                       #  21    0x119355  1      OPC=1343  
  nop                       #  22    0x119356  1      OPC=1343  
  nop                       #  23    0x119357  1      OPC=1343  
  nop                       #  24    0x119358  1      OPC=1343  
  nop                       #  25    0x119359  1      OPC=1343  
  nop                       #  26    0x11935a  1      OPC=1343  
  callq .__nacl_read_tp     #  27    0x11935b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  28    0x119360  7      OPC=1069  
  movl %ebx, %esi           #  29    0x119367  2      OPC=1157  
  popq %rbx                 #  30    0x119369  1      OPC=1694  
  movl %eax, %eax           #  31    0x11936a  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  32    0x11936c  4      OPC=1156  
  jmpq ._fclose_r           #  33    0x119370  5      OPC=930   
  nop                       #  34    0x119375  1      OPC=1343  
  nop                       #  35    0x119376  1      OPC=1343  
  nop                       #  36    0x119377  1      OPC=1343  
  nop                       #  37    0x119378  1      OPC=1343  
  nop                       #  38    0x119379  1      OPC=1343  
  nop                       #  39    0x11937a  1      OPC=1343  
  nop                       #  40    0x11937b  1      OPC=1343  
  nop                       #  41    0x11937c  1      OPC=1343  
  nop                       #  42    0x11937d  1      OPC=1343  
  nop                       #  43    0x11937e  1      OPC=1343  
  nop                       #  44    0x11937f  1      OPC=1343  
                                                                
.size fclose, .-fclose

