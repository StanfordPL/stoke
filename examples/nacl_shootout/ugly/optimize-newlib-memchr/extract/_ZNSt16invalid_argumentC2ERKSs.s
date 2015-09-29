  .text
  .globl _ZNSt16invalid_argumentC2ERKSs
  .type _ZNSt16invalid_argumentC2ERKSs, @function

#! file-offset 0x129de0
#! rip-offset  0xe9de0
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNSt16invalid_argumentC2ERKSs:    #        0xe9de0  0      OPC=<label>         
  pushq %rbx                        #  1     0xe9de0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                   #  2     0xe9de1  2      OPC=movl_r32_r32    
  movl %esi, %esi                   #  3     0xe9de3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                   #  4     0xe9de5  2      OPC=movl_r32_r32    
  nop                               #  5     0xe9de7  1      OPC=nop             
  nop                               #  6     0xe9de8  1      OPC=nop             
  nop                               #  7     0xe9de9  1      OPC=nop             
  nop                               #  8     0xe9dea  1      OPC=nop             
  nop                               #  9     0xe9deb  1      OPC=nop             
  nop                               #  10    0xe9dec  1      OPC=nop             
  nop                               #  11    0xe9ded  1      OPC=nop             
  nop                               #  12    0xe9dee  1      OPC=nop             
  nop                               #  13    0xe9def  1      OPC=nop             
  nop                               #  14    0xe9df0  1      OPC=nop             
  nop                               #  15    0xe9df1  1      OPC=nop             
  nop                               #  16    0xe9df2  1      OPC=nop             
  nop                               #  17    0xe9df3  1      OPC=nop             
  nop                               #  18    0xe9df4  1      OPC=nop             
  nop                               #  19    0xe9df5  1      OPC=nop             
  nop                               #  20    0xe9df6  1      OPC=nop             
  nop                               #  21    0xe9df7  1      OPC=nop             
  nop                               #  22    0xe9df8  1      OPC=nop             
  nop                               #  23    0xe9df9  1      OPC=nop             
  nop                               #  24    0xe9dfa  1      OPC=nop             
  callq ._ZNSt11logic_errorC2ERKSs  #  25    0xe9dfb  5      OPC=callq_label     
  movl %ebx, %ebx                   #  26    0xe9e00  2      OPC=movl_r32_r32    
  movl $0x1003d808, (%r15,%rbx,1)   #  27    0xe9e02  8      OPC=movl_m32_imm32  
  popq %rbx                         #  28    0xe9e0a  1      OPC=popq_r64_1      
  popq %r11                         #  29    0xe9e0b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  30    0xe9e0d  7      OPC=andl_r32_imm32  
  nop                               #  31    0xe9e14  1      OPC=nop             
  nop                               #  32    0xe9e15  1      OPC=nop             
  nop                               #  33    0xe9e16  1      OPC=nop             
  nop                               #  34    0xe9e17  1      OPC=nop             
  addq %r15, %r11                   #  35    0xe9e18  3      OPC=addq_r64_r64    
  jmpq %r11                         #  36    0xe9e1b  3      OPC=jmpq_r64        
  nop                               #  37    0xe9e1e  1      OPC=nop             
  nop                               #  38    0xe9e1f  1      OPC=nop             
  nop                               #  39    0xe9e20  1      OPC=nop             
  nop                               #  40    0xe9e21  1      OPC=nop             
  nop                               #  41    0xe9e22  1      OPC=nop             
  nop                               #  42    0xe9e23  1      OPC=nop             
  nop                               #  43    0xe9e24  1      OPC=nop             
  nop                               #  44    0xe9e25  1      OPC=nop             
  nop                               #  45    0xe9e26  1      OPC=nop             
                                                                                 
.size _ZNSt16invalid_argumentC2ERKSs, .-_ZNSt16invalid_argumentC2ERKSs

