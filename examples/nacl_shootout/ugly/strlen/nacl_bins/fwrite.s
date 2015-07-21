  .text
  .globl fwrite
  .type fwrite, @function

#! file-offset 0x15d7e0
#! rip-offset  0x11d7e0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.fwrite:                    #        0x11d7e0  0      OPC=0     
  movq %rbx, -0x20(%rsp)    #  1     0x11d7e0  5      OPC=1138  
  movq %r12, -0x18(%rsp)    #  2     0x11d7e5  5      OPC=1138  
  movl %edi, %ebx           #  3     0x11d7ea  2      OPC=1157  
  movq %r13, -0x10(%rsp)    #  4     0x11d7ec  5      OPC=1138  
  movq %r14, -0x8(%rsp)     #  5     0x11d7f1  5      OPC=1138  
  subl $0x28, %esp          #  6     0x11d7f6  3      OPC=2384  
  addq %r15, %rsp           #  7     0x11d7f9  3      OPC=72    
  movl %esi, %r12d          #  8     0x11d7fc  3      OPC=1157  
  nop                       #  9     0x11d7ff  1      OPC=1343  
  movl %edx, %r13d          #  10    0x11d800  3      OPC=1157  
  movl %ecx, %r14d          #  11    0x11d803  3      OPC=1157  
  nop                       #  12    0x11d806  1      OPC=1343  
  nop                       #  13    0x11d807  1      OPC=1343  
  nop                       #  14    0x11d808  1      OPC=1343  
  nop                       #  15    0x11d809  1      OPC=1343  
  nop                       #  16    0x11d80a  1      OPC=1343  
  nop                       #  17    0x11d80b  1      OPC=1343  
  nop                       #  18    0x11d80c  1      OPC=1343  
  nop                       #  19    0x11d80d  1      OPC=1343  
  nop                       #  20    0x11d80e  1      OPC=1343  
  nop                       #  21    0x11d80f  1      OPC=1343  
  nop                       #  22    0x11d810  1      OPC=1343  
  nop                       #  23    0x11d811  1      OPC=1343  
  nop                       #  24    0x11d812  1      OPC=1343  
  nop                       #  25    0x11d813  1      OPC=1343  
  nop                       #  26    0x11d814  1      OPC=1343  
  nop                       #  27    0x11d815  1      OPC=1343  
  nop                       #  28    0x11d816  1      OPC=1343  
  nop                       #  29    0x11d817  1      OPC=1343  
  nop                       #  30    0x11d818  1      OPC=1343  
  nop                       #  31    0x11d819  1      OPC=1343  
  nop                       #  32    0x11d81a  1      OPC=1343  
  callq .__nacl_read_tp     #  33    0x11d81b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  34    0x11d820  7      OPC=1069  
  movl %r14d, %r8d          #  35    0x11d827  3      OPC=1157  
  movl %r13d, %ecx          #  36    0x11d82a  3      OPC=1157  
  movl %r12d, %edx          #  37    0x11d82d  3      OPC=1157  
  movl %ebx, %esi           #  38    0x11d830  2      OPC=1157  
  movq 0x10(%rsp), %r12     #  39    0x11d832  5      OPC=1161  
  movq 0x8(%rsp), %rbx      #  40    0x11d837  5      OPC=1161  
  nop                       #  41    0x11d83c  1      OPC=1343  
  nop                       #  42    0x11d83d  1      OPC=1343  
  nop                       #  43    0x11d83e  1      OPC=1343  
  nop                       #  44    0x11d83f  1      OPC=1343  
  movq 0x18(%rsp), %r13     #  45    0x11d840  5      OPC=1161  
  movq 0x20(%rsp), %r14     #  46    0x11d845  5      OPC=1161  
  movl %eax, %eax           #  47    0x11d84a  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  48    0x11d84c  4      OPC=1156  
  addl $0x28, %esp          #  49    0x11d850  3      OPC=65    
  addq %r15, %rsp           #  50    0x11d853  3      OPC=72    
  jmpq ._fwrite_r           #  51    0x11d856  5      OPC=930   
  nop                       #  52    0x11d85b  1      OPC=1343  
  nop                       #  53    0x11d85c  1      OPC=1343  
  nop                       #  54    0x11d85d  1      OPC=1343  
  nop                       #  55    0x11d85e  1      OPC=1343  
  nop                       #  56    0x11d85f  1      OPC=1343  
                                                                
.size fwrite, .-fwrite

