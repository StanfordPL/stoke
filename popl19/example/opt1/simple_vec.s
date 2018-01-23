  .text
  .globl simple_vec
  .type simple_vec, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    68 bytes

# Text                  #  Line  RIP   Bytes  Opcode             
.simple_vec:            #        0     0      OPC=<label>        
  movq %rdi, %rax       #  1     0     3      OPC=movq_r64_r64   
  cmpq %rdi, %rsi       #  2     0x3   3      OPC=cmpq_r64_r64   
  jbe .L_42             #  3     0x6   2      OPC=jbe_label      
  testb $0x3, %al       #  4     0x8   2      OPC=testb_al_imm8  
  je .L_1e              #  5     0xa   2      OPC=je_label       
.L_c:                   #        0xc   0      OPC=<label>        
  addq $0x1, %rax       #  6     0xc   4      OPC=addq_r64_imm8  
  cmpq %rax, %rsi       #  7     0x10  3      OPC=cmpq_r64_r64   
  jbe .L_1e             #  8     0x13  2      OPC=jbe_label      
  testb $0x3, %al       #  9     0x15  2      OPC=testb_al_imm8  
  jne .L_c              #  10    0x17  2      OPC=jne_label      
  jmpq .L_1e            #  11    0x19  2      OPC=jmpq_label     
.L_1b:                  #        0x1b  0      OPC=<label>        
  movq %rdx, %rax       #  12    0x1b  3      OPC=movq_r64_r64   
.L_1e:                  #        0x1e  0      OPC=<label>        
  leaq 0x4(%rax), %rdx  #  13    0x1e  4      OPC=leaq_r64_m16   
  cmpq %rsi, %rax       #  14    0x22  3      OPC=cmpq_r64_r64   
  setb %dil             #  15    0x25  4      OPC=setb_r8        
  cmpq %rdx, %rsi       #  16    0x29  3      OPC=cmpq_r64_r64   
  setae %cl             #  17    0x2c  3      OPC=setae_r8       
  testb %cl, %dil       #  18    0x2f  3      OPC=testb_r8_r8    
  jne .L_1b             #  19    0x32  2      OPC=jne_label      
  cmpq %rax, %rsi       #  20    0x34  3      OPC=cmpq_r64_r64   
  jbe .L_42             #  21    0x37  2      OPC=jbe_label      
.L_39:                  #        0x39  0      OPC=<label>        
  addq $0x1, %rax       #  22    0x39  4      OPC=addq_r64_imm8  
  cmpq %rsi, %rax       #  23    0x3d  3      OPC=cmpq_r64_r64   
  jne .L_39             #  24    0x40  2      OPC=jne_label      
.L_42:                  #        0x42  0      OPC=<label>        
  nop                   #  25    0x42  1      OPC=nop            
  retq                  #  26    0x43  1      OPC=retq           
                                                                 
.size simple_vec, .-simple_vec

