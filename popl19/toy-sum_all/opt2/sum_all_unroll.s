  .text
  .globl sum_all_unroll
  .type sum_all_unroll, @function

#! file-offset 0x60
#! rip-offset  0x20
#! capacity    96 bytes

# Text                          #  Line  RIP   Bytes  Opcode             
.sum_all_unroll:                #        0x20  0      OPC=<label>        
  cmpq $0x3, %rsi               #  1     0x20  4      OPC=cmpq_r64_imm8  
  jbe .L_76                     #  2     0x24  2      OPC=jbe_label      
  leaq -0x4(%rsi), %r8          #  3     0x26  4      OPC=leaq_r64_m16   
  leaq 0x4(%rdi), %rdx          #  4     0x2a  4      OPC=leaq_r64_m16   
  shrq $0x2, %r8                #  5     0x2e  4      OPC=shrq_r64_imm8  
  movq %r8, %rax                #  6     0x32  3      OPC=movq_r64_r64   
  shlq $0x4, %rax               #  7     0x35  4      OPC=shlq_r64_imm8  
  leaq 0x14(%rdi,%rax,1), %rcx  #  8     0x39  5      OPC=leaq_r64_m16   
  xorl %eax, %eax               #  9     0x3e  2      OPC=xorl_r32_r32   
.L_40:                          #        0x40  0      OPC=<label>        
  addl -0x4(%rdx), %eax         #  10    0x40  3      OPC=addl_r32_m32   
  addq $0x10, %rdx              #  11    0x43  4      OPC=addq_r64_imm8  
  addl -0x10(%rdx), %eax        #  12    0x47  3      OPC=addl_r32_m32   
  addl -0xc(%rdx), %eax         #  13    0x4a  3      OPC=addl_r32_m32   
  addl -0x8(%rdx), %eax         #  14    0x4d  3      OPC=addl_r32_m32   
  cmpq %rcx, %rdx               #  15    0x50  3      OPC=cmpq_r64_r64   
  jne .L_40                     #  16    0x53  2      OPC=jne_label      
  leaq 0x4(,%r8,4), %rdx        #  17    0x55  8      OPC=leaq_r64_m16   
.L_5d:                          #        0x5d  0      OPC=<label>        
  cmpq %rdx, %rsi               #  18    0x5d  3      OPC=cmpq_r64_r64   
  jbe .L_74                     #  19    0x60  2      OPC=jbe_label      
  nop                           #  20    0x62  1      OPC=nop            
  nop                           #  21    0x63  1      OPC=nop            
  nop                           #  22    0x64  1      OPC=nop            
  nop                           #  23    0x65  1      OPC=nop            
  nop                           #  24    0x66  1      OPC=nop            
  nop                           #  25    0x67  1      OPC=nop            
.L_68:                          #        0x68  0      OPC=<label>        
  addl (%rdi,%rdx,4), %eax      #  26    0x68  3      OPC=addl_r32_m32   
  addq $0x1, %rdx               #  27    0x6b  4      OPC=addq_r64_imm8  
  cmpq %rsi, %rdx               #  28    0x6f  3      OPC=cmpq_r64_r64   
  jne .L_68                     #  29    0x72  2      OPC=jne_label      
.L_74:                          #        0x74  0      OPC=<label>        
  nop                           #  30    0x74  1      OPC=nop            
  retq                          #  31    0x75  1      OPC=retq           
.L_76:                          #        0x76  0      OPC=<label>        
  xorl %edx, %edx               #  32    0x76  2      OPC=xorl_r32_r32   
  xorl %eax, %eax               #  33    0x78  2      OPC=xorl_r32_r32   
  jmpq .L_5d                    #  34    0x7a  2      OPC=jmpq_label     
  nop                           #  35    0x7c  1      OPC=nop            
  nop                           #  36    0x7d  1      OPC=nop            
  nop                           #  37    0x7e  1      OPC=nop            
  nop                           #  38    0x7f  1      OPC=nop            
                                                                         
.size sum_all_unroll, .-sum_all_unroll

