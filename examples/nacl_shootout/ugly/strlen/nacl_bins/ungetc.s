  .text
  .globl ungetc
  .type ungetc, @function

#! file-offset 0x176b80
#! rip-offset  0x136b80
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.ungetc:                    #        0x136b80  0      OPC=0     
  movq %rbx, -0x10(%rsp)    #  1     0x136b80  5      OPC=1138  
  movq %r12, -0x8(%rsp)     #  2     0x136b85  5      OPC=1138  
  subl $0x18, %esp          #  3     0x136b8a  3      OPC=2384  
  addq %r15, %rsp           #  4     0x136b8d  3      OPC=72    
  movl %edi, %ebx           #  5     0x136b90  2      OPC=1157  
  movl %esi, %r12d          #  6     0x136b92  3      OPC=1157  
  nop                       #  7     0x136b95  1      OPC=1343  
  nop                       #  8     0x136b96  1      OPC=1343  
  nop                       #  9     0x136b97  1      OPC=1343  
  nop                       #  10    0x136b98  1      OPC=1343  
  nop                       #  11    0x136b99  1      OPC=1343  
  nop                       #  12    0x136b9a  1      OPC=1343  
  callq .__nacl_read_tp     #  13    0x136b9b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  14    0x136ba0  7      OPC=1069  
  movl %r12d, %edx          #  15    0x136ba7  3      OPC=1157  
  movl %ebx, %esi           #  16    0x136baa  2      OPC=1157  
  movq 0x10(%rsp), %r12     #  17    0x136bac  5      OPC=1161  
  movq 0x8(%rsp), %rbx      #  18    0x136bb1  5      OPC=1161  
  movl %eax, %eax           #  19    0x136bb6  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  20    0x136bb8  4      OPC=1156  
  nop                       #  21    0x136bbc  1      OPC=1343  
  nop                       #  22    0x136bbd  1      OPC=1343  
  nop                       #  23    0x136bbe  1      OPC=1343  
  nop                       #  24    0x136bbf  1      OPC=1343  
  addl $0x18, %esp          #  25    0x136bc0  3      OPC=65    
  addq %r15, %rsp           #  26    0x136bc3  3      OPC=72    
  jmpq ._ungetc_r           #  27    0x136bc6  5      OPC=930   
  nop                       #  28    0x136bcb  1      OPC=1343  
  nop                       #  29    0x136bcc  1      OPC=1343  
  nop                       #  30    0x136bcd  1      OPC=1343  
  nop                       #  31    0x136bce  1      OPC=1343  
  nop                       #  32    0x136bcf  1      OPC=1343  
  nop                       #  33    0x136bd0  1      OPC=1343  
  nop                       #  34    0x136bd1  1      OPC=1343  
  nop                       #  35    0x136bd2  1      OPC=1343  
  nop                       #  36    0x136bd3  1      OPC=1343  
  nop                       #  37    0x136bd4  1      OPC=1343  
  nop                       #  38    0x136bd5  1      OPC=1343  
  nop                       #  39    0x136bd6  1      OPC=1343  
  nop                       #  40    0x136bd7  1      OPC=1343  
  nop                       #  41    0x136bd8  1      OPC=1343  
  nop                       #  42    0x136bd9  1      OPC=1343  
  nop                       #  43    0x136bda  1      OPC=1343  
  nop                       #  44    0x136bdb  1      OPC=1343  
  nop                       #  45    0x136bdc  1      OPC=1343  
  nop                       #  46    0x136bdd  1      OPC=1343  
  nop                       #  47    0x136bde  1      OPC=1343  
  nop                       #  48    0x136bdf  1      OPC=1343  
                                                                
.size ungetc, .-ungetc

