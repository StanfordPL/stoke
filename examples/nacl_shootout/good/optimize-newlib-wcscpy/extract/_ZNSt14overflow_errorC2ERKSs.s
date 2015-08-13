  .text
  .globl _ZNSt14overflow_errorC2ERKSs
  .type _ZNSt14overflow_errorC2ERKSs, @function

#! file-offset 0x1290c0
#! rip-offset  0xe90c0
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSt14overflow_errorC2ERKSs:        #        0xe90c0  0      OPC=<label>         
  pushq %rbx                          #  1     0xe90c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  2     0xe90c1  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  3     0xe90c3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                     #  4     0xe90c5  2      OPC=movl_r32_r32    
  nop                                 #  5     0xe90c7  1      OPC=nop             
  nop                                 #  6     0xe90c8  1      OPC=nop             
  nop                                 #  7     0xe90c9  1      OPC=nop             
  nop                                 #  8     0xe90ca  1      OPC=nop             
  nop                                 #  9     0xe90cb  1      OPC=nop             
  nop                                 #  10    0xe90cc  1      OPC=nop             
  nop                                 #  11    0xe90cd  1      OPC=nop             
  nop                                 #  12    0xe90ce  1      OPC=nop             
  nop                                 #  13    0xe90cf  1      OPC=nop             
  nop                                 #  14    0xe90d0  1      OPC=nop             
  nop                                 #  15    0xe90d1  1      OPC=nop             
  nop                                 #  16    0xe90d2  1      OPC=nop             
  nop                                 #  17    0xe90d3  1      OPC=nop             
  nop                                 #  18    0xe90d4  1      OPC=nop             
  nop                                 #  19    0xe90d5  1      OPC=nop             
  nop                                 #  20    0xe90d6  1      OPC=nop             
  nop                                 #  21    0xe90d7  1      OPC=nop             
  nop                                 #  22    0xe90d8  1      OPC=nop             
  nop                                 #  23    0xe90d9  1      OPC=nop             
  nop                                 #  24    0xe90da  1      OPC=nop             
  callq ._ZNSt13runtime_errorC2ERKSs  #  25    0xe90db  5      OPC=callq_label     
  movl %ebx, %ebx                     #  26    0xe90e0  2      OPC=movl_r32_r32    
  movl $0x1003d718, (%r15,%rbx,1)     #  27    0xe90e2  8      OPC=movl_m32_imm32  
  popq %rbx                           #  28    0xe90ea  1      OPC=popq_r64_1      
  popq %r11                           #  29    0xe90eb  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  30    0xe90ed  7      OPC=andl_r32_imm32  
  nop                                 #  31    0xe90f4  1      OPC=nop             
  nop                                 #  32    0xe90f5  1      OPC=nop             
  nop                                 #  33    0xe90f6  1      OPC=nop             
  nop                                 #  34    0xe90f7  1      OPC=nop             
  addq %r15, %r11                     #  35    0xe90f8  3      OPC=addq_r64_r64    
  jmpq %r11                           #  36    0xe90fb  3      OPC=jmpq_r64        
  nop                                 #  37    0xe90fe  1      OPC=nop             
  nop                                 #  38    0xe90ff  1      OPC=nop             
  nop                                 #  39    0xe9100  1      OPC=nop             
  nop                                 #  40    0xe9101  1      OPC=nop             
  nop                                 #  41    0xe9102  1      OPC=nop             
  nop                                 #  42    0xe9103  1      OPC=nop             
  nop                                 #  43    0xe9104  1      OPC=nop             
  nop                                 #  44    0xe9105  1      OPC=nop             
  nop                                 #  45    0xe9106  1      OPC=nop             
                                                                                   
.size _ZNSt14overflow_errorC2ERKSs, .-_ZNSt14overflow_errorC2ERKSs

