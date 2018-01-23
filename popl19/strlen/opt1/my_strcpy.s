  .text
  .globl my_strcpy
  .type my_strcpy, @function

#! file-offset 0x11c
#! rip-offset  0xdc
#! capacity    27 bytes

# Text                  #  Line  RIP   Bytes  Opcode             
.my_strcpy:             #        0xdc  0      OPC=<label>        
  movzbl (%rsi), %eax   #  1     0xdc  3      OPC=movzbl_r32_m8  
  testb %al, %al        #  2     0xdf  2      OPC=testb_r8_r8    
  je .L_f5              #  3     0xe1  2      OPC=je_label       
.L_e3:                  #        0xe3  0      OPC=<label>        
  addq $0x1, %rdi       #  4     0xe3  4      OPC=addq_r64_imm8  
  addq $0x1, %rsi       #  5     0xe7  4      OPC=addq_r64_imm8  
  movb %al, -0x1(%rdi)  #  6     0xeb  3      OPC=movb_m8_r8     
  movzbl (%rsi), %eax   #  7     0xee  3      OPC=movzbl_r32_m8  
  testb %al, %al        #  8     0xf1  2      OPC=testb_r8_r8    
  jne .L_e3             #  9     0xf3  2      OPC=jne_label      
.L_f5:                  #        0xf5  0      OPC=<label>        
  nop                   #  10    0xf5  1      OPC=nop            
  retq                  #  11    0xf6  1      OPC=retq           
                                                                 
.size my_strcpy, .-my_strcpy

