  .text
  .globl _ZNSt15underflow_errorC2ERKSs
  .type _ZNSt15underflow_errorC2ERKSs, @function

#! file-offset 0x129a60
#! rip-offset  0xe9a60
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSt15underflow_errorC2ERKSs:       #        0xe9a60  0      OPC=<label>         
  pushq %rbx                          #  1     0xe9a60  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  2     0xe9a61  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  3     0xe9a63  2      OPC=movl_r32_r32    
  movl %ebx, %edi                     #  4     0xe9a65  2      OPC=movl_r32_r32    
  nop                                 #  5     0xe9a67  1      OPC=nop             
  nop                                 #  6     0xe9a68  1      OPC=nop             
  nop                                 #  7     0xe9a69  1      OPC=nop             
  nop                                 #  8     0xe9a6a  1      OPC=nop             
  nop                                 #  9     0xe9a6b  1      OPC=nop             
  nop                                 #  10    0xe9a6c  1      OPC=nop             
  nop                                 #  11    0xe9a6d  1      OPC=nop             
  nop                                 #  12    0xe9a6e  1      OPC=nop             
  nop                                 #  13    0xe9a6f  1      OPC=nop             
  nop                                 #  14    0xe9a70  1      OPC=nop             
  nop                                 #  15    0xe9a71  1      OPC=nop             
  nop                                 #  16    0xe9a72  1      OPC=nop             
  nop                                 #  17    0xe9a73  1      OPC=nop             
  nop                                 #  18    0xe9a74  1      OPC=nop             
  nop                                 #  19    0xe9a75  1      OPC=nop             
  nop                                 #  20    0xe9a76  1      OPC=nop             
  nop                                 #  21    0xe9a77  1      OPC=nop             
  nop                                 #  22    0xe9a78  1      OPC=nop             
  nop                                 #  23    0xe9a79  1      OPC=nop             
  nop                                 #  24    0xe9a7a  1      OPC=nop             
  callq ._ZNSt13runtime_errorC2ERKSs  #  25    0xe9a7b  5      OPC=callq_label     
  movl %ebx, %ebx                     #  26    0xe9a80  2      OPC=movl_r32_r32    
  movl $0x1003d6d8, (%r15,%rbx,1)     #  27    0xe9a82  8      OPC=movl_m32_imm32  
  popq %rbx                           #  28    0xe9a8a  1      OPC=popq_r64_1      
  popq %r11                           #  29    0xe9a8b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  30    0xe9a8d  7      OPC=andl_r32_imm32  
  nop                                 #  31    0xe9a94  1      OPC=nop             
  nop                                 #  32    0xe9a95  1      OPC=nop             
  nop                                 #  33    0xe9a96  1      OPC=nop             
  nop                                 #  34    0xe9a97  1      OPC=nop             
  addq %r15, %r11                     #  35    0xe9a98  3      OPC=addq_r64_r64    
  jmpq %r11                           #  36    0xe9a9b  3      OPC=jmpq_r64        
  nop                                 #  37    0xe9a9e  1      OPC=nop             
  nop                                 #  38    0xe9a9f  1      OPC=nop             
  nop                                 #  39    0xe9aa0  1      OPC=nop             
  nop                                 #  40    0xe9aa1  1      OPC=nop             
  nop                                 #  41    0xe9aa2  1      OPC=nop             
  nop                                 #  42    0xe9aa3  1      OPC=nop             
  nop                                 #  43    0xe9aa4  1      OPC=nop             
  nop                                 #  44    0xe9aa5  1      OPC=nop             
  nop                                 #  45    0xe9aa6  1      OPC=nop             
                                                                                   
.size _ZNSt15underflow_errorC2ERKSs, .-_ZNSt15underflow_errorC2ERKSs

