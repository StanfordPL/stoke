  .text
  .globl wcsnlen
  .type wcsnlen, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    43 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.wcsnlen:            #        0     0      OPC=<label>        
  leal (%rdi), %r8d
  movl (%r15, %r8), %ecx  #  1     0     2      OPC=movl_r32_m32   
  testl %ecx, %ecx   #  2     0x2   2      OPC=testl_r32_r32  
  je .L_28           #  3     0x4   2      OPC=je_label       
  testq %rsi, %rsi   #  4     0x6   3      OPC=testq_r64_r64  
  je .L_28           #  5     0x9   2      OPC=je_label       
  movq %rdi, %rax    #  6     0xb   3      OPC=movq_r64_r64   
  jmpq .L_16         #  7     0xe   2      OPC=jmpq_label     
.L_10:               #        0x10  0      OPC=<label>        
  subq $0x1, %rsi    #  8     0x10  4      OPC=subq_r64_imm8  
  je .L_20           #  9     0x14  2      OPC=je_label       
.L_16:               #        0x16  0      OPC=<label>        
  addq $0x4, %rax    #  10    0x16  4      OPC=addq_r64_imm8  
  leal (%rax), %r8d
  movl (%r15, %r8), %edx  #  11    0x1a  2      OPC=movl_r32_m32   
  testl %edx, %edx   #  12    0x1c  2      OPC=testl_r32_r32  
  jne .L_10          #  13    0x1e  2      OPC=jne_label      
.L_20:               #        0x20  0      OPC=<label>        
  subq %rdi, %rax    #  14    0x20  3      OPC=subq_r64_r64   
  sarq $0x2, %rax    #  15    0x23  4      OPC=sarq_r64_imm8  
  retq               #  16    0x27  1      OPC=retq           
.L_28:               #        0x28  0      OPC=<label>        
  xorl %eax, %eax    #  17    0x28  2      OPC=xorl_r32_r32   
  retq               #  18    0x2a  1      OPC=retq           
                                                              
.size wcsnlen, .-wcsnlen

