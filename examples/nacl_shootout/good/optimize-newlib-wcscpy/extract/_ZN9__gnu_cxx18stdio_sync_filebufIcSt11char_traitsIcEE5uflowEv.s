  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv, @function

#! file-offset 0xdc000
#! rip-offset  0x9c000
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv:  #        0x9c000  0      OPC=<label>         
  pushq %rbx                                                      #  1     0x9c000  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                 #  2     0x9c001  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                 #  3     0x9c003  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %edi                                    #  4     0x9c005  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                  #  5     0x9c00a  2      OPC=xchgw_ax_r16    
  nop                                                             #  6     0x9c00c  1      OPC=nop             
  nop                                                             #  7     0x9c00d  1      OPC=nop             
  nop                                                             #  8     0x9c00e  1      OPC=nop             
  nop                                                             #  9     0x9c00f  1      OPC=nop             
  nop                                                             #  10    0x9c010  1      OPC=nop             
  nop                                                             #  11    0x9c011  1      OPC=nop             
  nop                                                             #  12    0x9c012  1      OPC=nop             
  nop                                                             #  13    0x9c013  1      OPC=nop             
  nop                                                             #  14    0x9c014  1      OPC=nop             
  nop                                                             #  15    0x9c015  1      OPC=nop             
  nop                                                             #  16    0x9c016  1      OPC=nop             
  nop                                                             #  17    0x9c017  1      OPC=nop             
  nop                                                             #  18    0x9c018  1      OPC=nop             
  nop                                                             #  19    0x9c019  1      OPC=nop             
  nop                                                             #  20    0x9c01a  1      OPC=nop             
  callq .getc                                                     #  21    0x9c01b  5      OPC=callq_label     
  movl %ebx, %ebx                                                 #  22    0x9c020  2      OPC=movl_r32_r32    
  movl %eax, 0x24(%r15,%rbx,1)                                    #  23    0x9c022  5      OPC=movl_m32_r32    
  popq %rbx                                                       #  24    0x9c027  1      OPC=popq_r64_1      
  popq %r11                                                       #  25    0x9c028  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                         #  26    0x9c02a  7      OPC=andl_r32_imm32  
  nop                                                             #  27    0x9c031  1      OPC=nop             
  nop                                                             #  28    0x9c032  1      OPC=nop             
  nop                                                             #  29    0x9c033  1      OPC=nop             
  nop                                                             #  30    0x9c034  1      OPC=nop             
  addq %r15, %r11                                                 #  31    0x9c035  3      OPC=addq_r64_r64    
  jmpq %r11                                                       #  32    0x9c038  3      OPC=jmpq_r64        
  nop                                                             #  33    0x9c03b  1      OPC=nop             
  nop                                                             #  34    0x9c03c  1      OPC=nop             
  nop                                                             #  35    0x9c03d  1      OPC=nop             
  nop                                                             #  36    0x9c03e  1      OPC=nop             
  nop                                                             #  37    0x9c03f  1      OPC=nop             
  nop                                                             #  38    0x9c040  1      OPC=nop             
  nop                                                             #  39    0x9c041  1      OPC=nop             
  nop                                                             #  40    0x9c042  1      OPC=nop             
  nop                                                             #  41    0x9c043  1      OPC=nop             
  nop                                                             #  42    0x9c044  1      OPC=nop             
  nop                                                             #  43    0x9c045  1      OPC=nop             
  nop                                                             #  44    0x9c046  1      OPC=nop             
                                                                                                               
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE5uflowEv

