  .text
  .globl _ZNSt12out_of_rangeD0Ev
  .type _ZNSt12out_of_rangeD0Ev, @function

#! file-offset 0x126980
#! rip-offset  0xe6980
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt12out_of_rangeD0Ev:          #        0xe6980  0      OPC=<label>         
  pushq %rbx                       #  1     0xe6980  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe6981  2      OPC=movl_r32_r32    
  movl %ebx, %edi                  #  3     0xe6983  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  4     0xe6985  2      OPC=movl_r32_r32    
  movl $0x1003d788, (%r15,%rbx,1)  #  5     0xe6987  8      OPC=movl_m32_imm32  
  nop                              #  6     0xe698f  1      OPC=nop             
  nop                              #  7     0xe6990  1      OPC=nop             
  nop                              #  8     0xe6991  1      OPC=nop             
  nop                              #  9     0xe6992  1      OPC=nop             
  nop                              #  10    0xe6993  1      OPC=nop             
  nop                              #  11    0xe6994  1      OPC=nop             
  nop                              #  12    0xe6995  1      OPC=nop             
  nop                              #  13    0xe6996  1      OPC=nop             
  nop                              #  14    0xe6997  1      OPC=nop             
  nop                              #  15    0xe6998  1      OPC=nop             
  nop                              #  16    0xe6999  1      OPC=nop             
  nop                              #  17    0xe699a  1      OPC=nop             
  callq ._ZNSt11logic_errorD2Ev    #  18    0xe699b  5      OPC=callq_label     
  movl %ebx, %edi                  #  19    0xe69a0  2      OPC=movl_r32_r32    
  popq %rbx                        #  20    0xe69a2  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                     #  21    0xe69a3  5      OPC=jmpq_label_1    
  nop                              #  22    0xe69a8  1      OPC=nop             
  nop                              #  23    0xe69a9  1      OPC=nop             
  nop                              #  24    0xe69aa  1      OPC=nop             
  nop                              #  25    0xe69ab  1      OPC=nop             
  nop                              #  26    0xe69ac  1      OPC=nop             
  nop                              #  27    0xe69ad  1      OPC=nop             
  nop                              #  28    0xe69ae  1      OPC=nop             
  nop                              #  29    0xe69af  1      OPC=nop             
  nop                              #  30    0xe69b0  1      OPC=nop             
  nop                              #  31    0xe69b1  1      OPC=nop             
  nop                              #  32    0xe69b2  1      OPC=nop             
  nop                              #  33    0xe69b3  1      OPC=nop             
  nop                              #  34    0xe69b4  1      OPC=nop             
  nop                              #  35    0xe69b5  1      OPC=nop             
  nop                              #  36    0xe69b6  1      OPC=nop             
  nop                              #  37    0xe69b7  1      OPC=nop             
  nop                              #  38    0xe69b8  1      OPC=nop             
  nop                              #  39    0xe69b9  1      OPC=nop             
  nop                              #  40    0xe69ba  1      OPC=nop             
  nop                              #  41    0xe69bb  1      OPC=nop             
  nop                              #  42    0xe69bc  1      OPC=nop             
  nop                              #  43    0xe69bd  1      OPC=nop             
  nop                              #  44    0xe69be  1      OPC=nop             
  nop                              #  45    0xe69bf  1      OPC=nop             
                                                                                
.size _ZNSt12out_of_rangeD0Ev, .-_ZNSt12out_of_rangeD0Ev

