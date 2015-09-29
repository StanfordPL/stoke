  .text
  .globl fabs
  .type fabs, @function

#! file-offset 0x149bc0
#! rip-offset  0x109bc0
#! capacity    64 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.fabs:                            #        0x109bc0  0      OPC=<label>         
  movsd %xmm0, -0x8(%rsp)         #  1     0x109bc0  6      OPC=movsd_m64_xmm   
  movq -0x8(%rsp), %rcx           #  2     0x109bc6  5      OPC=movq_r64_m64    
  movq $0x7fffffff00000000, %rdx  #  3     0x109bcb  10     OPC=movq_r64_imm64  
  movq %rcx, %rax                 #  4     0x109bd5  3      OPC=movq_r64_r64    
  andq %rcx, %rdx                 #  5     0x109bd8  3      OPC=andq_r64_r64    
  andl $0xffffffff, %eax          #  6     0x109bdb  6      OPC=andl_r32_imm32  
  nop                             #  7     0x109be1  1      OPC=nop             
  nop                             #  8     0x109be2  1      OPC=nop             
  nop                             #  9     0x109be3  1      OPC=nop             
  xchgw %ax, %ax                  #  10    0x109be4  2      OPC=xchgw_ax_r16    
  orq %rdx, %rax                  #  11    0x109be6  3      OPC=orq_r64_r64     
  movq %rax, -0x8(%rsp)           #  12    0x109be9  5      OPC=movq_m64_r64    
  movsd -0x8(%rsp), %xmm0         #  13    0x109bee  6      OPC=movsd_xmm_m64   
  popq %r11                       #  14    0x109bf4  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  15    0x109bf6  7      OPC=andl_r32_imm32  
  nop                             #  16    0x109bfd  1      OPC=nop             
  nop                             #  17    0x109bfe  1      OPC=nop             
  nop                             #  18    0x109bff  1      OPC=nop             
  nop                             #  19    0x109c00  1      OPC=nop             
  addq %r15, %r11                 #  20    0x109c01  3      OPC=addq_r64_r64    
  jmpq %r11                       #  21    0x109c04  3      OPC=jmpq_r64        
  nop                             #  22    0x109c07  1      OPC=nop             
  nop                             #  23    0x109c08  1      OPC=nop             
  nop                             #  24    0x109c09  1      OPC=nop             
  nop                             #  25    0x109c0a  1      OPC=nop             
  nop                             #  26    0x109c0b  1      OPC=nop             
  nop                             #  27    0x109c0c  1      OPC=nop             
                                                                                
.size fabs, .-fabs

