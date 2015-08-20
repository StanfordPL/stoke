  .text
  .globl _ZNSt15underflow_errorC1ERKSs
  .type _ZNSt15underflow_errorC1ERKSs, @function

#! file-offset 0x129300
#! rip-offset  0xe9300
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSt15underflow_errorC1ERKSs:       #        0xe9300  0      OPC=<label>         
  pushq %rbx                          #  1     0xe9300  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  2     0xe9301  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  3     0xe9303  2      OPC=movl_r32_r32    
  movl %ebx, %edi                     #  4     0xe9305  2      OPC=movl_r32_r32    
  nop                                 #  5     0xe9307  1      OPC=nop             
  nop                                 #  6     0xe9308  1      OPC=nop             
  nop                                 #  7     0xe9309  1      OPC=nop             
  nop                                 #  8     0xe930a  1      OPC=nop             
  nop                                 #  9     0xe930b  1      OPC=nop             
  nop                                 #  10    0xe930c  1      OPC=nop             
  nop                                 #  11    0xe930d  1      OPC=nop             
  nop                                 #  12    0xe930e  1      OPC=nop             
  nop                                 #  13    0xe930f  1      OPC=nop             
  nop                                 #  14    0xe9310  1      OPC=nop             
  nop                                 #  15    0xe9311  1      OPC=nop             
  nop                                 #  16    0xe9312  1      OPC=nop             
  nop                                 #  17    0xe9313  1      OPC=nop             
  nop                                 #  18    0xe9314  1      OPC=nop             
  nop                                 #  19    0xe9315  1      OPC=nop             
  nop                                 #  20    0xe9316  1      OPC=nop             
  nop                                 #  21    0xe9317  1      OPC=nop             
  nop                                 #  22    0xe9318  1      OPC=nop             
  nop                                 #  23    0xe9319  1      OPC=nop             
  nop                                 #  24    0xe931a  1      OPC=nop             
  callq ._ZNSt13runtime_errorC2ERKSs  #  25    0xe931b  5      OPC=callq_label     
  movl %ebx, %ebx                     #  26    0xe9320  2      OPC=movl_r32_r32    
  movl $0x1003d6d8, (%r15,%rbx,1)     #  27    0xe9322  8      OPC=movl_m32_imm32  
  popq %rbx                           #  28    0xe932a  1      OPC=popq_r64_1      
  popq %r11                           #  29    0xe932b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  30    0xe932d  7      OPC=andl_r32_imm32  
  nop                                 #  31    0xe9334  1      OPC=nop             
  nop                                 #  32    0xe9335  1      OPC=nop             
  nop                                 #  33    0xe9336  1      OPC=nop             
  nop                                 #  34    0xe9337  1      OPC=nop             
  addq %r15, %r11                     #  35    0xe9338  3      OPC=addq_r64_r64    
  jmpq %r11                           #  36    0xe933b  3      OPC=jmpq_r64        
  nop                                 #  37    0xe933e  1      OPC=nop             
  nop                                 #  38    0xe933f  1      OPC=nop             
  nop                                 #  39    0xe9340  1      OPC=nop             
  nop                                 #  40    0xe9341  1      OPC=nop             
  nop                                 #  41    0xe9342  1      OPC=nop             
  nop                                 #  42    0xe9343  1      OPC=nop             
  nop                                 #  43    0xe9344  1      OPC=nop             
  nop                                 #  44    0xe9345  1      OPC=nop             
  nop                                 #  45    0xe9346  1      OPC=nop             
                                                                                   
.size _ZNSt15underflow_errorC1ERKSs, .-_ZNSt15underflow_errorC1ERKSs

