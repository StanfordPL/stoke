  .text
  .globl func_2
  .type func_2, @function

#! file-offset 0xa0
#! rip-offset  0x60
#! capacity    32 bytes

# Text                      #  Line  RIP   Bytes  Opcode             
.func_2:                    #        0x60  0      OPC=<label>        
  xorl %eax, %eax           #  1     0x60  2      OPC=xorl_r32_r32   
  cmpb $0x0, (%rdi)         #  2     0x62  3      OPC=cmpb_m8_imm8   
  je .L_7c                  #  3     0x65  2      OPC=je_label       
  nop                       #  4     0x67  1      OPC=nop            
  nop                       #  5     0x68  1      OPC=nop            
  nop                       #  6     0x69  1      OPC=nop            
  nop                       #  7     0x6a  1      OPC=nop            
  nop                       #  8     0x6b  1      OPC=nop            
  nop                       #  9     0x6c  1      OPC=nop            
  nop                       #  10    0x6d  1      OPC=nop            
  nop                       #  11    0x6e  1      OPC=nop            
  nop                       #  12    0x6f  1      OPC=nop            
.L_70:                      #        0x70  0      OPC=<label>        
  addq $0x1, %rax           #  13    0x70  4      OPC=addq_r64_imm8  
  cmpb $0x0, (%rdi,%rax,1)  #  14    0x74  4      OPC=cmpb_m8_imm8   
  jne .L_70                 #  15    0x78  2      OPC=jne_label      
  nop                       #  16    0x7a  1      OPC=nop            
  retq                      #  17    0x7b  1      OPC=retq           
.L_7c:                      #        0x7c  0      OPC=<label>        
  nop                       #  18    0x7c  1      OPC=nop            
  retq                      #  19    0x7d  1      OPC=retq           
  xchgw %ax, %ax            #  20    0x7e  2      OPC=xchgw_r16_ax   
                                                                     
.size func_2, .-func_2

