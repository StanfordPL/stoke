  .text
  .globl strlen_vec2
  .type strlen_vec2, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    96 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.strlen_vec2:              #        0     0      OPC=<label>         
  testb $0x7, %dil         #  1     0     4      OPC=testb_r8_imm8   
  je .L_58                 #  2     0x4   2      OPC=je_label        
  cmpb $0x0, (%rdi)        #  3     0x6   3      OPC=cmpb_m8_imm8    
  je .L_5d                 #  4     0x9   2      OPC=je_label        
  movq %rdi, %rax          #  5     0xb   3      OPC=movq_r64_r64    
  jmpq .L_15               #  6     0xe   2      OPC=jmpq_label      
.L_10:                     #        0x10  0      OPC=<label>         
  cmpb $0x0, (%rax)        #  7     0x10  3      OPC=cmpb_m8_imm8    
  je .L_45                 #  8     0x13  2      OPC=je_label        
.L_15:                     #        0x15  0      OPC=<label>         
  addq $0x1, %rax          #  9     0x15  4      OPC=addq_r64_imm8   
  testb $0x7, %al          #  10    0x19  2      OPC=testb_al_imm8   
  jne .L_10                #  11    0x1b  2      OPC=jne_label       
  jmpq .L_29               #  12    0x1d  2      OPC=jmpq_label      
  nop                      #  13    0x1f  1      OPC=nop             
.L_20:                     #        0x20  0      OPC=<label>         
  cmpb $0x0, -0x1(%rcx)    #  14    0x20  4      OPC=cmpb_m8_imm8    
  je .L_50                 #  15    0x24  2      OPC=je_label        
.L_26:                     #        0x26  0      OPC=<label>         
  movq %rcx, %rax          #  16    0x26  3      OPC=movq_r64_r64    
.L_29:                     #        0x29  0      OPC=<label>         
  leaq 0x2(%rax), %rcx     #  17    0x29  4      OPC=leaq_r64_m16    
  movzwl -0x2(%rcx), %edx  #  18    0x2d  4      OPC=movzwl_r32_m16  
  subl $0x101, %edx        #  19    0x31  6      OPC=subl_r32_imm32  
  andl $0x8080, %edx       #  20    0x37  6      OPC=andl_r32_imm32  
  je .L_26                 #  21    0x3d  2      OPC=je_label        
  cmpb $0x0, -0x2(%rcx)    #  22    0x3f  4      OPC=cmpb_m8_imm8    
  jne .L_20                #  23    0x43  2      OPC=jne_label       
.L_45:                     #        0x45  0      OPC=<label>         
  subq %rdi, %rax          #  24    0x45  3      OPC=subq_r64_r64    
  retq                     #  25    0x48  1      OPC=retq            
  nop                      #  26    0x49  1      OPC=nop             
  nop                      #  27    0x4a  1      OPC=nop             
  nop                      #  28    0x4b  1      OPC=nop             
  nop                      #  29    0x4c  1      OPC=nop             
  nop                      #  30    0x4d  1      OPC=nop             
  nop                      #  31    0x4e  1      OPC=nop             
  nop                      #  32    0x4f  1      OPC=nop             
.L_50:                     #        0x50  0      OPC=<label>         
  subq %rdi, %rax          #  33    0x50  3      OPC=subq_r64_r64    
  addq $0x1, %rax          #  34    0x53  4      OPC=addq_r64_imm8   
  retq                     #  35    0x57  1      OPC=retq            
.L_58:                     #        0x58  0      OPC=<label>         
  movq %rdi, %rax          #  36    0x58  3      OPC=movq_r64_r64    
  jmpq .L_29               #  37    0x5b  2      OPC=jmpq_label      
.L_5d:                     #        0x5d  0      OPC=<label>         
  xorl %eax, %eax          #  38    0x5d  2      OPC=xorl_r32_r32    
  retq                     #  39    0x5f  1      OPC=retq            
                                                                     
.size strlen_vec2, .-strlen_vec2

