  .text
  .globl copysign
  .type copysign, @function

#! file-offset 0x14a2c0
#! rip-offset  0x10a2c0
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.copysign:                 #        0x10a2c0  0      OPC=<label>         
  movsd %xmm0, -0x8(%rsp)  #  1     0x10a2c0  6      OPC=movsd_m64_xmm   
  movq -0x8(%rsp), %rdx    #  2     0x10a2c6  5      OPC=movq_r64_m64    
  movq -0x8(%rsp), %rax    #  3     0x10a2cb  5      OPC=movq_r64_m64    
  movq %xmm1, -0x10(%rsp)  #  4     0x10a2d0  6      OPC=movq_m64_xmm_1  
  movq -0x10(%rsp), %rcx   #  5     0x10a2d6  5      OPC=movq_r64_m64    
  shrq $0x20, %rdx         #  6     0x10a2db  4      OPC=shrq_r64_imm8   
  nop                      #  7     0x10a2df  1      OPC=nop             
  andl $0xffffffff, %eax   #  8     0x10a2e0  6      OPC=andl_r32_imm32  
  nop                      #  9     0x10a2e6  1      OPC=nop             
  nop                      #  10    0x10a2e7  1      OPC=nop             
  nop                      #  11    0x10a2e8  1      OPC=nop             
  shrq $0x20, %rcx         #  12    0x10a2e9  4      OPC=shrq_r64_imm8   
  andl $0x7fffffff, %edx   #  13    0x10a2ed  6      OPC=andl_r32_imm32  
  andl $0x80000000, %ecx   #  14    0x10a2f3  6      OPC=andl_r32_imm32  
  orl %ecx, %edx           #  15    0x10a2f9  2      OPC=orl_r32_r32     
  shlq $0x20, %rdx         #  16    0x10a2fb  4      OPC=shlq_r64_imm8   
  orq %rdx, %rax           #  17    0x10a2ff  3      OPC=orq_r64_r64     
  nop                      #  18    0x10a302  1      OPC=nop             
  nop                      #  19    0x10a303  1      OPC=nop             
  nop                      #  20    0x10a304  1      OPC=nop             
  nop                      #  21    0x10a305  1      OPC=nop             
  movq %rax, -0x8(%rsp)    #  22    0x10a306  5      OPC=movq_m64_r64    
  movsd -0x8(%rsp), %xmm0  #  23    0x10a30b  6      OPC=movsd_xmm_m64   
  popq %r11                #  24    0x10a311  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  25    0x10a313  7      OPC=andl_r32_imm32  
  nop                      #  26    0x10a31a  1      OPC=nop             
  nop                      #  27    0x10a31b  1      OPC=nop             
  nop                      #  28    0x10a31c  1      OPC=nop             
  nop                      #  29    0x10a31d  1      OPC=nop             
  addq %r15, %r11          #  30    0x10a31e  3      OPC=addq_r64_r64    
  jmpq %r11                #  31    0x10a321  3      OPC=jmpq_r64        
  nop                      #  32    0x10a324  1      OPC=nop             
  nop                      #  33    0x10a325  1      OPC=nop             
  nop                      #  34    0x10a326  1      OPC=nop             
  nop                      #  35    0x10a327  1      OPC=nop             
  nop                      #  36    0x10a328  1      OPC=nop             
  nop                      #  37    0x10a329  1      OPC=nop             
  nop                      #  38    0x10a32a  1      OPC=nop             
  nop                      #  39    0x10a32b  1      OPC=nop             
  nop                      #  40    0x10a32c  1      OPC=nop             
                                                                         
.size copysign, .-copysign

