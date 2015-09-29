  .text
  .globl _ZNSt12out_of_rangeD0Ev
  .type _ZNSt12out_of_rangeD0Ev, @function

#! file-offset 0x1273a0
#! rip-offset  0xe73a0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt12out_of_rangeD0Ev:          #        0xe73a0  0      OPC=<label>         
  pushq %rbx                       #  1     0xe73a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe73a1  2      OPC=movl_r32_r32    
  movl %ebx, %edi                  #  3     0xe73a3  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  4     0xe73a5  2      OPC=movl_r32_r32    
  movl $0x1003d788, (%r15,%rbx,1)  #  5     0xe73a7  8      OPC=movl_m32_imm32  
  nop                              #  6     0xe73af  1      OPC=nop             
  nop                              #  7     0xe73b0  1      OPC=nop             
  nop                              #  8     0xe73b1  1      OPC=nop             
  nop                              #  9     0xe73b2  1      OPC=nop             
  nop                              #  10    0xe73b3  1      OPC=nop             
  nop                              #  11    0xe73b4  1      OPC=nop             
  nop                              #  12    0xe73b5  1      OPC=nop             
  nop                              #  13    0xe73b6  1      OPC=nop             
  nop                              #  14    0xe73b7  1      OPC=nop             
  nop                              #  15    0xe73b8  1      OPC=nop             
  nop                              #  16    0xe73b9  1      OPC=nop             
  nop                              #  17    0xe73ba  1      OPC=nop             
  callq ._ZNSt11logic_errorD2Ev    #  18    0xe73bb  5      OPC=callq_label     
  movl %ebx, %edi                  #  19    0xe73c0  2      OPC=movl_r32_r32    
  popq %rbx                        #  20    0xe73c2  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                     #  21    0xe73c3  5      OPC=jmpq_label_1    
  nop                              #  22    0xe73c8  1      OPC=nop             
  nop                              #  23    0xe73c9  1      OPC=nop             
  nop                              #  24    0xe73ca  1      OPC=nop             
  nop                              #  25    0xe73cb  1      OPC=nop             
  nop                              #  26    0xe73cc  1      OPC=nop             
  nop                              #  27    0xe73cd  1      OPC=nop             
  nop                              #  28    0xe73ce  1      OPC=nop             
  nop                              #  29    0xe73cf  1      OPC=nop             
  nop                              #  30    0xe73d0  1      OPC=nop             
  nop                              #  31    0xe73d1  1      OPC=nop             
  nop                              #  32    0xe73d2  1      OPC=nop             
  nop                              #  33    0xe73d3  1      OPC=nop             
  nop                              #  34    0xe73d4  1      OPC=nop             
  nop                              #  35    0xe73d5  1      OPC=nop             
  nop                              #  36    0xe73d6  1      OPC=nop             
  nop                              #  37    0xe73d7  1      OPC=nop             
  nop                              #  38    0xe73d8  1      OPC=nop             
  nop                              #  39    0xe73d9  1      OPC=nop             
  nop                              #  40    0xe73da  1      OPC=nop             
  nop                              #  41    0xe73db  1      OPC=nop             
  nop                              #  42    0xe73dc  1      OPC=nop             
  nop                              #  43    0xe73dd  1      OPC=nop             
  nop                              #  44    0xe73de  1      OPC=nop             
  nop                              #  45    0xe73df  1      OPC=nop             
                                                                                
.size _ZNSt12out_of_rangeD0Ev, .-_ZNSt12out_of_rangeD0Ev

