  .text
  .globl _ZNSt12out_of_rangeC2ERKSs
  .type _ZNSt12out_of_rangeC2ERKSs, @function

#! file-offset 0x1295c0
#! rip-offset  0xe95c0
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNSt12out_of_rangeC2ERKSs:        #        0xe95c0  0      OPC=<label>         
  pushq %rbx                        #  1     0xe95c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                   #  2     0xe95c1  2      OPC=movl_r32_r32    
  movl %esi, %esi                   #  3     0xe95c3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                   #  4     0xe95c5  2      OPC=movl_r32_r32    
  nop                               #  5     0xe95c7  1      OPC=nop             
  nop                               #  6     0xe95c8  1      OPC=nop             
  nop                               #  7     0xe95c9  1      OPC=nop             
  nop                               #  8     0xe95ca  1      OPC=nop             
  nop                               #  9     0xe95cb  1      OPC=nop             
  nop                               #  10    0xe95cc  1      OPC=nop             
  nop                               #  11    0xe95cd  1      OPC=nop             
  nop                               #  12    0xe95ce  1      OPC=nop             
  nop                               #  13    0xe95cf  1      OPC=nop             
  nop                               #  14    0xe95d0  1      OPC=nop             
  nop                               #  15    0xe95d1  1      OPC=nop             
  nop                               #  16    0xe95d2  1      OPC=nop             
  nop                               #  17    0xe95d3  1      OPC=nop             
  nop                               #  18    0xe95d4  1      OPC=nop             
  nop                               #  19    0xe95d5  1      OPC=nop             
  nop                               #  20    0xe95d6  1      OPC=nop             
  nop                               #  21    0xe95d7  1      OPC=nop             
  nop                               #  22    0xe95d8  1      OPC=nop             
  nop                               #  23    0xe95d9  1      OPC=nop             
  nop                               #  24    0xe95da  1      OPC=nop             
  callq ._ZNSt11logic_errorC2ERKSs  #  25    0xe95db  5      OPC=callq_label     
  movl %ebx, %ebx                   #  26    0xe95e0  2      OPC=movl_r32_r32    
  movl $0x1003d788, (%r15,%rbx,1)   #  27    0xe95e2  8      OPC=movl_m32_imm32  
  popq %rbx                         #  28    0xe95ea  1      OPC=popq_r64_1      
  popq %r11                         #  29    0xe95eb  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  30    0xe95ed  7      OPC=andl_r32_imm32  
  nop                               #  31    0xe95f4  1      OPC=nop             
  nop                               #  32    0xe95f5  1      OPC=nop             
  nop                               #  33    0xe95f6  1      OPC=nop             
  nop                               #  34    0xe95f7  1      OPC=nop             
  addq %r15, %r11                   #  35    0xe95f8  3      OPC=addq_r64_r64    
  jmpq %r11                         #  36    0xe95fb  3      OPC=jmpq_r64        
  nop                               #  37    0xe95fe  1      OPC=nop             
  nop                               #  38    0xe95ff  1      OPC=nop             
  nop                               #  39    0xe9600  1      OPC=nop             
  nop                               #  40    0xe9601  1      OPC=nop             
  nop                               #  41    0xe9602  1      OPC=nop             
  nop                               #  42    0xe9603  1      OPC=nop             
  nop                               #  43    0xe9604  1      OPC=nop             
  nop                               #  44    0xe9605  1      OPC=nop             
  nop                               #  45    0xe9606  1      OPC=nop             
                                                                                 
.size _ZNSt12out_of_rangeC2ERKSs, .-_ZNSt12out_of_rangeC2ERKSs

