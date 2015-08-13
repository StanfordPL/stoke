  .text
  .globl copysign
  .type copysign, @function

#! file-offset 0x1498a0
#! rip-offset  0x1098a0
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.copysign:                 #        0x1098a0  0      OPC=<label>         
  movsd %xmm0, -0x8(%rsp)  #  1     0x1098a0  6      OPC=movsd_m64_xmm   
  movq -0x8(%rsp), %rdx    #  2     0x1098a6  5      OPC=movq_r64_m64    
  movq -0x8(%rsp), %rax    #  3     0x1098ab  5      OPC=movq_r64_m64    
  movq %xmm1, -0x10(%rsp)  #  4     0x1098b0  6      OPC=movq_m64_xmm_1  
  movq -0x10(%rsp), %rcx   #  5     0x1098b6  5      OPC=movq_r64_m64    
  shrq $0x20, %rdx         #  6     0x1098bb  4      OPC=shrq_r64_imm8   
  nop                      #  7     0x1098bf  1      OPC=nop             
  andl $0xffffffff, %eax   #  8     0x1098c0  6      OPC=andl_r32_imm32  
  nop                      #  9     0x1098c6  1      OPC=nop             
  nop                      #  10    0x1098c7  1      OPC=nop             
  nop                      #  11    0x1098c8  1      OPC=nop             
  shrq $0x20, %rcx         #  12    0x1098c9  4      OPC=shrq_r64_imm8   
  andl $0x7fffffff, %edx   #  13    0x1098cd  6      OPC=andl_r32_imm32  
  andl $0x80000000, %ecx   #  14    0x1098d3  6      OPC=andl_r32_imm32  
  orl %ecx, %edx           #  15    0x1098d9  2      OPC=orl_r32_r32     
  shlq $0x20, %rdx         #  16    0x1098db  4      OPC=shlq_r64_imm8   
  orq %rdx, %rax           #  17    0x1098df  3      OPC=orq_r64_r64     
  nop                      #  18    0x1098e2  1      OPC=nop             
  nop                      #  19    0x1098e3  1      OPC=nop             
  nop                      #  20    0x1098e4  1      OPC=nop             
  nop                      #  21    0x1098e5  1      OPC=nop             
  movq %rax, -0x8(%rsp)    #  22    0x1098e6  5      OPC=movq_m64_r64    
  movsd -0x8(%rsp), %xmm0  #  23    0x1098eb  6      OPC=movsd_xmm_m64   
  popq %r11                #  24    0x1098f1  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  25    0x1098f3  7      OPC=andl_r32_imm32  
  nop                      #  26    0x1098fa  1      OPC=nop             
  nop                      #  27    0x1098fb  1      OPC=nop             
  nop                      #  28    0x1098fc  1      OPC=nop             
  nop                      #  29    0x1098fd  1      OPC=nop             
  addq %r15, %r11          #  30    0x1098fe  3      OPC=addq_r64_r64    
  jmpq %r11                #  31    0x109901  3      OPC=jmpq_r64        
  nop                      #  32    0x109904  1      OPC=nop             
  nop                      #  33    0x109905  1      OPC=nop             
  nop                      #  34    0x109906  1      OPC=nop             
  nop                      #  35    0x109907  1      OPC=nop             
  nop                      #  36    0x109908  1      OPC=nop             
  nop                      #  37    0x109909  1      OPC=nop             
  nop                      #  38    0x10990a  1      OPC=nop             
  nop                      #  39    0x10990b  1      OPC=nop             
  nop                      #  40    0x10990c  1      OPC=nop             
                                                                         
.size copysign, .-copysign

