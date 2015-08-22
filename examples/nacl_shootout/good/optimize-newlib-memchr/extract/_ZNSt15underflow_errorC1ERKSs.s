  .text
  .globl _ZNSt15underflow_errorC1ERKSs
  .type _ZNSt15underflow_errorC1ERKSs, @function

#! file-offset 0x129a20
#! rip-offset  0xe9a20
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSt15underflow_errorC1ERKSs:       #        0xe9a20  0      OPC=<label>         
  pushq %rbx                          #  1     0xe9a20  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  2     0xe9a21  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  3     0xe9a23  2      OPC=movl_r32_r32    
  movl %ebx, %edi                     #  4     0xe9a25  2      OPC=movl_r32_r32    
  nop                                 #  5     0xe9a27  1      OPC=nop             
  nop                                 #  6     0xe9a28  1      OPC=nop             
  nop                                 #  7     0xe9a29  1      OPC=nop             
  nop                                 #  8     0xe9a2a  1      OPC=nop             
  nop                                 #  9     0xe9a2b  1      OPC=nop             
  nop                                 #  10    0xe9a2c  1      OPC=nop             
  nop                                 #  11    0xe9a2d  1      OPC=nop             
  nop                                 #  12    0xe9a2e  1      OPC=nop             
  nop                                 #  13    0xe9a2f  1      OPC=nop             
  nop                                 #  14    0xe9a30  1      OPC=nop             
  nop                                 #  15    0xe9a31  1      OPC=nop             
  nop                                 #  16    0xe9a32  1      OPC=nop             
  nop                                 #  17    0xe9a33  1      OPC=nop             
  nop                                 #  18    0xe9a34  1      OPC=nop             
  nop                                 #  19    0xe9a35  1      OPC=nop             
  nop                                 #  20    0xe9a36  1      OPC=nop             
  nop                                 #  21    0xe9a37  1      OPC=nop             
  nop                                 #  22    0xe9a38  1      OPC=nop             
  nop                                 #  23    0xe9a39  1      OPC=nop             
  nop                                 #  24    0xe9a3a  1      OPC=nop             
  callq ._ZNSt13runtime_errorC2ERKSs  #  25    0xe9a3b  5      OPC=callq_label     
  movl %ebx, %ebx                     #  26    0xe9a40  2      OPC=movl_r32_r32    
  movl $0x1003d6d8, (%r15,%rbx,1)     #  27    0xe9a42  8      OPC=movl_m32_imm32  
  popq %rbx                           #  28    0xe9a4a  1      OPC=popq_r64_1      
  popq %r11                           #  29    0xe9a4b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  30    0xe9a4d  7      OPC=andl_r32_imm32  
  nop                                 #  31    0xe9a54  1      OPC=nop             
  nop                                 #  32    0xe9a55  1      OPC=nop             
  nop                                 #  33    0xe9a56  1      OPC=nop             
  nop                                 #  34    0xe9a57  1      OPC=nop             
  addq %r15, %r11                     #  35    0xe9a58  3      OPC=addq_r64_r64    
  jmpq %r11                           #  36    0xe9a5b  3      OPC=jmpq_r64        
  nop                                 #  37    0xe9a5e  1      OPC=nop             
  nop                                 #  38    0xe9a5f  1      OPC=nop             
  nop                                 #  39    0xe9a60  1      OPC=nop             
  nop                                 #  40    0xe9a61  1      OPC=nop             
  nop                                 #  41    0xe9a62  1      OPC=nop             
  nop                                 #  42    0xe9a63  1      OPC=nop             
  nop                                 #  43    0xe9a64  1      OPC=nop             
  nop                                 #  44    0xe9a65  1      OPC=nop             
  nop                                 #  45    0xe9a66  1      OPC=nop             
                                                                                   
.size _ZNSt15underflow_errorC1ERKSs, .-_ZNSt15underflow_errorC1ERKSs

