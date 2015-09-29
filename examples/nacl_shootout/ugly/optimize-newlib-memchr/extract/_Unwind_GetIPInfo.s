  .text
  .globl _Unwind_GetIPInfo
  .type _Unwind_GetIPInfo, @function

#! file-offset 0x14a3e0
#! rip-offset  0x10a3e0
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetIPInfo:             #        0x10a3e0  0      OPC=<label>         
  movl %edi, %edi               #  1     0x10a3e0  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  2     0x10a3e2  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x10a3e4  2      OPC=movl_r32_r32    
  movq 0x60(%r15,%rdi,1), %rax  #  4     0x10a3e6  5      OPC=movq_r64_m64    
  popq %r11                     #  5     0x10a3eb  2      OPC=popq_r64_1      
  shrq $0x3f, %rax              #  6     0x10a3ed  4      OPC=shrq_r64_imm8   
  movl %esi, %esi               #  7     0x10a3f1  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rsi,1)      #  8     0x10a3f3  4      OPC=movl_m32_r32    
  movl %edi, %edi               #  9     0x10a3f7  2      OPC=movl_r32_r32    
  movl 0x4c(%r15,%rdi,1), %eax  #  10    0x10a3f9  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                #  11    0x10a3fe  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d       #  12    0x10a400  7      OPC=andl_r32_imm32  
  nop                           #  13    0x10a407  1      OPC=nop             
  nop                           #  14    0x10a408  1      OPC=nop             
  nop                           #  15    0x10a409  1      OPC=nop             
  nop                           #  16    0x10a40a  1      OPC=nop             
  addq %r15, %r11               #  17    0x10a40b  3      OPC=addq_r64_r64    
  jmpq %r11                     #  18    0x10a40e  3      OPC=jmpq_r64        
  nop                           #  19    0x10a411  1      OPC=nop             
  nop                           #  20    0x10a412  1      OPC=nop             
  nop                           #  21    0x10a413  1      OPC=nop             
  nop                           #  22    0x10a414  1      OPC=nop             
  nop                           #  23    0x10a415  1      OPC=nop             
  nop                           #  24    0x10a416  1      OPC=nop             
  nop                           #  25    0x10a417  1      OPC=nop             
  nop                           #  26    0x10a418  1      OPC=nop             
  nop                           #  27    0x10a419  1      OPC=nop             
  nop                           #  28    0x10a41a  1      OPC=nop             
  nop                           #  29    0x10a41b  1      OPC=nop             
  nop                           #  30    0x10a41c  1      OPC=nop             
  nop                           #  31    0x10a41d  1      OPC=nop             
  nop                           #  32    0x10a41e  1      OPC=nop             
  nop                           #  33    0x10a41f  1      OPC=nop             
  nop                           #  34    0x10a420  1      OPC=nop             
  nop                           #  35    0x10a421  1      OPC=nop             
  nop                           #  36    0x10a422  1      OPC=nop             
  nop                           #  37    0x10a423  1      OPC=nop             
  nop                           #  38    0x10a424  1      OPC=nop             
  nop                           #  39    0x10a425  1      OPC=nop             
  nop                           #  40    0x10a426  1      OPC=nop             
                                                                              
.size _Unwind_GetIPInfo, .-_Unwind_GetIPInfo

