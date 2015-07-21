  .text
  .globl fdopen
  .type fdopen, @function

#! file-offset 0x159540
#! rip-offset  0x119540
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.fdopen:                    #        0x119540  0      OPC=0     
  movq %rbx, -0x10(%rsp)    #  1     0x119540  5      OPC=1138  
  movq %r12, -0x8(%rsp)     #  2     0x119545  5      OPC=1138  
  subl $0x18, %esp          #  3     0x11954a  3      OPC=2384  
  addq %r15, %rsp           #  4     0x11954d  3      OPC=72    
  movl %edi, %ebx           #  5     0x119550  2      OPC=1157  
  movl %esi, %r12d          #  6     0x119552  3      OPC=1157  
  nop                       #  7     0x119555  1      OPC=1343  
  nop                       #  8     0x119556  1      OPC=1343  
  nop                       #  9     0x119557  1      OPC=1343  
  nop                       #  10    0x119558  1      OPC=1343  
  nop                       #  11    0x119559  1      OPC=1343  
  nop                       #  12    0x11955a  1      OPC=1343  
  callq .__nacl_read_tp     #  13    0x11955b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  14    0x119560  7      OPC=1069  
  movl %r12d, %edx          #  15    0x119567  3      OPC=1157  
  movl %ebx, %esi           #  16    0x11956a  2      OPC=1157  
  movq 0x10(%rsp), %r12     #  17    0x11956c  5      OPC=1161  
  movq 0x8(%rsp), %rbx      #  18    0x119571  5      OPC=1161  
  movl %eax, %eax           #  19    0x119576  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  20    0x119578  4      OPC=1156  
  nop                       #  21    0x11957c  1      OPC=1343  
  nop                       #  22    0x11957d  1      OPC=1343  
  nop                       #  23    0x11957e  1      OPC=1343  
  nop                       #  24    0x11957f  1      OPC=1343  
  addl $0x18, %esp          #  25    0x119580  3      OPC=65    
  addq %r15, %rsp           #  26    0x119583  3      OPC=72    
  jmpq ._fdopen_r           #  27    0x119586  5      OPC=930   
  nop                       #  28    0x11958b  1      OPC=1343  
  nop                       #  29    0x11958c  1      OPC=1343  
  nop                       #  30    0x11958d  1      OPC=1343  
  nop                       #  31    0x11958e  1      OPC=1343  
  nop                       #  32    0x11958f  1      OPC=1343  
  nop                       #  33    0x119590  1      OPC=1343  
  nop                       #  34    0x119591  1      OPC=1343  
  nop                       #  35    0x119592  1      OPC=1343  
  nop                       #  36    0x119593  1      OPC=1343  
  nop                       #  37    0x119594  1      OPC=1343  
  nop                       #  38    0x119595  1      OPC=1343  
  nop                       #  39    0x119596  1      OPC=1343  
  nop                       #  40    0x119597  1      OPC=1343  
  nop                       #  41    0x119598  1      OPC=1343  
  nop                       #  42    0x119599  1      OPC=1343  
  nop                       #  43    0x11959a  1      OPC=1343  
  nop                       #  44    0x11959b  1      OPC=1343  
  nop                       #  45    0x11959c  1      OPC=1343  
  nop                       #  46    0x11959d  1      OPC=1343  
  nop                       #  47    0x11959e  1      OPC=1343  
  nop                       #  48    0x11959f  1      OPC=1343  
                                                                
.size fdopen, .-fdopen

