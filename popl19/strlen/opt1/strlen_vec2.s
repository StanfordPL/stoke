  .text
  .globl strlen_vec2
  .type strlen_vec2, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    94 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.strlen_vec2:              #        0     0      OPC=<label>          
  testb $0x7, %dil         #  1     0     4      OPC=testb_r8_imm8    
  je .L_28                 #  2     0x4   2      OPC=je_label         
  cmpb $0x0, (%rdi)        #  3     0x6   3      OPC=cmpb_m8_imm8     
  je .L_17                 #  4     0x9   2      OPC=je_label         
  movq %rdi, %rax          #  5     0xb   3      OPC=movq_r64_r64     
  jmpq .L_1e               #  6     0xe   2      OPC=jmpq_label       
.L_10:                     #        0x10  0      OPC=<label>          
  cmpb $0x0, (%rax)        #  7     0x10  3      OPC=cmpb_m8_imm8     
  jne .L_1e                #  8     0x13  2      OPC=jne_label        
  jmpq .L_1a               #  9     0x15  2      OPC=jmpq_label       
.L_17:                     #        0x17  0      OPC=<label>          
  movq %rdi, %rax          #  10    0x17  3      OPC=movq_r64_r64     
.L_1a:                     #        0x1a  0      OPC=<label>          
  subq %rdi, %rax          #  11    0x1a  3      OPC=subq_r64_r64     
  retq                     #  12    0x1d  1      OPC=retq             
.L_1e:                     #        0x1e  0      OPC=<label>          
  addq $0x1, %rax          #  13    0x1e  4      OPC=addq_r64_imm8    
  testb $0x7, %al          #  14    0x22  2      OPC=testb_al_imm8    
  jne .L_10                #  15    0x24  2      OPC=jne_label        
  jmpq .L_30               #  16    0x26  2      OPC=jmpq_label       
.L_28:                     #        0x28  0      OPC=<label>          
  movq %rdi, %rax          #  17    0x28  3      OPC=movq_r64_r64     
  jmpq .L_30               #  18    0x2b  2      OPC=jmpq_label       
.L_2d:                     #        0x2d  0      OPC=<label>          
  movq %rcx, %rax          #  19    0x2d  3      OPC=movq_r64_r64     
.L_30:                     #        0x30  0      OPC=<label>          
  leaq 0x2(%rax), %rcx     #  20    0x30  4      OPC=leaq_r64_m16     
  movzwl -0x2(%rcx), %edx  #  21    0x34  4      OPC=movzwl_r32_m16   
  subl $0x101, %edx        #  22    0x38  6      OPC=subl_r32_imm32   
  testl $0x8080, %edx      #  23    0x3e  6      OPC=testl_r32_imm32  
  je .L_2d                 #  24    0x44  2      OPC=je_label         
  cmpb $0x0, -0x2(%rcx)    #  25    0x46  4      OPC=cmpb_m8_imm8     
  jne .L_50                #  26    0x4a  2      OPC=jne_label        
  subq %rdi, %rax          #  27    0x4c  3      OPC=subq_r64_r64     
  retq                     #  28    0x4f  1      OPC=retq             
.L_50:                     #        0x50  0      OPC=<label>          
  cmpb $0x0, -0x1(%rcx)    #  29    0x50  4      OPC=cmpb_m8_imm8     
  jne .L_2d                #  30    0x54  2      OPC=jne_label        
  subq %rdi, %rax          #  31    0x56  3      OPC=subq_r64_r64     
  addq $0x1, %rax          #  32    0x59  4      OPC=addq_r64_imm8    
  retq                     #  33    0x5d  1      OPC=retq             
                                                                      
.size strlen_vec2, .-strlen_vec2

