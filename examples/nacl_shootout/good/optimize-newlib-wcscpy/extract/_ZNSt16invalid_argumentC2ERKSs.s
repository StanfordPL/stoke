  .text
  .globl _ZNSt16invalid_argumentC2ERKSs
  .type _ZNSt16invalid_argumentC2ERKSs, @function

#! file-offset 0x1293c0
#! rip-offset  0xe93c0
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNSt16invalid_argumentC2ERKSs:    #        0xe93c0  0      OPC=<label>         
  pushq %rbx                        #  1     0xe93c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                   #  2     0xe93c1  2      OPC=movl_r32_r32    
  movl %esi, %esi                   #  3     0xe93c3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                   #  4     0xe93c5  2      OPC=movl_r32_r32    
  nop                               #  5     0xe93c7  1      OPC=nop             
  nop                               #  6     0xe93c8  1      OPC=nop             
  nop                               #  7     0xe93c9  1      OPC=nop             
  nop                               #  8     0xe93ca  1      OPC=nop             
  nop                               #  9     0xe93cb  1      OPC=nop             
  nop                               #  10    0xe93cc  1      OPC=nop             
  nop                               #  11    0xe93cd  1      OPC=nop             
  nop                               #  12    0xe93ce  1      OPC=nop             
  nop                               #  13    0xe93cf  1      OPC=nop             
  nop                               #  14    0xe93d0  1      OPC=nop             
  nop                               #  15    0xe93d1  1      OPC=nop             
  nop                               #  16    0xe93d2  1      OPC=nop             
  nop                               #  17    0xe93d3  1      OPC=nop             
  nop                               #  18    0xe93d4  1      OPC=nop             
  nop                               #  19    0xe93d5  1      OPC=nop             
  nop                               #  20    0xe93d6  1      OPC=nop             
  nop                               #  21    0xe93d7  1      OPC=nop             
  nop                               #  22    0xe93d8  1      OPC=nop             
  nop                               #  23    0xe93d9  1      OPC=nop             
  nop                               #  24    0xe93da  1      OPC=nop             
  callq ._ZNSt11logic_errorC2ERKSs  #  25    0xe93db  5      OPC=callq_label     
  movl %ebx, %ebx                   #  26    0xe93e0  2      OPC=movl_r32_r32    
  movl $0x1003d808, (%r15,%rbx,1)   #  27    0xe93e2  8      OPC=movl_m32_imm32  
  popq %rbx                         #  28    0xe93ea  1      OPC=popq_r64_1      
  popq %r11                         #  29    0xe93eb  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  30    0xe93ed  7      OPC=andl_r32_imm32  
  nop                               #  31    0xe93f4  1      OPC=nop             
  nop                               #  32    0xe93f5  1      OPC=nop             
  nop                               #  33    0xe93f6  1      OPC=nop             
  nop                               #  34    0xe93f7  1      OPC=nop             
  addq %r15, %r11                   #  35    0xe93f8  3      OPC=addq_r64_r64    
  jmpq %r11                         #  36    0xe93fb  3      OPC=jmpq_r64        
  nop                               #  37    0xe93fe  1      OPC=nop             
  nop                               #  38    0xe93ff  1      OPC=nop             
  nop                               #  39    0xe9400  1      OPC=nop             
  nop                               #  40    0xe9401  1      OPC=nop             
  nop                               #  41    0xe9402  1      OPC=nop             
  nop                               #  42    0xe9403  1      OPC=nop             
  nop                               #  43    0xe9404  1      OPC=nop             
  nop                               #  44    0xe9405  1      OPC=nop             
  nop                               #  45    0xe9406  1      OPC=nop             
                                                                                 
.size _ZNSt16invalid_argumentC2ERKSs, .-_ZNSt16invalid_argumentC2ERKSs

