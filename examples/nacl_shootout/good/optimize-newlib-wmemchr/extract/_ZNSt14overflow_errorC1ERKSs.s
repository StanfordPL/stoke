  .text
  .globl _ZNSt14overflow_errorC1ERKSs
  .type _ZNSt14overflow_errorC1ERKSs, @function

#! file-offset 0x129380
#! rip-offset  0xe9380
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSt14overflow_errorC1ERKSs:        #        0xe9380  0      OPC=<label>         
  pushq %rbx                          #  1     0xe9380  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  2     0xe9381  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  3     0xe9383  2      OPC=movl_r32_r32    
  movl %ebx, %edi                     #  4     0xe9385  2      OPC=movl_r32_r32    
  nop                                 #  5     0xe9387  1      OPC=nop             
  nop                                 #  6     0xe9388  1      OPC=nop             
  nop                                 #  7     0xe9389  1      OPC=nop             
  nop                                 #  8     0xe938a  1      OPC=nop             
  nop                                 #  9     0xe938b  1      OPC=nop             
  nop                                 #  10    0xe938c  1      OPC=nop             
  nop                                 #  11    0xe938d  1      OPC=nop             
  nop                                 #  12    0xe938e  1      OPC=nop             
  nop                                 #  13    0xe938f  1      OPC=nop             
  nop                                 #  14    0xe9390  1      OPC=nop             
  nop                                 #  15    0xe9391  1      OPC=nop             
  nop                                 #  16    0xe9392  1      OPC=nop             
  nop                                 #  17    0xe9393  1      OPC=nop             
  nop                                 #  18    0xe9394  1      OPC=nop             
  nop                                 #  19    0xe9395  1      OPC=nop             
  nop                                 #  20    0xe9396  1      OPC=nop             
  nop                                 #  21    0xe9397  1      OPC=nop             
  nop                                 #  22    0xe9398  1      OPC=nop             
  nop                                 #  23    0xe9399  1      OPC=nop             
  nop                                 #  24    0xe939a  1      OPC=nop             
  callq ._ZNSt13runtime_errorC2ERKSs  #  25    0xe939b  5      OPC=callq_label     
  movl %ebx, %ebx                     #  26    0xe93a0  2      OPC=movl_r32_r32    
  movl $0x1003d718, (%r15,%rbx,1)     #  27    0xe93a2  8      OPC=movl_m32_imm32  
  popq %rbx                           #  28    0xe93aa  1      OPC=popq_r64_1      
  popq %r11                           #  29    0xe93ab  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  30    0xe93ad  7      OPC=andl_r32_imm32  
  nop                                 #  31    0xe93b4  1      OPC=nop             
  nop                                 #  32    0xe93b5  1      OPC=nop             
  nop                                 #  33    0xe93b6  1      OPC=nop             
  nop                                 #  34    0xe93b7  1      OPC=nop             
  addq %r15, %r11                     #  35    0xe93b8  3      OPC=addq_r64_r64    
  jmpq %r11                           #  36    0xe93bb  3      OPC=jmpq_r64        
  nop                                 #  37    0xe93be  1      OPC=nop             
  nop                                 #  38    0xe93bf  1      OPC=nop             
  nop                                 #  39    0xe93c0  1      OPC=nop             
  nop                                 #  40    0xe93c1  1      OPC=nop             
  nop                                 #  41    0xe93c2  1      OPC=nop             
  nop                                 #  42    0xe93c3  1      OPC=nop             
  nop                                 #  43    0xe93c4  1      OPC=nop             
  nop                                 #  44    0xe93c5  1      OPC=nop             
  nop                                 #  45    0xe93c6  1      OPC=nop             
                                                                                   
.size _ZNSt14overflow_errorC1ERKSs, .-_ZNSt14overflow_errorC1ERKSs

