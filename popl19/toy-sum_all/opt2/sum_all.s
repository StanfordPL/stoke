  .text
  .globl sum_all
  .type sum_all, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    32 bytes

# Text                      #  Line  RIP   Bytes  Opcode             
.sum_all:                   #        0     0      OPC=<label>        
  testq %rsi, %rsi          #  1     0     3      OPC=testq_r64_r64  
  je .L_1d                  #  2     0x3   2      OPC=je_label       
  leaq (%rdi,%rsi,4), %rdx  #  3     0x5   4      OPC=leaq_r64_m16   
  xorl %eax, %eax           #  4     0x9   2      OPC=xorl_r32_r32   
  nop                       #  5     0xb   1      OPC=nop            
  nop                       #  6     0xc   1      OPC=nop            
  nop                       #  7     0xd   1      OPC=nop            
  nop                       #  8     0xe   1      OPC=nop            
  nop                       #  9     0xf   1      OPC=nop            
.L_10:                      #        0x10  0      OPC=<label>        
  addl (%rdi), %eax         #  10    0x10  2      OPC=addl_r32_m32   
  addq $0x4, %rdi           #  11    0x12  4      OPC=addq_r64_imm8  
  cmpq %rdx, %rdi           #  12    0x16  3      OPC=cmpq_r64_r64   
  jne .L_10                 #  13    0x19  2      OPC=jne_label      
  nop                       #  14    0x1b  1      OPC=nop            
  retq                      #  15    0x1c  1      OPC=retq           
.L_1d:                      #        0x1d  0      OPC=<label>        
  xorl %eax, %eax           #  16    0x1d  2      OPC=xorl_r32_r32   
  retq                      #  17    0x1f  1      OPC=retq           
                                                                     
.size sum_all, .-sum_all

