  .text
  .globl func_2
  .type func_2, @function

#! file-offset 0x9e
#! rip-offset  0x5e
#! capacity    28 bytes

# Text                      #  Line  RIP   Bytes  Opcode              
.func_2:                    #        0x5e  0      OPC=<label>         
  cmpb $0x0, (%rdi)         #  1     0x5e  3      OPC=cmpb_m8_imm8    
  je .L_74                  #  2     0x61  2      OPC=je_label        
  movl $0x0, %eax           #  3     0x63  5      OPC=movl_r32_imm32  
.L_68:                      #        0x68  0      OPC=<label>         
  addq $0x1, %rax           #  4     0x68  4      OPC=addq_r64_imm8   
  cmpb $0x0, (%rdi,%rax,1)  #  5     0x6c  4      OPC=cmpb_m8_imm8    
  jne .L_68                 #  6     0x70  2      OPC=jne_label       
  nop                       #  7     0x72  1      OPC=nop             
  retq                      #  8     0x73  1      OPC=retq            
.L_74:                      #        0x74  0      OPC=<label>         
  movl $0x0, %eax           #  9     0x74  5      OPC=movl_r32_imm32  
  retq                      #  10    0x79  1      OPC=retq            
                                                                      
.size func_2, .-func_2

