  .text
  .globl strxfrm
  .type strxfrm, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    79 bytes

# Text                      #  Line  RIP   Bytes  Opcode             
.strxfrm:                   #        0     0      OPC=<label>        
  xorl %eax, %eax           #  1     0     2      OPC=xorl_r32_r32   
  testq %rdx, %rdx          #  2     0x2   3      OPC=testq_r64_r64  
  je .L_38                  #  3     0x5   2      OPC=je_label       
  movzbl (%rsi), %eax       #  4     0x7   3      OPC=movzbl_r32_m8  
  leaq 0x1(%rsi), %rcx      #  5     0xa   4      OPC=leaq_r64_m16   
  testb %al, %al            #  6     0xe   2      OPC=testb_r8_r8    
  movb %al, (%rdi)          #  7     0x10  2      OPC=movb_m8_r8     
  je .L_4c                  #  8     0x12  2      OPC=je_label       
  addq %rdx, %rsi           #  9     0x14  3      OPC=addq_r64_r64   
  xorl %eax, %eax           #  10    0x17  2      OPC=xorl_r32_r32   
  jmpq .L_2f                #  11    0x19  2      OPC=jmpq_label     
  nop                       #  12    0x1b  1      OPC=nop            
  nop                       #  13    0x1c  1      OPC=nop            
  nop                       #  14    0x1d  1      OPC=nop            
  nop                       #  15    0x1e  1      OPC=nop            
  nop                       #  16    0x1f  1      OPC=nop            
.L_20:                      #        0x20  0      OPC=<label>        
  addq $0x1, %rcx           #  17    0x20  4      OPC=addq_r64_imm8  
  movzbl -0x1(%rcx), %edx   #  18    0x24  4      OPC=movzbl_r32_m8  
  testb %dl, %dl            #  19    0x28  2      OPC=testb_r8_r8    
  movb %dl, (%rdi,%rax,1)   #  20    0x2a  3      OPC=movb_m8_r8     
  je .L_4a                  #  21    0x2d  2      OPC=je_label       
.L_2f:                      #        0x2f  0      OPC=<label>        
  addq $0x1, %rax           #  22    0x2f  4      OPC=addq_r64_imm8  
  cmpq %rsi, %rcx           #  23    0x33  3      OPC=cmpq_r64_r64   
  jne .L_20                 #  24    0x36  2      OPC=jne_label      
.L_38:                      #        0x38  0      OPC=<label>        
  cmpb $0x0, (%rsi)         #  25    0x38  3      OPC=cmpb_m8_imm8   
  je .L_4a                  #  26    0x3b  2      OPC=je_label       
  subq %rax, %rsi           #  27    0x3d  3      OPC=subq_r64_r64   
.L_40:                      #        0x40  0      OPC=<label>        
  addq $0x1, %rax           #  28    0x40  4      OPC=addq_r64_imm8  
  cmpb $0x0, (%rsi,%rax,1)  #  29    0x44  4      OPC=cmpb_m8_imm8   
  jne .L_40                 #  30    0x48  2      OPC=jne_label      
.L_4a:                      #        0x4a  0      OPC=<label>        
  retq                      #  31    0x4a  1      OPC=retq           
  nop                       #  32    0x4b  1      OPC=nop            
.L_4c:                      #        0x4c  0      OPC=<label>        
  xorl %eax, %eax           #  33    0x4c  2      OPC=xorl_r32_r32   
  retq                      #  34    0x4e  1      OPC=retq           
                                                                     
.size strxfrm, .-strxfrm

