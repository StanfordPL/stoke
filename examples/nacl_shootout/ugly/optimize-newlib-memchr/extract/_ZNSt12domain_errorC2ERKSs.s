  .text
  .globl _ZNSt12domain_errorC2ERKSs
  .type _ZNSt12domain_errorC2ERKSs, @function

#! file-offset 0x129e60
#! rip-offset  0xe9e60
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNSt12domain_errorC2ERKSs:        #        0xe9e60  0      OPC=<label>         
  pushq %rbx                        #  1     0xe9e60  1      OPC=pushq_r64_1     
  movl %edi, %ebx                   #  2     0xe9e61  2      OPC=movl_r32_r32    
  movl %esi, %esi                   #  3     0xe9e63  2      OPC=movl_r32_r32    
  movl %ebx, %edi                   #  4     0xe9e65  2      OPC=movl_r32_r32    
  nop                               #  5     0xe9e67  1      OPC=nop             
  nop                               #  6     0xe9e68  1      OPC=nop             
  nop                               #  7     0xe9e69  1      OPC=nop             
  nop                               #  8     0xe9e6a  1      OPC=nop             
  nop                               #  9     0xe9e6b  1      OPC=nop             
  nop                               #  10    0xe9e6c  1      OPC=nop             
  nop                               #  11    0xe9e6d  1      OPC=nop             
  nop                               #  12    0xe9e6e  1      OPC=nop             
  nop                               #  13    0xe9e6f  1      OPC=nop             
  nop                               #  14    0xe9e70  1      OPC=nop             
  nop                               #  15    0xe9e71  1      OPC=nop             
  nop                               #  16    0xe9e72  1      OPC=nop             
  nop                               #  17    0xe9e73  1      OPC=nop             
  nop                               #  18    0xe9e74  1      OPC=nop             
  nop                               #  19    0xe9e75  1      OPC=nop             
  nop                               #  20    0xe9e76  1      OPC=nop             
  nop                               #  21    0xe9e77  1      OPC=nop             
  nop                               #  22    0xe9e78  1      OPC=nop             
  nop                               #  23    0xe9e79  1      OPC=nop             
  nop                               #  24    0xe9e7a  1      OPC=nop             
  callq ._ZNSt11logic_errorC2ERKSs  #  25    0xe9e7b  5      OPC=callq_label     
  movl %ebx, %ebx                   #  26    0xe9e80  2      OPC=movl_r32_r32    
  movl $0x1003d848, (%r15,%rbx,1)   #  27    0xe9e82  8      OPC=movl_m32_imm32  
  popq %rbx                         #  28    0xe9e8a  1      OPC=popq_r64_1      
  popq %r11                         #  29    0xe9e8b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  30    0xe9e8d  7      OPC=andl_r32_imm32  
  nop                               #  31    0xe9e94  1      OPC=nop             
  nop                               #  32    0xe9e95  1      OPC=nop             
  nop                               #  33    0xe9e96  1      OPC=nop             
  nop                               #  34    0xe9e97  1      OPC=nop             
  addq %r15, %r11                   #  35    0xe9e98  3      OPC=addq_r64_r64    
  jmpq %r11                         #  36    0xe9e9b  3      OPC=jmpq_r64        
  nop                               #  37    0xe9e9e  1      OPC=nop             
  nop                               #  38    0xe9e9f  1      OPC=nop             
  nop                               #  39    0xe9ea0  1      OPC=nop             
  nop                               #  40    0xe9ea1  1      OPC=nop             
  nop                               #  41    0xe9ea2  1      OPC=nop             
  nop                               #  42    0xe9ea3  1      OPC=nop             
  nop                               #  43    0xe9ea4  1      OPC=nop             
  nop                               #  44    0xe9ea5  1      OPC=nop             
  nop                               #  45    0xe9ea6  1      OPC=nop             
                                                                                 
.size _ZNSt12domain_errorC2ERKSs, .-_ZNSt12domain_errorC2ERKSs

