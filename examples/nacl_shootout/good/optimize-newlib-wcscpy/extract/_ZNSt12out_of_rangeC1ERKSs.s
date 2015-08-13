  .text
  .globl _ZNSt12out_of_rangeC1ERKSs
  .type _ZNSt12out_of_rangeC1ERKSs, @function

#! file-offset 0x129280
#! rip-offset  0xe9280
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNSt12out_of_rangeC1ERKSs:        #        0xe9280  0      OPC=<label>         
  pushq %rbx                        #  1     0xe9280  1      OPC=pushq_r64_1     
  movl %edi, %ebx                   #  2     0xe9281  2      OPC=movl_r32_r32    
  movl %esi, %esi                   #  3     0xe9283  2      OPC=movl_r32_r32    
  movl %ebx, %edi                   #  4     0xe9285  2      OPC=movl_r32_r32    
  nop                               #  5     0xe9287  1      OPC=nop             
  nop                               #  6     0xe9288  1      OPC=nop             
  nop                               #  7     0xe9289  1      OPC=nop             
  nop                               #  8     0xe928a  1      OPC=nop             
  nop                               #  9     0xe928b  1      OPC=nop             
  nop                               #  10    0xe928c  1      OPC=nop             
  nop                               #  11    0xe928d  1      OPC=nop             
  nop                               #  12    0xe928e  1      OPC=nop             
  nop                               #  13    0xe928f  1      OPC=nop             
  nop                               #  14    0xe9290  1      OPC=nop             
  nop                               #  15    0xe9291  1      OPC=nop             
  nop                               #  16    0xe9292  1      OPC=nop             
  nop                               #  17    0xe9293  1      OPC=nop             
  nop                               #  18    0xe9294  1      OPC=nop             
  nop                               #  19    0xe9295  1      OPC=nop             
  nop                               #  20    0xe9296  1      OPC=nop             
  nop                               #  21    0xe9297  1      OPC=nop             
  nop                               #  22    0xe9298  1      OPC=nop             
  nop                               #  23    0xe9299  1      OPC=nop             
  nop                               #  24    0xe929a  1      OPC=nop             
  callq ._ZNSt11logic_errorC2ERKSs  #  25    0xe929b  5      OPC=callq_label     
  movl %ebx, %ebx                   #  26    0xe92a0  2      OPC=movl_r32_r32    
  movl $0x1003d788, (%r15,%rbx,1)   #  27    0xe92a2  8      OPC=movl_m32_imm32  
  popq %rbx                         #  28    0xe92aa  1      OPC=popq_r64_1      
  popq %r11                         #  29    0xe92ab  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  30    0xe92ad  7      OPC=andl_r32_imm32  
  nop                               #  31    0xe92b4  1      OPC=nop             
  nop                               #  32    0xe92b5  1      OPC=nop             
  nop                               #  33    0xe92b6  1      OPC=nop             
  nop                               #  34    0xe92b7  1      OPC=nop             
  addq %r15, %r11                   #  35    0xe92b8  3      OPC=addq_r64_r64    
  jmpq %r11                         #  36    0xe92bb  3      OPC=jmpq_r64        
  nop                               #  37    0xe92be  1      OPC=nop             
  nop                               #  38    0xe92bf  1      OPC=nop             
  nop                               #  39    0xe92c0  1      OPC=nop             
  nop                               #  40    0xe92c1  1      OPC=nop             
  nop                               #  41    0xe92c2  1      OPC=nop             
  nop                               #  42    0xe92c3  1      OPC=nop             
  nop                               #  43    0xe92c4  1      OPC=nop             
  nop                               #  44    0xe92c5  1      OPC=nop             
  nop                               #  45    0xe92c6  1      OPC=nop             
                                                                                 
.size _ZNSt12out_of_rangeC1ERKSs, .-_ZNSt12out_of_rangeC1ERKSs

