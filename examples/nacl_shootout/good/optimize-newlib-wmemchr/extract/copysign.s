  .text
  .globl copysign
  .type copysign, @function

#! file-offset 0x149ba0
#! rip-offset  0x109ba0
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.copysign:                 #        0x109ba0  0      OPC=<label>         
  movsd %xmm0, -0x8(%rsp)  #  1     0x109ba0  6      OPC=movsd_m64_xmm   
  movq -0x8(%rsp), %rdx    #  2     0x109ba6  5      OPC=movq_r64_m64    
  movq -0x8(%rsp), %rax    #  3     0x109bab  5      OPC=movq_r64_m64    
  movq %xmm1, -0x10(%rsp)  #  4     0x109bb0  6      OPC=movq_m64_xmm_1  
  movq -0x10(%rsp), %rcx   #  5     0x109bb6  5      OPC=movq_r64_m64    
  shrq $0x20, %rdx         #  6     0x109bbb  4      OPC=shrq_r64_imm8   
  nop                      #  7     0x109bbf  1      OPC=nop             
  andl $0xffffffff, %eax   #  8     0x109bc0  6      OPC=andl_r32_imm32  
  nop                      #  9     0x109bc6  1      OPC=nop             
  nop                      #  10    0x109bc7  1      OPC=nop             
  nop                      #  11    0x109bc8  1      OPC=nop             
  shrq $0x20, %rcx         #  12    0x109bc9  4      OPC=shrq_r64_imm8   
  andl $0x7fffffff, %edx   #  13    0x109bcd  6      OPC=andl_r32_imm32  
  andl $0x80000000, %ecx   #  14    0x109bd3  6      OPC=andl_r32_imm32  
  orl %ecx, %edx           #  15    0x109bd9  2      OPC=orl_r32_r32     
  shlq $0x20, %rdx         #  16    0x109bdb  4      OPC=shlq_r64_imm8   
  orq %rdx, %rax           #  17    0x109bdf  3      OPC=orq_r64_r64     
  nop                      #  18    0x109be2  1      OPC=nop             
  nop                      #  19    0x109be3  1      OPC=nop             
  nop                      #  20    0x109be4  1      OPC=nop             
  nop                      #  21    0x109be5  1      OPC=nop             
  movq %rax, -0x8(%rsp)    #  22    0x109be6  5      OPC=movq_m64_r64    
  movsd -0x8(%rsp), %xmm0  #  23    0x109beb  6      OPC=movsd_xmm_m64   
  popq %r11                #  24    0x109bf1  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  25    0x109bf3  7      OPC=andl_r32_imm32  
  nop                      #  26    0x109bfa  1      OPC=nop             
  nop                      #  27    0x109bfb  1      OPC=nop             
  nop                      #  28    0x109bfc  1      OPC=nop             
  nop                      #  29    0x109bfd  1      OPC=nop             
  addq %r15, %r11          #  30    0x109bfe  3      OPC=addq_r64_r64    
  jmpq %r11                #  31    0x109c01  3      OPC=jmpq_r64        
  nop                      #  32    0x109c04  1      OPC=nop             
  nop                      #  33    0x109c05  1      OPC=nop             
  nop                      #  34    0x109c06  1      OPC=nop             
  nop                      #  35    0x109c07  1      OPC=nop             
  nop                      #  36    0x109c08  1      OPC=nop             
  nop                      #  37    0x109c09  1      OPC=nop             
  nop                      #  38    0x109c0a  1      OPC=nop             
  nop                      #  39    0x109c0b  1      OPC=nop             
  nop                      #  40    0x109c0c  1      OPC=nop             
                                                                         
.size copysign, .-copysign

