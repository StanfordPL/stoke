  .text
  .globl _ZNSt12out_of_rangeC2ERKSs
  .type _ZNSt12out_of_rangeC2ERKSs, @function

#! file-offset 0x1292c0
#! rip-offset  0xe92c0
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNSt12out_of_rangeC2ERKSs:        #        0xe92c0  0      OPC=<label>         
  pushq %rbx                        #  1     0xe92c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                   #  2     0xe92c1  2      OPC=movl_r32_r32    
  movl %esi, %esi                   #  3     0xe92c3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                   #  4     0xe92c5  2      OPC=movl_r32_r32    
  nop                               #  5     0xe92c7  1      OPC=nop             
  nop                               #  6     0xe92c8  1      OPC=nop             
  nop                               #  7     0xe92c9  1      OPC=nop             
  nop                               #  8     0xe92ca  1      OPC=nop             
  nop                               #  9     0xe92cb  1      OPC=nop             
  nop                               #  10    0xe92cc  1      OPC=nop             
  nop                               #  11    0xe92cd  1      OPC=nop             
  nop                               #  12    0xe92ce  1      OPC=nop             
  nop                               #  13    0xe92cf  1      OPC=nop             
  nop                               #  14    0xe92d0  1      OPC=nop             
  nop                               #  15    0xe92d1  1      OPC=nop             
  nop                               #  16    0xe92d2  1      OPC=nop             
  nop                               #  17    0xe92d3  1      OPC=nop             
  nop                               #  18    0xe92d4  1      OPC=nop             
  nop                               #  19    0xe92d5  1      OPC=nop             
  nop                               #  20    0xe92d6  1      OPC=nop             
  nop                               #  21    0xe92d7  1      OPC=nop             
  nop                               #  22    0xe92d8  1      OPC=nop             
  nop                               #  23    0xe92d9  1      OPC=nop             
  nop                               #  24    0xe92da  1      OPC=nop             
  callq ._ZNSt11logic_errorC2ERKSs  #  25    0xe92db  5      OPC=callq_label     
  movl %ebx, %ebx                   #  26    0xe92e0  2      OPC=movl_r32_r32    
  movl $0x1003d788, (%r15,%rbx,1)   #  27    0xe92e2  8      OPC=movl_m32_imm32  
  popq %rbx                         #  28    0xe92ea  1      OPC=popq_r64_1      
  popq %r11                         #  29    0xe92eb  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  30    0xe92ed  7      OPC=andl_r32_imm32  
  nop                               #  31    0xe92f4  1      OPC=nop             
  nop                               #  32    0xe92f5  1      OPC=nop             
  nop                               #  33    0xe92f6  1      OPC=nop             
  nop                               #  34    0xe92f7  1      OPC=nop             
  addq %r15, %r11                   #  35    0xe92f8  3      OPC=addq_r64_r64    
  jmpq %r11                         #  36    0xe92fb  3      OPC=jmpq_r64        
  nop                               #  37    0xe92fe  1      OPC=nop             
  nop                               #  38    0xe92ff  1      OPC=nop             
  nop                               #  39    0xe9300  1      OPC=nop             
  nop                               #  40    0xe9301  1      OPC=nop             
  nop                               #  41    0xe9302  1      OPC=nop             
  nop                               #  42    0xe9303  1      OPC=nop             
  nop                               #  43    0xe9304  1      OPC=nop             
  nop                               #  44    0xe9305  1      OPC=nop             
  nop                               #  45    0xe9306  1      OPC=nop             
                                                                                 
.size _ZNSt12out_of_rangeC2ERKSs, .-_ZNSt12out_of_rangeC2ERKSs

