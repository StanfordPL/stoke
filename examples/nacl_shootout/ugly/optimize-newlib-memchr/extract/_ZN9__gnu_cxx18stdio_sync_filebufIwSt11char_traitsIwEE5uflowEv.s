  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE5uflowEv
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE5uflowEv, @function

#! file-offset 0xdc460
#! rip-offset  0x9c460
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE5uflowEv:  #        0x9c460  0      OPC=<label>         
  pushq %rbx                                                      #  1     0x9c460  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                 #  2     0x9c461  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                 #  3     0x9c463  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %edi                                    #  4     0x9c465  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                  #  5     0x9c46a  2      OPC=xchgw_ax_r16    
  nop                                                             #  6     0x9c46c  1      OPC=nop             
  nop                                                             #  7     0x9c46d  1      OPC=nop             
  nop                                                             #  8     0x9c46e  1      OPC=nop             
  nop                                                             #  9     0x9c46f  1      OPC=nop             
  nop                                                             #  10    0x9c470  1      OPC=nop             
  nop                                                             #  11    0x9c471  1      OPC=nop             
  nop                                                             #  12    0x9c472  1      OPC=nop             
  nop                                                             #  13    0x9c473  1      OPC=nop             
  nop                                                             #  14    0x9c474  1      OPC=nop             
  nop                                                             #  15    0x9c475  1      OPC=nop             
  nop                                                             #  16    0x9c476  1      OPC=nop             
  nop                                                             #  17    0x9c477  1      OPC=nop             
  nop                                                             #  18    0x9c478  1      OPC=nop             
  nop                                                             #  19    0x9c479  1      OPC=nop             
  nop                                                             #  20    0x9c47a  1      OPC=nop             
  callq .getwc                                                    #  21    0x9c47b  5      OPC=callq_label     
  movl %ebx, %ebx                                                 #  22    0x9c480  2      OPC=movl_r32_r32    
  movl %eax, 0x24(%r15,%rbx,1)                                    #  23    0x9c482  5      OPC=movl_m32_r32    
  popq %rbx                                                       #  24    0x9c487  1      OPC=popq_r64_1      
  popq %r11                                                       #  25    0x9c488  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                         #  26    0x9c48a  7      OPC=andl_r32_imm32  
  nop                                                             #  27    0x9c491  1      OPC=nop             
  nop                                                             #  28    0x9c492  1      OPC=nop             
  nop                                                             #  29    0x9c493  1      OPC=nop             
  nop                                                             #  30    0x9c494  1      OPC=nop             
  addq %r15, %r11                                                 #  31    0x9c495  3      OPC=addq_r64_r64    
  jmpq %r11                                                       #  32    0x9c498  3      OPC=jmpq_r64        
  nop                                                             #  33    0x9c49b  1      OPC=nop             
  nop                                                             #  34    0x9c49c  1      OPC=nop             
  nop                                                             #  35    0x9c49d  1      OPC=nop             
  nop                                                             #  36    0x9c49e  1      OPC=nop             
  nop                                                             #  37    0x9c49f  1      OPC=nop             
  nop                                                             #  38    0x9c4a0  1      OPC=nop             
  nop                                                             #  39    0x9c4a1  1      OPC=nop             
  nop                                                             #  40    0x9c4a2  1      OPC=nop             
  nop                                                             #  41    0x9c4a3  1      OPC=nop             
  nop                                                             #  42    0x9c4a4  1      OPC=nop             
  nop                                                             #  43    0x9c4a5  1      OPC=nop             
  nop                                                             #  44    0x9c4a6  1      OPC=nop             
                                                                                                               
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE5uflowEv, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE5uflowEv

