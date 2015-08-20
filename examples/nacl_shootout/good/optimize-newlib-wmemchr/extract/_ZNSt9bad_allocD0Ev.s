  .text
  .globl _ZNSt9bad_allocD0Ev
  .type _ZNSt9bad_allocD0Ev, @function

#! file-offset 0x120960
#! rip-offset  0xe0960
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt9bad_allocD0Ev:              #        0xe0960  0      OPC=<label>         
  pushq %rbx                       #  1     0xe0960  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe0961  2      OPC=movl_r32_r32    
  movl %ebx, %edi                  #  3     0xe0963  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  4     0xe0965  2      OPC=movl_r32_r32    
  movl $0x1003d0c8, (%r15,%rbx,1)  #  5     0xe0967  8      OPC=movl_m32_imm32  
  nop                              #  6     0xe096f  1      OPC=nop             
  nop                              #  7     0xe0970  1      OPC=nop             
  nop                              #  8     0xe0971  1      OPC=nop             
  nop                              #  9     0xe0972  1      OPC=nop             
  nop                              #  10    0xe0973  1      OPC=nop             
  nop                              #  11    0xe0974  1      OPC=nop             
  nop                              #  12    0xe0975  1      OPC=nop             
  nop                              #  13    0xe0976  1      OPC=nop             
  nop                              #  14    0xe0977  1      OPC=nop             
  nop                              #  15    0xe0978  1      OPC=nop             
  nop                              #  16    0xe0979  1      OPC=nop             
  nop                              #  17    0xe097a  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  18    0xe097b  5      OPC=callq_label     
  movl %ebx, %edi                  #  19    0xe0980  2      OPC=movl_r32_r32    
  popq %rbx                        #  20    0xe0982  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                     #  21    0xe0983  5      OPC=jmpq_label_1    
  nop                              #  22    0xe0988  1      OPC=nop             
  nop                              #  23    0xe0989  1      OPC=nop             
  nop                              #  24    0xe098a  1      OPC=nop             
  nop                              #  25    0xe098b  1      OPC=nop             
  nop                              #  26    0xe098c  1      OPC=nop             
  nop                              #  27    0xe098d  1      OPC=nop             
  nop                              #  28    0xe098e  1      OPC=nop             
  nop                              #  29    0xe098f  1      OPC=nop             
  nop                              #  30    0xe0990  1      OPC=nop             
  nop                              #  31    0xe0991  1      OPC=nop             
  nop                              #  32    0xe0992  1      OPC=nop             
  nop                              #  33    0xe0993  1      OPC=nop             
  nop                              #  34    0xe0994  1      OPC=nop             
  nop                              #  35    0xe0995  1      OPC=nop             
  nop                              #  36    0xe0996  1      OPC=nop             
  nop                              #  37    0xe0997  1      OPC=nop             
  nop                              #  38    0xe0998  1      OPC=nop             
  nop                              #  39    0xe0999  1      OPC=nop             
  nop                              #  40    0xe099a  1      OPC=nop             
  nop                              #  41    0xe099b  1      OPC=nop             
  nop                              #  42    0xe099c  1      OPC=nop             
  nop                              #  43    0xe099d  1      OPC=nop             
  nop                              #  44    0xe099e  1      OPC=nop             
  nop                              #  45    0xe099f  1      OPC=nop             
                                                                                
.size _ZNSt9bad_allocD0Ev, .-_ZNSt9bad_allocD0Ev

