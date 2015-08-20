  .text
  .globl _ZNSt12out_of_rangeC1ERKSs
  .type _ZNSt12out_of_rangeC1ERKSs, @function

#! file-offset 0x129580
#! rip-offset  0xe9580
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNSt12out_of_rangeC1ERKSs:        #        0xe9580  0      OPC=<label>         
  pushq %rbx                        #  1     0xe9580  1      OPC=pushq_r64_1     
  movl %edi, %ebx                   #  2     0xe9581  2      OPC=movl_r32_r32    
  movl %esi, %esi                   #  3     0xe9583  2      OPC=movl_r32_r32    
  movl %ebx, %edi                   #  4     0xe9585  2      OPC=movl_r32_r32    
  nop                               #  5     0xe9587  1      OPC=nop             
  nop                               #  6     0xe9588  1      OPC=nop             
  nop                               #  7     0xe9589  1      OPC=nop             
  nop                               #  8     0xe958a  1      OPC=nop             
  nop                               #  9     0xe958b  1      OPC=nop             
  nop                               #  10    0xe958c  1      OPC=nop             
  nop                               #  11    0xe958d  1      OPC=nop             
  nop                               #  12    0xe958e  1      OPC=nop             
  nop                               #  13    0xe958f  1      OPC=nop             
  nop                               #  14    0xe9590  1      OPC=nop             
  nop                               #  15    0xe9591  1      OPC=nop             
  nop                               #  16    0xe9592  1      OPC=nop             
  nop                               #  17    0xe9593  1      OPC=nop             
  nop                               #  18    0xe9594  1      OPC=nop             
  nop                               #  19    0xe9595  1      OPC=nop             
  nop                               #  20    0xe9596  1      OPC=nop             
  nop                               #  21    0xe9597  1      OPC=nop             
  nop                               #  22    0xe9598  1      OPC=nop             
  nop                               #  23    0xe9599  1      OPC=nop             
  nop                               #  24    0xe959a  1      OPC=nop             
  callq ._ZNSt11logic_errorC2ERKSs  #  25    0xe959b  5      OPC=callq_label     
  movl %ebx, %ebx                   #  26    0xe95a0  2      OPC=movl_r32_r32    
  movl $0x1003d788, (%r15,%rbx,1)   #  27    0xe95a2  8      OPC=movl_m32_imm32  
  popq %rbx                         #  28    0xe95aa  1      OPC=popq_r64_1      
  popq %r11                         #  29    0xe95ab  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  30    0xe95ad  7      OPC=andl_r32_imm32  
  nop                               #  31    0xe95b4  1      OPC=nop             
  nop                               #  32    0xe95b5  1      OPC=nop             
  nop                               #  33    0xe95b6  1      OPC=nop             
  nop                               #  34    0xe95b7  1      OPC=nop             
  addq %r15, %r11                   #  35    0xe95b8  3      OPC=addq_r64_r64    
  jmpq %r11                         #  36    0xe95bb  3      OPC=jmpq_r64        
  nop                               #  37    0xe95be  1      OPC=nop             
  nop                               #  38    0xe95bf  1      OPC=nop             
  nop                               #  39    0xe95c0  1      OPC=nop             
  nop                               #  40    0xe95c1  1      OPC=nop             
  nop                               #  41    0xe95c2  1      OPC=nop             
  nop                               #  42    0xe95c3  1      OPC=nop             
  nop                               #  43    0xe95c4  1      OPC=nop             
  nop                               #  44    0xe95c5  1      OPC=nop             
  nop                               #  45    0xe95c6  1      OPC=nop             
                                                                                 
.size _ZNSt12out_of_rangeC1ERKSs, .-_ZNSt12out_of_rangeC1ERKSs

