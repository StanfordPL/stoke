  .text
  .globl sum_all
  .type sum_all, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    32 bytes

# Text                      #  Line  RIP   Bytes  Opcode              
.sum_all:                   #        0     0      OPC=<label>         
  andl $0xfffffff, %esi     #  1     0     6      OPC=andl_r32_imm32  
  je .L_1d                  #  2     0x6   2      OPC=je_label        
  leaq (%rdi,%rsi,4), %rdx  #  3     0x8   4      OPC=leaq_r64_m16    
  xorl %eax, %eax           #  4     0xc   2      OPC=xorl_r32_r32    
  xchgw %ax, %ax            #  5     0xe   2      OPC=xchgw_r16_ax    
.L_10:                      #        0x10  0      OPC=<label>         
  addl (%rdi), %eax         #  6     0x10  2      OPC=addl_r32_m32    
  addq $0x4, %rdi           #  7     0x12  4      OPC=addq_r64_imm8   
  cmpq %rdx, %rdi           #  8     0x16  3      OPC=cmpq_r64_r64    
  jne .L_10                 #  9     0x19  2      OPC=jne_label       
  nop                       #  10    0x1b  1      OPC=nop             
  retq                      #  11    0x1c  1      OPC=retq            
.L_1d:                      #        0x1d  0      OPC=<label>         
  xorl %eax, %eax           #  12    0x1d  2      OPC=xorl_r32_r32    
  retq                      #  13    0x1f  1      OPC=retq            
                                                                      
.size sum_all, .-sum_all

