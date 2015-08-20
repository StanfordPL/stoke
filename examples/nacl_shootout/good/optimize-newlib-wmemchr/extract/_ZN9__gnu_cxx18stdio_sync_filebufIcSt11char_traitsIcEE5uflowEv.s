  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv, @function

#! file-offset 0xdc300
#! rip-offset  0x9c300
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv:  #        0x9c300  0      OPC=<label>         
  pushq %rbx                                                      #  1     0x9c300  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                 #  2     0x9c301  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                 #  3     0x9c303  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %edi                                    #  4     0x9c305  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                  #  5     0x9c30a  2      OPC=xchgw_ax_r16    
  nop                                                             #  6     0x9c30c  1      OPC=nop             
  nop                                                             #  7     0x9c30d  1      OPC=nop             
  nop                                                             #  8     0x9c30e  1      OPC=nop             
  nop                                                             #  9     0x9c30f  1      OPC=nop             
  nop                                                             #  10    0x9c310  1      OPC=nop             
  nop                                                             #  11    0x9c311  1      OPC=nop             
  nop                                                             #  12    0x9c312  1      OPC=nop             
  nop                                                             #  13    0x9c313  1      OPC=nop             
  nop                                                             #  14    0x9c314  1      OPC=nop             
  nop                                                             #  15    0x9c315  1      OPC=nop             
  nop                                                             #  16    0x9c316  1      OPC=nop             
  nop                                                             #  17    0x9c317  1      OPC=nop             
  nop                                                             #  18    0x9c318  1      OPC=nop             
  nop                                                             #  19    0x9c319  1      OPC=nop             
  nop                                                             #  20    0x9c31a  1      OPC=nop             
  callq .getc                                                     #  21    0x9c31b  5      OPC=callq_label     
  movl %ebx, %ebx                                                 #  22    0x9c320  2      OPC=movl_r32_r32    
  movl %eax, 0x24(%r15,%rbx,1)                                    #  23    0x9c322  5      OPC=movl_m32_r32    
  popq %rbx                                                       #  24    0x9c327  1      OPC=popq_r64_1      
  popq %r11                                                       #  25    0x9c328  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                         #  26    0x9c32a  7      OPC=andl_r32_imm32  
  nop                                                             #  27    0x9c331  1      OPC=nop             
  nop                                                             #  28    0x9c332  1      OPC=nop             
  nop                                                             #  29    0x9c333  1      OPC=nop             
  nop                                                             #  30    0x9c334  1      OPC=nop             
  addq %r15, %r11                                                 #  31    0x9c335  3      OPC=addq_r64_r64    
  jmpq %r11                                                       #  32    0x9c338  3      OPC=jmpq_r64        
  nop                                                             #  33    0x9c33b  1      OPC=nop             
  nop                                                             #  34    0x9c33c  1      OPC=nop             
  nop                                                             #  35    0x9c33d  1      OPC=nop             
  nop                                                             #  36    0x9c33e  1      OPC=nop             
  nop                                                             #  37    0x9c33f  1      OPC=nop             
  nop                                                             #  38    0x9c340  1      OPC=nop             
  nop                                                             #  39    0x9c341  1      OPC=nop             
  nop                                                             #  40    0x9c342  1      OPC=nop             
  nop                                                             #  41    0x9c343  1      OPC=nop             
  nop                                                             #  42    0x9c344  1      OPC=nop             
  nop                                                             #  43    0x9c345  1      OPC=nop             
  nop                                                             #  44    0x9c346  1      OPC=nop             
                                                                                                               
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv

