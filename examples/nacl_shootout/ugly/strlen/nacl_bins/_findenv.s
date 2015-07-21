  .text
  .globl _findenv
  .type _findenv, @function

#! file-offset 0x15dc60
#! rip-offset  0x11dc60
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
._findenv:                  #        0x11dc60  0      OPC=0     
  movq %rbx, -0x10(%rsp)    #  1     0x11dc60  5      OPC=1138  
  movq %r12, -0x8(%rsp)     #  2     0x11dc65  5      OPC=1138  
  subl $0x18, %esp          #  3     0x11dc6a  3      OPC=2384  
  addq %r15, %rsp           #  4     0x11dc6d  3      OPC=72    
  movl %edi, %ebx           #  5     0x11dc70  2      OPC=1157  
  movl %esi, %r12d          #  6     0x11dc72  3      OPC=1157  
  nop                       #  7     0x11dc75  1      OPC=1343  
  nop                       #  8     0x11dc76  1      OPC=1343  
  nop                       #  9     0x11dc77  1      OPC=1343  
  nop                       #  10    0x11dc78  1      OPC=1343  
  nop                       #  11    0x11dc79  1      OPC=1343  
  nop                       #  12    0x11dc7a  1      OPC=1343  
  callq .__nacl_read_tp     #  13    0x11dc7b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  14    0x11dc80  7      OPC=1069  
  movl %r12d, %edx          #  15    0x11dc87  3      OPC=1157  
  movl %ebx, %esi           #  16    0x11dc8a  2      OPC=1157  
  movq 0x10(%rsp), %r12     #  17    0x11dc8c  5      OPC=1161  
  movq 0x8(%rsp), %rbx      #  18    0x11dc91  5      OPC=1161  
  movl %eax, %eax           #  19    0x11dc96  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  20    0x11dc98  4      OPC=1156  
  nop                       #  21    0x11dc9c  1      OPC=1343  
  nop                       #  22    0x11dc9d  1      OPC=1343  
  nop                       #  23    0x11dc9e  1      OPC=1343  
  nop                       #  24    0x11dc9f  1      OPC=1343  
  addl $0x18, %esp          #  25    0x11dca0  3      OPC=65    
  addq %r15, %rsp           #  26    0x11dca3  3      OPC=72    
  jmpq ._findenv_r          #  27    0x11dca6  5      OPC=930   
  nop                       #  28    0x11dcab  1      OPC=1343  
  nop                       #  29    0x11dcac  1      OPC=1343  
  nop                       #  30    0x11dcad  1      OPC=1343  
  nop                       #  31    0x11dcae  1      OPC=1343  
  nop                       #  32    0x11dcaf  1      OPC=1343  
  nop                       #  33    0x11dcb0  1      OPC=1343  
  nop                       #  34    0x11dcb1  1      OPC=1343  
  nop                       #  35    0x11dcb2  1      OPC=1343  
  nop                       #  36    0x11dcb3  1      OPC=1343  
  nop                       #  37    0x11dcb4  1      OPC=1343  
  nop                       #  38    0x11dcb5  1      OPC=1343  
  nop                       #  39    0x11dcb6  1      OPC=1343  
  nop                       #  40    0x11dcb7  1      OPC=1343  
  nop                       #  41    0x11dcb8  1      OPC=1343  
  nop                       #  42    0x11dcb9  1      OPC=1343  
  nop                       #  43    0x11dcba  1      OPC=1343  
  nop                       #  44    0x11dcbb  1      OPC=1343  
  nop                       #  45    0x11dcbc  1      OPC=1343  
  nop                       #  46    0x11dcbd  1      OPC=1343  
  nop                       #  47    0x11dcbe  1      OPC=1343  
  nop                       #  48    0x11dcbf  1      OPC=1343  
                                                                
.size _findenv, .-_findenv

