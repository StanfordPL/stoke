  .text
  .globl fabs
  .type fabs, @function

#! file-offset 0x1494a0
#! rip-offset  0x1094a0
#! capacity    64 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.fabs:                            #        0x1094a0  0      OPC=<label>         
  movsd %xmm0, -0x8(%rsp)         #  1     0x1094a0  6      OPC=movsd_m64_xmm   
  movq -0x8(%rsp), %rcx           #  2     0x1094a6  5      OPC=movq_r64_m64    
  movq $0x7fffffff00000000, %rdx  #  3     0x1094ab  10     OPC=movq_r64_imm64  
  movq %rcx, %rax                 #  4     0x1094b5  3      OPC=movq_r64_r64    
  andq %rcx, %rdx                 #  5     0x1094b8  3      OPC=andq_r64_r64    
  andl $0xffffffff, %eax          #  6     0x1094bb  6      OPC=andl_r32_imm32  
  nop                             #  7     0x1094c1  1      OPC=nop             
  nop                             #  8     0x1094c2  1      OPC=nop             
  nop                             #  9     0x1094c3  1      OPC=nop             
  xchgw %ax, %ax                  #  10    0x1094c4  2      OPC=xchgw_ax_r16    
  orq %rdx, %rax                  #  11    0x1094c6  3      OPC=orq_r64_r64     
  movq %rax, -0x8(%rsp)           #  12    0x1094c9  5      OPC=movq_m64_r64    
  movsd -0x8(%rsp), %xmm0         #  13    0x1094ce  6      OPC=movsd_xmm_m64   
  popq %r11                       #  14    0x1094d4  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  15    0x1094d6  7      OPC=andl_r32_imm32  
  nop                             #  16    0x1094dd  1      OPC=nop             
  nop                             #  17    0x1094de  1      OPC=nop             
  nop                             #  18    0x1094df  1      OPC=nop             
  nop                             #  19    0x1094e0  1      OPC=nop             
  addq %r15, %r11                 #  20    0x1094e1  3      OPC=addq_r64_r64    
  jmpq %r11                       #  21    0x1094e4  3      OPC=jmpq_r64        
  nop                             #  22    0x1094e7  1      OPC=nop             
  nop                             #  23    0x1094e8  1      OPC=nop             
  nop                             #  24    0x1094e9  1      OPC=nop             
  nop                             #  25    0x1094ea  1      OPC=nop             
  nop                             #  26    0x1094eb  1      OPC=nop             
  nop                             #  27    0x1094ec  1      OPC=nop             
                                                                                
.size fabs, .-fabs

