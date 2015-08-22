  .text
  .globl _ZNSt12out_of_rangeC2ERKSs
  .type _ZNSt12out_of_rangeC2ERKSs, @function

#! file-offset 0x129ce0
#! rip-offset  0xe9ce0
#! capacity    64 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNSt12out_of_rangeC2ERKSs:        #        0xe9ce0  0      OPC=<label>         
  pushq %rbx                        #  1     0xe9ce0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                   #  2     0xe9ce1  2      OPC=movl_r32_r32    
  movl %esi, %esi                   #  3     0xe9ce3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                   #  4     0xe9ce5  2      OPC=movl_r32_r32    
  nop                               #  5     0xe9ce7  1      OPC=nop             
  nop                               #  6     0xe9ce8  1      OPC=nop             
  nop                               #  7     0xe9ce9  1      OPC=nop             
  nop                               #  8     0xe9cea  1      OPC=nop             
  nop                               #  9     0xe9ceb  1      OPC=nop             
  nop                               #  10    0xe9cec  1      OPC=nop             
  nop                               #  11    0xe9ced  1      OPC=nop             
  nop                               #  12    0xe9cee  1      OPC=nop             
  nop                               #  13    0xe9cef  1      OPC=nop             
  nop                               #  14    0xe9cf0  1      OPC=nop             
  nop                               #  15    0xe9cf1  1      OPC=nop             
  nop                               #  16    0xe9cf2  1      OPC=nop             
  nop                               #  17    0xe9cf3  1      OPC=nop             
  nop                               #  18    0xe9cf4  1      OPC=nop             
  nop                               #  19    0xe9cf5  1      OPC=nop             
  nop                               #  20    0xe9cf6  1      OPC=nop             
  nop                               #  21    0xe9cf7  1      OPC=nop             
  nop                               #  22    0xe9cf8  1      OPC=nop             
  nop                               #  23    0xe9cf9  1      OPC=nop             
  nop                               #  24    0xe9cfa  1      OPC=nop             
  callq ._ZNSt11logic_errorC2ERKSs  #  25    0xe9cfb  5      OPC=callq_label     
  movl %ebx, %ebx                   #  26    0xe9d00  2      OPC=movl_r32_r32    
  movl $0x1003d788, (%r15,%rbx,1)   #  27    0xe9d02  8      OPC=movl_m32_imm32  
  popq %rbx                         #  28    0xe9d0a  1      OPC=popq_r64_1      
  popq %r11                         #  29    0xe9d0b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  30    0xe9d0d  7      OPC=andl_r32_imm32  
  nop                               #  31    0xe9d14  1      OPC=nop             
  nop                               #  32    0xe9d15  1      OPC=nop             
  nop                               #  33    0xe9d16  1      OPC=nop             
  nop                               #  34    0xe9d17  1      OPC=nop             
  addq %r15, %r11                   #  35    0xe9d18  3      OPC=addq_r64_r64    
  jmpq %r11                         #  36    0xe9d1b  3      OPC=jmpq_r64        
  nop                               #  37    0xe9d1e  1      OPC=nop             
  nop                               #  38    0xe9d1f  1      OPC=nop             
  nop                               #  39    0xe9d20  1      OPC=nop             
  nop                               #  40    0xe9d21  1      OPC=nop             
  nop                               #  41    0xe9d22  1      OPC=nop             
  nop                               #  42    0xe9d23  1      OPC=nop             
  nop                               #  43    0xe9d24  1      OPC=nop             
  nop                               #  44    0xe9d25  1      OPC=nop             
  nop                               #  45    0xe9d26  1      OPC=nop             
                                                                                 
.size _ZNSt12out_of_rangeC2ERKSs, .-_ZNSt12out_of_rangeC2ERKSs

