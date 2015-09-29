  .text
  .globl _ZNSt14overflow_errorD0Ev
  .type _ZNSt14overflow_errorD0Ev, @function

#! file-offset 0x127300
#! rip-offset  0xe7300
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt14overflow_errorD0Ev:        #        0xe7300  0      OPC=<label>         
  pushq %rbx                       #  1     0xe7300  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe7301  2      OPC=movl_r32_r32    
  movl %ebx, %edi                  #  3     0xe7303  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  4     0xe7305  2      OPC=movl_r32_r32    
  movl $0x1003d718, (%r15,%rbx,1)  #  5     0xe7307  8      OPC=movl_m32_imm32  
  nop                              #  6     0xe730f  1      OPC=nop             
  nop                              #  7     0xe7310  1      OPC=nop             
  nop                              #  8     0xe7311  1      OPC=nop             
  nop                              #  9     0xe7312  1      OPC=nop             
  nop                              #  10    0xe7313  1      OPC=nop             
  nop                              #  11    0xe7314  1      OPC=nop             
  nop                              #  12    0xe7315  1      OPC=nop             
  nop                              #  13    0xe7316  1      OPC=nop             
  nop                              #  14    0xe7317  1      OPC=nop             
  nop                              #  15    0xe7318  1      OPC=nop             
  nop                              #  16    0xe7319  1      OPC=nop             
  nop                              #  17    0xe731a  1      OPC=nop             
  callq ._ZNSt13runtime_errorD2Ev  #  18    0xe731b  5      OPC=callq_label     
  movl %ebx, %edi                  #  19    0xe7320  2      OPC=movl_r32_r32    
  popq %rbx                        #  20    0xe7322  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                     #  21    0xe7323  5      OPC=jmpq_label_1    
  nop                              #  22    0xe7328  1      OPC=nop             
  nop                              #  23    0xe7329  1      OPC=nop             
  nop                              #  24    0xe732a  1      OPC=nop             
  nop                              #  25    0xe732b  1      OPC=nop             
  nop                              #  26    0xe732c  1      OPC=nop             
  nop                              #  27    0xe732d  1      OPC=nop             
  nop                              #  28    0xe732e  1      OPC=nop             
  nop                              #  29    0xe732f  1      OPC=nop             
  nop                              #  30    0xe7330  1      OPC=nop             
  nop                              #  31    0xe7331  1      OPC=nop             
  nop                              #  32    0xe7332  1      OPC=nop             
  nop                              #  33    0xe7333  1      OPC=nop             
  nop                              #  34    0xe7334  1      OPC=nop             
  nop                              #  35    0xe7335  1      OPC=nop             
  nop                              #  36    0xe7336  1      OPC=nop             
  nop                              #  37    0xe7337  1      OPC=nop             
  nop                              #  38    0xe7338  1      OPC=nop             
  nop                              #  39    0xe7339  1      OPC=nop             
  nop                              #  40    0xe733a  1      OPC=nop             
  nop                              #  41    0xe733b  1      OPC=nop             
  nop                              #  42    0xe733c  1      OPC=nop             
  nop                              #  43    0xe733d  1      OPC=nop             
  nop                              #  44    0xe733e  1      OPC=nop             
  nop                              #  45    0xe733f  1      OPC=nop             
                                                                                
.size _ZNSt14overflow_errorD0Ev, .-_ZNSt14overflow_errorD0Ev

