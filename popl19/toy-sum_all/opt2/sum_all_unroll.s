  .text
  .globl sum_all_unroll
  .type sum_all_unroll, @function

#! file-offset 0x60
#! rip-offset  0x20
#! capacity    112 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.sum_all_unroll:                #        0x20  0      OPC=<label>         
  andl $0xfffffff, %esi         #  1     0x20  6      OPC=andl_r32_imm32  
  cmpq $0x3, %rsi               #  2     0x26  4      OPC=cmpq_r64_imm8   
  jbe .L_86                     #  3     0x2a  2      OPC=jbe_label       
  leaq -0x4(%rsi), %r8          #  4     0x2c  4      OPC=leaq_r64_m16    
  leaq 0x4(%rdi), %rdx          #  5     0x30  4      OPC=leaq_r64_m16    
  shrq $0x2, %r8                #  6     0x34  4      OPC=shrq_r64_imm8   
  movq %r8, %rax                #  7     0x38  3      OPC=movq_r64_r64    
  shlq $0x4, %rax               #  8     0x3b  4      OPC=shlq_r64_imm8   
  leaq 0x14(%rdi,%rax,1), %rcx  #  9     0x3f  5      OPC=leaq_r64_m16    
  xorl %eax, %eax               #  10    0x44  2      OPC=xorl_r32_r32    
  nop                           #  11    0x46  1      OPC=nop             
  nop                           #  12    0x47  1      OPC=nop             
  nop                           #  13    0x48  1      OPC=nop             
  nop                           #  14    0x49  1      OPC=nop             
  nop                           #  15    0x4a  1      OPC=nop             
  nop                           #  16    0x4b  1      OPC=nop             
  nop                           #  17    0x4c  1      OPC=nop             
  nop                           #  18    0x4d  1      OPC=nop             
  nop                           #  19    0x4e  1      OPC=nop             
  nop                           #  20    0x4f  1      OPC=nop             
.L_50:                          #        0x50  0      OPC=<label>         
  addl -0x4(%rdx), %eax         #  21    0x50  3      OPC=addl_r32_m32    
  addq $0x10, %rdx              #  22    0x53  4      OPC=addq_r64_imm8   
  addl -0x10(%rdx), %eax        #  23    0x57  3      OPC=addl_r32_m32    
  addl -0xc(%rdx), %eax         #  24    0x5a  3      OPC=addl_r32_m32    
  addl -0x8(%rdx), %eax         #  25    0x5d  3      OPC=addl_r32_m32    
  cmpq %rcx, %rdx               #  26    0x60  3      OPC=cmpq_r64_r64    
  jne .L_50                     #  27    0x63  2      OPC=jne_label       
  leaq 0x4(,%r8,4), %rdx        #  28    0x65  8      OPC=leaq_r64_m16    
.L_6d:                          #        0x6d  0      OPC=<label>         
  cmpq %rdx, %rsi               #  29    0x6d  3      OPC=cmpq_r64_r64    
  jbe .L_84                     #  30    0x70  2      OPC=jbe_label       
  nop                           #  31    0x72  1      OPC=nop             
  nop                           #  32    0x73  1      OPC=nop             
  nop                           #  33    0x74  1      OPC=nop             
  nop                           #  34    0x75  1      OPC=nop             
  nop                           #  35    0x76  1      OPC=nop             
  nop                           #  36    0x77  1      OPC=nop             
.L_78:                          #        0x78  0      OPC=<label>         
  addl (%rdi,%rdx,4), %eax      #  37    0x78  3      OPC=addl_r32_m32    
  addq $0x1, %rdx               #  38    0x7b  4      OPC=addq_r64_imm8   
  cmpq %rsi, %rdx               #  39    0x7f  3      OPC=cmpq_r64_r64    
  jne .L_78                     #  40    0x82  2      OPC=jne_label       
.L_84:                          #        0x84  0      OPC=<label>         
  nop                           #  41    0x84  1      OPC=nop             
  retq                          #  42    0x85  1      OPC=retq            
.L_86:                          #        0x86  0      OPC=<label>         
  xorl %edx, %edx               #  43    0x86  2      OPC=xorl_r32_r32    
  xorl %eax, %eax               #  44    0x88  2      OPC=xorl_r32_r32    
  jmpq .L_6d                    #  45    0x8a  2      OPC=jmpq_label      
  nop                           #  46    0x8c  1      OPC=nop             
  nop                           #  47    0x8d  1      OPC=nop             
  nop                           #  48    0x8e  1      OPC=nop             
  nop                           #  49    0x8f  1      OPC=nop             
                                                                          
.size sum_all_unroll, .-sum_all_unroll

