  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9underflowEv
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9underflowEv, @function

#! file-offset 0xdc040
#! rip-offset  0x9c040
#! capacity    64 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode            
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9underflowEv:  #        0x9c040  0      OPC=<label>       
  pushq %rbx                                                          #  1     0x9c040  1      OPC=pushq_r64_1   
  movl %edi, %ebx                                                     #  2     0x9c041  2      OPC=movl_r32_r32  
  movl %ebx, %ebx                                                     #  3     0x9c043  2      OPC=movl_r32_r32  
  movl 0x20(%r15,%rbx,1), %edi                                        #  4     0x9c045  5      OPC=movl_r32_m32  
  xchgw %ax, %ax                                                      #  5     0x9c04a  2      OPC=xchgw_ax_r16  
  nop                                                                 #  6     0x9c04c  1      OPC=nop           
  nop                                                                 #  7     0x9c04d  1      OPC=nop           
  nop                                                                 #  8     0x9c04e  1      OPC=nop           
  nop                                                                 #  9     0x9c04f  1      OPC=nop           
  nop                                                                 #  10    0x9c050  1      OPC=nop           
  nop                                                                 #  11    0x9c051  1      OPC=nop           
  nop                                                                 #  12    0x9c052  1      OPC=nop           
  nop                                                                 #  13    0x9c053  1      OPC=nop           
  nop                                                                 #  14    0x9c054  1      OPC=nop           
  nop                                                                 #  15    0x9c055  1      OPC=nop           
  nop                                                                 #  16    0x9c056  1      OPC=nop           
  nop                                                                 #  17    0x9c057  1      OPC=nop           
  nop                                                                 #  18    0x9c058  1      OPC=nop           
  nop                                                                 #  19    0x9c059  1      OPC=nop           
  nop                                                                 #  20    0x9c05a  1      OPC=nop           
  callq .getwc                                                        #  21    0x9c05b  5      OPC=callq_label   
  movl %ebx, %ebx                                                     #  22    0x9c060  2      OPC=movl_r32_r32  
  movl 0x20(%r15,%rbx,1), %esi                                        #  23    0x9c062  5      OPC=movl_r32_m32  
  movl %eax, %edi                                                     #  24    0x9c067  2      OPC=movl_r32_r32  
  popq %rbx                                                           #  25    0x9c069  1      OPC=popq_r64_1    
  jmpq .ungetwc                                                       #  26    0x9c06a  5      OPC=jmpq_label_1  
  nop                                                                 #  27    0x9c06f  1      OPC=nop           
  nop                                                                 #  28    0x9c070  1      OPC=nop           
  nop                                                                 #  29    0x9c071  1      OPC=nop           
  nop                                                                 #  30    0x9c072  1      OPC=nop           
  nop                                                                 #  31    0x9c073  1      OPC=nop           
  nop                                                                 #  32    0x9c074  1      OPC=nop           
  nop                                                                 #  33    0x9c075  1      OPC=nop           
  nop                                                                 #  34    0x9c076  1      OPC=nop           
  nop                                                                 #  35    0x9c077  1      OPC=nop           
  nop                                                                 #  36    0x9c078  1      OPC=nop           
  nop                                                                 #  37    0x9c079  1      OPC=nop           
  nop                                                                 #  38    0x9c07a  1      OPC=nop           
  nop                                                                 #  39    0x9c07b  1      OPC=nop           
  nop                                                                 #  40    0x9c07c  1      OPC=nop           
  nop                                                                 #  41    0x9c07d  1      OPC=nop           
  nop                                                                 #  42    0x9c07e  1      OPC=nop           
  nop                                                                 #  43    0x9c07f  1      OPC=nop           
                                                                                                                 
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9underflowEv, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9underflowEv

