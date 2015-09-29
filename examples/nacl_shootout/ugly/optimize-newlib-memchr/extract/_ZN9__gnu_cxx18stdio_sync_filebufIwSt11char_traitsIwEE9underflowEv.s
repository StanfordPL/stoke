  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9underflowEv
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9underflowEv, @function

#! file-offset 0xdc760
#! rip-offset  0x9c760
#! capacity    64 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode            
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9underflowEv:  #        0x9c760  0      OPC=<label>       
  pushq %rbx                                                          #  1     0x9c760  1      OPC=pushq_r64_1   
  movl %edi, %ebx                                                     #  2     0x9c761  2      OPC=movl_r32_r32  
  movl %ebx, %ebx                                                     #  3     0x9c763  2      OPC=movl_r32_r32  
  movl 0x20(%r15,%rbx,1), %edi                                        #  4     0x9c765  5      OPC=movl_r32_m32  
  xchgw %ax, %ax                                                      #  5     0x9c76a  2      OPC=xchgw_ax_r16  
  nop                                                                 #  6     0x9c76c  1      OPC=nop           
  nop                                                                 #  7     0x9c76d  1      OPC=nop           
  nop                                                                 #  8     0x9c76e  1      OPC=nop           
  nop                                                                 #  9     0x9c76f  1      OPC=nop           
  nop                                                                 #  10    0x9c770  1      OPC=nop           
  nop                                                                 #  11    0x9c771  1      OPC=nop           
  nop                                                                 #  12    0x9c772  1      OPC=nop           
  nop                                                                 #  13    0x9c773  1      OPC=nop           
  nop                                                                 #  14    0x9c774  1      OPC=nop           
  nop                                                                 #  15    0x9c775  1      OPC=nop           
  nop                                                                 #  16    0x9c776  1      OPC=nop           
  nop                                                                 #  17    0x9c777  1      OPC=nop           
  nop                                                                 #  18    0x9c778  1      OPC=nop           
  nop                                                                 #  19    0x9c779  1      OPC=nop           
  nop                                                                 #  20    0x9c77a  1      OPC=nop           
  callq .getwc                                                        #  21    0x9c77b  5      OPC=callq_label   
  movl %ebx, %ebx                                                     #  22    0x9c780  2      OPC=movl_r32_r32  
  movl 0x20(%r15,%rbx,1), %esi                                        #  23    0x9c782  5      OPC=movl_r32_m32  
  movl %eax, %edi                                                     #  24    0x9c787  2      OPC=movl_r32_r32  
  popq %rbx                                                           #  25    0x9c789  1      OPC=popq_r64_1    
  jmpq .ungetwc                                                       #  26    0x9c78a  5      OPC=jmpq_label_1  
  nop                                                                 #  27    0x9c78f  1      OPC=nop           
  nop                                                                 #  28    0x9c790  1      OPC=nop           
  nop                                                                 #  29    0x9c791  1      OPC=nop           
  nop                                                                 #  30    0x9c792  1      OPC=nop           
  nop                                                                 #  31    0x9c793  1      OPC=nop           
  nop                                                                 #  32    0x9c794  1      OPC=nop           
  nop                                                                 #  33    0x9c795  1      OPC=nop           
  nop                                                                 #  34    0x9c796  1      OPC=nop           
  nop                                                                 #  35    0x9c797  1      OPC=nop           
  nop                                                                 #  36    0x9c798  1      OPC=nop           
  nop                                                                 #  37    0x9c799  1      OPC=nop           
  nop                                                                 #  38    0x9c79a  1      OPC=nop           
  nop                                                                 #  39    0x9c79b  1      OPC=nop           
  nop                                                                 #  40    0x9c79c  1      OPC=nop           
  nop                                                                 #  41    0x9c79d  1      OPC=nop           
  nop                                                                 #  42    0x9c79e  1      OPC=nop           
  nop                                                                 #  43    0x9c79f  1      OPC=nop           
                                                                                                                 
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9underflowEv, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9underflowEv

