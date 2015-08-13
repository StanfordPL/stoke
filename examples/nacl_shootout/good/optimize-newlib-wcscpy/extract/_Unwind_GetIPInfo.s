  .text
  .globl _Unwind_GetIPInfo
  .type _Unwind_GetIPInfo, @function

#! file-offset 0x1499c0
#! rip-offset  0x1099c0
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Unwind_GetIPInfo:             #        0x1099c0  0      OPC=<label>         
  movl %edi, %edi               #  1     0x1099c0  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  2     0x1099c2  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0x1099c4  2      OPC=movl_r32_r32    
  movq 0x60(%r15,%rdi,1), %rax  #  4     0x1099c6  5      OPC=movq_r64_m64    
  popq %r11                     #  5     0x1099cb  2      OPC=popq_r64_1      
  shrq $0x3f, %rax              #  6     0x1099cd  4      OPC=shrq_r64_imm8   
  movl %esi, %esi               #  7     0x1099d1  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rsi,1)      #  8     0x1099d3  4      OPC=movl_m32_r32    
  movl %edi, %edi               #  9     0x1099d7  2      OPC=movl_r32_r32    
  movl 0x4c(%r15,%rdi,1), %eax  #  10    0x1099d9  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                #  11    0x1099de  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d       #  12    0x1099e0  7      OPC=andl_r32_imm32  
  nop                           #  13    0x1099e7  1      OPC=nop             
  nop                           #  14    0x1099e8  1      OPC=nop             
  nop                           #  15    0x1099e9  1      OPC=nop             
  nop                           #  16    0x1099ea  1      OPC=nop             
  addq %r15, %r11               #  17    0x1099eb  3      OPC=addq_r64_r64    
  jmpq %r11                     #  18    0x1099ee  3      OPC=jmpq_r64        
  nop                           #  19    0x1099f1  1      OPC=nop             
  nop                           #  20    0x1099f2  1      OPC=nop             
  nop                           #  21    0x1099f3  1      OPC=nop             
  nop                           #  22    0x1099f4  1      OPC=nop             
  nop                           #  23    0x1099f5  1      OPC=nop             
  nop                           #  24    0x1099f6  1      OPC=nop             
  nop                           #  25    0x1099f7  1      OPC=nop             
  nop                           #  26    0x1099f8  1      OPC=nop             
  nop                           #  27    0x1099f9  1      OPC=nop             
  nop                           #  28    0x1099fa  1      OPC=nop             
  nop                           #  29    0x1099fb  1      OPC=nop             
  nop                           #  30    0x1099fc  1      OPC=nop             
  nop                           #  31    0x1099fd  1      OPC=nop             
  nop                           #  32    0x1099fe  1      OPC=nop             
  nop                           #  33    0x1099ff  1      OPC=nop             
  nop                           #  34    0x109a00  1      OPC=nop             
  nop                           #  35    0x109a01  1      OPC=nop             
  nop                           #  36    0x109a02  1      OPC=nop             
  nop                           #  37    0x109a03  1      OPC=nop             
  nop                           #  38    0x109a04  1      OPC=nop             
  nop                           #  39    0x109a05  1      OPC=nop             
  nop                           #  40    0x109a06  1      OPC=nop             
                                                                              
.size _Unwind_GetIPInfo, .-_Unwind_GetIPInfo

