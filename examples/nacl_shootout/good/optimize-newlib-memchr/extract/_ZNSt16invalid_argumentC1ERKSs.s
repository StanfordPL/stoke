  .text
  .globl _ZNSt16invalid_argumentC1ERKSs
  .type _ZNSt16invalid_argumentC1ERKSs, @function

#! file-offset 0x129da0
#! rip-offset  0xe9da0
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNSt16invalid_argumentC1ERKSs:    #        0xe9da0  0      OPC=<label>         
  pushq %rbx                        #  1     0xe9da0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                   #  2     0xe9da1  2      OPC=movl_r32_r32    
  movl %esi, %esi                   #  3     0xe9da3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                   #  4     0xe9da5  2      OPC=movl_r32_r32    
  nop                               #  5     0xe9da7  1      OPC=nop             
  nop                               #  6     0xe9da8  1      OPC=nop             
  nop                               #  7     0xe9da9  1      OPC=nop             
  nop                               #  8     0xe9daa  1      OPC=nop             
  nop                               #  9     0xe9dab  1      OPC=nop             
  nop                               #  10    0xe9dac  1      OPC=nop             
  nop                               #  11    0xe9dad  1      OPC=nop             
  nop                               #  12    0xe9dae  1      OPC=nop             
  nop                               #  13    0xe9daf  1      OPC=nop             
  nop                               #  14    0xe9db0  1      OPC=nop             
  nop                               #  15    0xe9db1  1      OPC=nop             
  nop                               #  16    0xe9db2  1      OPC=nop             
  nop                               #  17    0xe9db3  1      OPC=nop             
  nop                               #  18    0xe9db4  1      OPC=nop             
  nop                               #  19    0xe9db5  1      OPC=nop             
  nop                               #  20    0xe9db6  1      OPC=nop             
  nop                               #  21    0xe9db7  1      OPC=nop             
  nop                               #  22    0xe9db8  1      OPC=nop             
  nop                               #  23    0xe9db9  1      OPC=nop             
  nop                               #  24    0xe9dba  1      OPC=nop             
  callq ._ZNSt11logic_errorC2ERKSs  #  25    0xe9dbb  5      OPC=callq_label     
  movl %ebx, %ebx                   #  26    0xe9dc0  2      OPC=movl_r32_r32    
  movl $0x1003d808, (%r15,%rbx,1)   #  27    0xe9dc2  8      OPC=movl_m32_imm32  
  popq %rbx                         #  28    0xe9dca  1      OPC=popq_r64_1      
  popq %r11                         #  29    0xe9dcb  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  30    0xe9dcd  7      OPC=andl_r32_imm32  
  nop                               #  31    0xe9dd4  1      OPC=nop             
  nop                               #  32    0xe9dd5  1      OPC=nop             
  nop                               #  33    0xe9dd6  1      OPC=nop             
  nop                               #  34    0xe9dd7  1      OPC=nop             
  addq %r15, %r11                   #  35    0xe9dd8  3      OPC=addq_r64_r64    
  jmpq %r11                         #  36    0xe9ddb  3      OPC=jmpq_r64        
  nop                               #  37    0xe9dde  1      OPC=nop             
  nop                               #  38    0xe9ddf  1      OPC=nop             
  nop                               #  39    0xe9de0  1      OPC=nop             
  nop                               #  40    0xe9de1  1      OPC=nop             
  nop                               #  41    0xe9de2  1      OPC=nop             
  nop                               #  42    0xe9de3  1      OPC=nop             
  nop                               #  43    0xe9de4  1      OPC=nop             
  nop                               #  44    0xe9de5  1      OPC=nop             
  nop                               #  45    0xe9de6  1      OPC=nop             
                                                                                 
.size _ZNSt16invalid_argumentC1ERKSs, .-_ZNSt16invalid_argumentC1ERKSs

