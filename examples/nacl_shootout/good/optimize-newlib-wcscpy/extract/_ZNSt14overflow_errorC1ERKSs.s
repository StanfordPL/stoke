  .text
  .globl _ZNSt14overflow_errorC1ERKSs
  .type _ZNSt14overflow_errorC1ERKSs, @function

#! file-offset 0x129080
#! rip-offset  0xe9080
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSt14overflow_errorC1ERKSs:        #        0xe9080  0      OPC=<label>         
  pushq %rbx                          #  1     0xe9080  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  2     0xe9081  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  3     0xe9083  2      OPC=movl_r32_r32    
  movl %ebx, %edi                     #  4     0xe9085  2      OPC=movl_r32_r32    
  nop                                 #  5     0xe9087  1      OPC=nop             
  nop                                 #  6     0xe9088  1      OPC=nop             
  nop                                 #  7     0xe9089  1      OPC=nop             
  nop                                 #  8     0xe908a  1      OPC=nop             
  nop                                 #  9     0xe908b  1      OPC=nop             
  nop                                 #  10    0xe908c  1      OPC=nop             
  nop                                 #  11    0xe908d  1      OPC=nop             
  nop                                 #  12    0xe908e  1      OPC=nop             
  nop                                 #  13    0xe908f  1      OPC=nop             
  nop                                 #  14    0xe9090  1      OPC=nop             
  nop                                 #  15    0xe9091  1      OPC=nop             
  nop                                 #  16    0xe9092  1      OPC=nop             
  nop                                 #  17    0xe9093  1      OPC=nop             
  nop                                 #  18    0xe9094  1      OPC=nop             
  nop                                 #  19    0xe9095  1      OPC=nop             
  nop                                 #  20    0xe9096  1      OPC=nop             
  nop                                 #  21    0xe9097  1      OPC=nop             
  nop                                 #  22    0xe9098  1      OPC=nop             
  nop                                 #  23    0xe9099  1      OPC=nop             
  nop                                 #  24    0xe909a  1      OPC=nop             
  callq ._ZNSt13runtime_errorC2ERKSs  #  25    0xe909b  5      OPC=callq_label     
  movl %ebx, %ebx                     #  26    0xe90a0  2      OPC=movl_r32_r32    
  movl $0x1003d718, (%r15,%rbx,1)     #  27    0xe90a2  8      OPC=movl_m32_imm32  
  popq %rbx                           #  28    0xe90aa  1      OPC=popq_r64_1      
  popq %r11                           #  29    0xe90ab  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  30    0xe90ad  7      OPC=andl_r32_imm32  
  nop                                 #  31    0xe90b4  1      OPC=nop             
  nop                                 #  32    0xe90b5  1      OPC=nop             
  nop                                 #  33    0xe90b6  1      OPC=nop             
  nop                                 #  34    0xe90b7  1      OPC=nop             
  addq %r15, %r11                     #  35    0xe90b8  3      OPC=addq_r64_r64    
  jmpq %r11                           #  36    0xe90bb  3      OPC=jmpq_r64        
  nop                                 #  37    0xe90be  1      OPC=nop             
  nop                                 #  38    0xe90bf  1      OPC=nop             
  nop                                 #  39    0xe90c0  1      OPC=nop             
  nop                                 #  40    0xe90c1  1      OPC=nop             
  nop                                 #  41    0xe90c2  1      OPC=nop             
  nop                                 #  42    0xe90c3  1      OPC=nop             
  nop                                 #  43    0xe90c4  1      OPC=nop             
  nop                                 #  44    0xe90c5  1      OPC=nop             
  nop                                 #  45    0xe90c6  1      OPC=nop             
                                                                                   
.size _ZNSt14overflow_errorC1ERKSs, .-_ZNSt14overflow_errorC1ERKSs

