  .text
  .globl bad_len
  .type bad_len, @function

#! file-offset 0xc0
#! rip-offset  0x80
#! capacity    32 bytes

# Text                      #  Line  RIP   Bytes  Opcode              
.bad_len:                   #        0x80  0      OPC=<label>         
  cmpb $0x0, 0x1(%rdi)      #  1     0x80  4      OPC=cmpb_m8_imm8    
  movl $0x1, %eax           #  2     0x84  5      OPC=movl_r32_imm32  
  je .L_9c                  #  3     0x89  2      OPC=je_label        
  nop                       #  4     0x8b  1      OPC=nop             
  nop                       #  5     0x8c  1      OPC=nop             
  nop                       #  6     0x8d  1      OPC=nop             
  nop                       #  7     0x8e  1      OPC=nop             
  nop                       #  8     0x8f  1      OPC=nop             
.L_90:                      #        0x90  0      OPC=<label>         
  addq $0x1, %rax           #  9     0x90  4      OPC=addq_r64_imm8   
  cmpb $0x0, (%rdi,%rax,1)  #  10    0x94  4      OPC=cmpb_m8_imm8    
  jne .L_90                 #  11    0x98  2      OPC=jne_label       
  nop                       #  12    0x9a  1      OPC=nop             
  retq                      #  13    0x9b  1      OPC=retq            
.L_9c:                      #        0x9c  0      OPC=<label>         
  nop                       #  14    0x9c  1      OPC=nop             
  retq                      #  15    0x9d  1      OPC=retq            
  xchgw %ax, %ax            #  16    0x9e  2      OPC=xchgw_r16_ax    
                                                                      
.size bad_len, .-bad_len

