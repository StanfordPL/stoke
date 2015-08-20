  .text
  .globl _Unwind_GetIPInfo
  .type _Unwind_GetIPInfo, @function

#! file-offset 0x149cc0
#! rip-offset  0x109cc0
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetIPInfo:             #        0x109cc0  0      OPC=<label>         
  movl %edi, %edi               #  1     0x109cc0  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  2     0x109cc2  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x109cc4  2      OPC=movl_r32_r32    
  movq 0x60(%r15,%rdi,1), %rax  #  4     0x109cc6  5      OPC=movq_r64_m64    
  popq %r11                     #  5     0x109ccb  2      OPC=popq_r64_1      
  shrq $0x3f, %rax              #  6     0x109ccd  4      OPC=shrq_r64_imm8   
  movl %esi, %esi               #  7     0x109cd1  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rsi,1)      #  8     0x109cd3  4      OPC=movl_m32_r32    
  movl %edi, %edi               #  9     0x109cd7  2      OPC=movl_r32_r32    
  movl 0x4c(%r15,%rdi,1), %eax  #  10    0x109cd9  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                #  11    0x109cde  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d       #  12    0x109ce0  7      OPC=andl_r32_imm32  
  nop                           #  13    0x109ce7  1      OPC=nop             
  nop                           #  14    0x109ce8  1      OPC=nop             
  nop                           #  15    0x109ce9  1      OPC=nop             
  nop                           #  16    0x109cea  1      OPC=nop             
  addq %r15, %r11               #  17    0x109ceb  3      OPC=addq_r64_r64    
  jmpq %r11                     #  18    0x109cee  3      OPC=jmpq_r64        
  nop                           #  19    0x109cf1  1      OPC=nop             
  nop                           #  20    0x109cf2  1      OPC=nop             
  nop                           #  21    0x109cf3  1      OPC=nop             
  nop                           #  22    0x109cf4  1      OPC=nop             
  nop                           #  23    0x109cf5  1      OPC=nop             
  nop                           #  24    0x109cf6  1      OPC=nop             
  nop                           #  25    0x109cf7  1      OPC=nop             
  nop                           #  26    0x109cf8  1      OPC=nop             
  nop                           #  27    0x109cf9  1      OPC=nop             
  nop                           #  28    0x109cfa  1      OPC=nop             
  nop                           #  29    0x109cfb  1      OPC=nop             
  nop                           #  30    0x109cfc  1      OPC=nop             
  nop                           #  31    0x109cfd  1      OPC=nop             
  nop                           #  32    0x109cfe  1      OPC=nop             
  nop                           #  33    0x109cff  1      OPC=nop             
  nop                           #  34    0x109d00  1      OPC=nop             
  nop                           #  35    0x109d01  1      OPC=nop             
  nop                           #  36    0x109d02  1      OPC=nop             
  nop                           #  37    0x109d03  1      OPC=nop             
  nop                           #  38    0x109d04  1      OPC=nop             
  nop                           #  39    0x109d05  1      OPC=nop             
  nop                           #  40    0x109d06  1      OPC=nop             
                                                                              
.size _Unwind_GetIPInfo, .-_Unwind_GetIPInfo

