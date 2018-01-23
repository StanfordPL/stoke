  .text
  .globl bad_len
  .type bad_len, @function

#! file-offset 0xba
#! rip-offset  0x7a
#! capacity    29 bytes

# Text                      #  Line  RIP   Bytes  Opcode              
.bad_len:                   #        0x7a  0      OPC=<label>         
  cmpb $0x0, 0x1(%rdi)      #  1     0x7a  4      OPC=cmpb_m8_imm8    
  je .L_91                  #  2     0x7e  2      OPC=je_label        
  movl $0x1, %eax           #  3     0x80  5      OPC=movl_r32_imm32  
.L_85:                      #        0x85  0      OPC=<label>         
  addq $0x1, %rax           #  4     0x85  4      OPC=addq_r64_imm8   
  cmpb $0x0, (%rdi,%rax,1)  #  5     0x89  4      OPC=cmpb_m8_imm8    
  jne .L_85                 #  6     0x8d  2      OPC=jne_label       
  nop                       #  7     0x8f  1      OPC=nop             
  retq                      #  8     0x90  1      OPC=retq            
.L_91:                      #        0x91  0      OPC=<label>         
  movl $0x1, %eax           #  9     0x91  5      OPC=movl_r32_imm32  
  retq                      #  10    0x96  1      OPC=retq            
                                                                      
.size bad_len, .-bad_len

