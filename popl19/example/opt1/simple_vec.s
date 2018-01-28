  .text
  .globl simple_vec
  .type simple_vec, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    103 bytes

# Text                         #  Line  RIP   Bytes  Opcode             
.simple_vec:                   #        0     0      OPC=<label>        
  movq %rdi, %rax              #  1     0     3      OPC=movq_r64_r64   
  cmpq %rdi, %rsi              #  2     0x3   3      OPC=cmpq_r64_r64   
  jbe .L_65                    #  3     0x6   2      OPC=jbe_label      
  testb $0x3, %al              #  4     0x8   2      OPC=testb_al_imm8  
  je .L_4b                     #  5     0xa   2      OPC=je_label       
.L_c:                          #        0xc   0      OPC=<label>        
  addq $0x1, %rax              #  6     0xc   4      OPC=addq_r64_imm8  
  cmpq %rax, %rsi              #  7     0x10  3      OPC=cmpq_r64_r64   
  jbe .L_59                    #  8     0x13  2      OPC=jbe_label      
  testb $0x3, %al              #  9     0x15  2      OPC=testb_al_imm8  
  jne .L_c                     #  10    0x17  2      OPC=jne_label      
  jmpq .L_4b                   #  11    0x19  2      OPC=jmpq_label     
.L_1b:                         #        0x1b  0      OPC=<label>        
  movq %rsi, %rdx              #  12    0x1b  3      OPC=movq_r64_r64   
  subq %rax, %rdx              #  13    0x1e  3      OPC=subq_r64_r64   
.L_21:                         #        0x21  0      OPC=<label>        
  subq $0x4, %rdx              #  14    0x21  4      OPC=subq_r64_imm8  
  cmpq $0x3, %rdx              #  15    0x25  4      OPC=cmpq_r64_imm8  
  ja .L_21                     #  16    0x29  2      OPC=ja_label       
  leaq -0x4(%rsi), %rdx        #  17    0x2b  4      OPC=leaq_r64_m16   
  subq %rax, %rdx              #  18    0x2f  3      OPC=subq_r64_r64   
  andq $0xfffffffc, %rdx       #  19    0x32  4      OPC=andq_r64_imm8  
  leaq 0x4(%rdx,%rax,1), %rax  #  20    0x36  5      OPC=leaq_r64_m16   
  cmpq %rsi, %rax              #  21    0x3b  3      OPC=cmpq_r64_r64   
  jae .L_65                    #  22    0x3e  2      OPC=jae_label      
.L_40:                         #        0x40  0      OPC=<label>        
  addq $0x1, %rax              #  23    0x40  4      OPC=addq_r64_imm8  
  cmpq %rax, %rsi              #  24    0x44  3      OPC=cmpq_r64_r64   
  ja .L_40                     #  25    0x47  2      OPC=ja_label       
  nop                          #  26    0x49  1      OPC=nop            
  retq                         #  27    0x4a  1      OPC=retq           
.L_4b:                         #        0x4b  0      OPC=<label>        
  movq %rsi, %rdx              #  28    0x4b  3      OPC=movq_r64_r64   
  subq %rax, %rdx              #  29    0x4e  3      OPC=subq_r64_r64   
  cmpq $0x3, %rdx              #  30    0x51  4      OPC=cmpq_r64_imm8  
  ja .L_1b                     #  31    0x55  2      OPC=ja_label       
  jmpq .L_40                   #  32    0x57  2      OPC=jmpq_label     
.L_59:                         #        0x59  0      OPC=<label>        
  movq %rsi, %rdx              #  33    0x59  3      OPC=movq_r64_r64   
  subq %rax, %rdx              #  34    0x5c  3      OPC=subq_r64_r64   
  cmpq $0x3, %rdx              #  35    0x5f  4      OPC=cmpq_r64_imm8  
  ja .L_1b                     #  36    0x63  2      OPC=ja_label       
.L_65:                         #        0x65  0      OPC=<label>        
  nop                          #  37    0x65  1      OPC=nop            
  retq                         #  38    0x66  1      OPC=retq           
                                                                        
.size simple_vec, .-simple_vec

