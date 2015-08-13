  .text
  .globl _ZNSt15underflow_errorC1ERKSs
  .type _ZNSt15underflow_errorC1ERKSs, @function

#! file-offset 0x129000
#! rip-offset  0xe9000
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSt15underflow_errorC1ERKSs:       #        0xe9000  0      OPC=<label>         
  pushq %rbx                          #  1     0xe9000  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  2     0xe9001  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  3     0xe9003  2      OPC=movl_r32_r32    
  movl %ebx, %edi                     #  4     0xe9005  2      OPC=movl_r32_r32    
  nop                                 #  5     0xe9007  1      OPC=nop             
  nop                                 #  6     0xe9008  1      OPC=nop             
  nop                                 #  7     0xe9009  1      OPC=nop             
  nop                                 #  8     0xe900a  1      OPC=nop             
  nop                                 #  9     0xe900b  1      OPC=nop             
  nop                                 #  10    0xe900c  1      OPC=nop             
  nop                                 #  11    0xe900d  1      OPC=nop             
  nop                                 #  12    0xe900e  1      OPC=nop             
  nop                                 #  13    0xe900f  1      OPC=nop             
  nop                                 #  14    0xe9010  1      OPC=nop             
  nop                                 #  15    0xe9011  1      OPC=nop             
  nop                                 #  16    0xe9012  1      OPC=nop             
  nop                                 #  17    0xe9013  1      OPC=nop             
  nop                                 #  18    0xe9014  1      OPC=nop             
  nop                                 #  19    0xe9015  1      OPC=nop             
  nop                                 #  20    0xe9016  1      OPC=nop             
  nop                                 #  21    0xe9017  1      OPC=nop             
  nop                                 #  22    0xe9018  1      OPC=nop             
  nop                                 #  23    0xe9019  1      OPC=nop             
  nop                                 #  24    0xe901a  1      OPC=nop             
  callq ._ZNSt13runtime_errorC2ERKSs  #  25    0xe901b  5      OPC=callq_label     
  movl %ebx, %ebx                     #  26    0xe9020  2      OPC=movl_r32_r32    
  movl $0x1003d6d8, (%r15,%rbx,1)     #  27    0xe9022  8      OPC=movl_m32_imm32  
  popq %rbx                           #  28    0xe902a  1      OPC=popq_r64_1      
  popq %r11                           #  29    0xe902b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  30    0xe902d  7      OPC=andl_r32_imm32  
  nop                                 #  31    0xe9034  1      OPC=nop             
  nop                                 #  32    0xe9035  1      OPC=nop             
  nop                                 #  33    0xe9036  1      OPC=nop             
  nop                                 #  34    0xe9037  1      OPC=nop             
  addq %r15, %r11                     #  35    0xe9038  3      OPC=addq_r64_r64    
  jmpq %r11                           #  36    0xe903b  3      OPC=jmpq_r64        
  nop                                 #  37    0xe903e  1      OPC=nop             
  nop                                 #  38    0xe903f  1      OPC=nop             
  nop                                 #  39    0xe9040  1      OPC=nop             
  nop                                 #  40    0xe9041  1      OPC=nop             
  nop                                 #  41    0xe9042  1      OPC=nop             
  nop                                 #  42    0xe9043  1      OPC=nop             
  nop                                 #  43    0xe9044  1      OPC=nop             
  nop                                 #  44    0xe9045  1      OPC=nop             
  nop                                 #  45    0xe9046  1      OPC=nop             
                                                                                   
.size _ZNSt15underflow_errorC1ERKSs, .-_ZNSt15underflow_errorC1ERKSs

