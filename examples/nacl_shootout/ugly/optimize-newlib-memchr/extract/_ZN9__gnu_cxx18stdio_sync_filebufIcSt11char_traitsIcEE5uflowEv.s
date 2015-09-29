  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv, @function

#! file-offset 0xdca20
#! rip-offset  0x9ca20
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv:  #        0x9ca20  0      OPC=<label>         
  pushq %rbx                                                      #  1     0x9ca20  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                 #  2     0x9ca21  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                 #  3     0x9ca23  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %edi                                    #  4     0x9ca25  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                  #  5     0x9ca2a  2      OPC=xchgw_ax_r16    
  nop                                                             #  6     0x9ca2c  1      OPC=nop             
  nop                                                             #  7     0x9ca2d  1      OPC=nop             
  nop                                                             #  8     0x9ca2e  1      OPC=nop             
  nop                                                             #  9     0x9ca2f  1      OPC=nop             
  nop                                                             #  10    0x9ca30  1      OPC=nop             
  nop                                                             #  11    0x9ca31  1      OPC=nop             
  nop                                                             #  12    0x9ca32  1      OPC=nop             
  nop                                                             #  13    0x9ca33  1      OPC=nop             
  nop                                                             #  14    0x9ca34  1      OPC=nop             
  nop                                                             #  15    0x9ca35  1      OPC=nop             
  nop                                                             #  16    0x9ca36  1      OPC=nop             
  nop                                                             #  17    0x9ca37  1      OPC=nop             
  nop                                                             #  18    0x9ca38  1      OPC=nop             
  nop                                                             #  19    0x9ca39  1      OPC=nop             
  nop                                                             #  20    0x9ca3a  1      OPC=nop             
  callq .getc                                                     #  21    0x9ca3b  5      OPC=callq_label     
  movl %ebx, %ebx                                                 #  22    0x9ca40  2      OPC=movl_r32_r32    
  movl %eax, 0x24(%r15,%rbx,1)                                    #  23    0x9ca42  5      OPC=movl_m32_r32    
  popq %rbx                                                       #  24    0x9ca47  1      OPC=popq_r64_1      
  popq %r11                                                       #  25    0x9ca48  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                         #  26    0x9ca4a  7      OPC=andl_r32_imm32  
  nop                                                             #  27    0x9ca51  1      OPC=nop             
  nop                                                             #  28    0x9ca52  1      OPC=nop             
  nop                                                             #  29    0x9ca53  1      OPC=nop             
  nop                                                             #  30    0x9ca54  1      OPC=nop             
  addq %r15, %r11                                                 #  31    0x9ca55  3      OPC=addq_r64_r64    
  jmpq %r11                                                       #  32    0x9ca58  3      OPC=jmpq_r64        
  nop                                                             #  33    0x9ca5b  1      OPC=nop             
  nop                                                             #  34    0x9ca5c  1      OPC=nop             
  nop                                                             #  35    0x9ca5d  1      OPC=nop             
  nop                                                             #  36    0x9ca5e  1      OPC=nop             
  nop                                                             #  37    0x9ca5f  1      OPC=nop             
  nop                                                             #  38    0x9ca60  1      OPC=nop             
  nop                                                             #  39    0x9ca61  1      OPC=nop             
  nop                                                             #  40    0x9ca62  1      OPC=nop             
  nop                                                             #  41    0x9ca63  1      OPC=nop             
  nop                                                             #  42    0x9ca64  1      OPC=nop             
  nop                                                             #  43    0x9ca65  1      OPC=nop             
  nop                                                             #  44    0x9ca66  1      OPC=nop             
                                                                                                               
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv

