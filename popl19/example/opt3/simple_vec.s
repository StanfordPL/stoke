  .text
  .globl simple_vec
  .type simple_vec, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    80 bytes

# Text                  #  Line  RIP   Bytes  Opcode              
.simple_vec:            #        0     0      OPC=<label>         
  cmpq %rdi, %rsi       #  1     0     3      OPC=cmpq_r64_r64    
  movq %rdi, %rax       #  2     0x3   3      OPC=movq_r64_r64    
  ja .L_19              #  3     0x6   2      OPC=ja_label        
  jmpq .L_40            #  4     0x8   2      OPC=jmpq_label      
  nop                   #  5     0xa   1      OPC=nop             
  nop                   #  6     0xb   1      OPC=nop             
  nop                   #  7     0xc   1      OPC=nop             
  nop                   #  8     0xd   1      OPC=nop             
  nop                   #  9     0xe   1      OPC=nop             
  nop                   #  10    0xf   1      OPC=nop             
.L_10:                  #        0x10  0      OPC=<label>         
  addq $0x1, %rax       #  11    0x10  4      OPC=addq_r64_imm8   
  cmpq %rax, %rsi       #  12    0x14  3      OPC=cmpq_r64_r64    
  jbe .L_23             #  13    0x17  2      OPC=jbe_label       
.L_19:                  #        0x19  0      OPC=<label>         
  testb $0x3, %al       #  14    0x19  2      OPC=testb_al_imm8   
  jne .L_10             #  15    0x1b  2      OPC=jne_label       
  jmpq .L_23            #  16    0x1d  2      OPC=jmpq_label      
  nop                   #  17    0x1f  1      OPC=nop             
.L_20:                  #        0x20  0      OPC=<label>         
  movq %rdx, %rax       #  18    0x20  3      OPC=movq_r64_r64    
.L_23:                  #        0x23  0      OPC=<label>         
  leaq 0x4(%rax), %rdx  #  19    0x23  4      OPC=leaq_r64_m16    
  cmpq %rsi, %rax       #  20    0x27  3      OPC=cmpq_r64_r64    
  setb %dil             #  21    0x2a  4      OPC=setb_r8         
  cmpq %rdx, %rsi       #  22    0x2e  3      OPC=cmpq_r64_r64    
  setae %cl             #  23    0x31  3      OPC=setae_r8        
  testb %cl, %dil       #  24    0x34  3      OPC=testb_r8_r8     
  jne .L_20             #  25    0x37  2      OPC=jne_label       
  cmpq %rax, %rsi       #  26    0x39  3      OPC=cmpq_r64_r64    
  cmovaq %rsi, %rax     #  27    0x3c  4      OPC=cmovaq_r64_r64  
.L_40:                  #        0x40  0      OPC=<label>         
  nop                   #  28    0x40  1      OPC=nop             
  retq                  #  29    0x41  1      OPC=retq            
  nop                   #  30    0x42  1      OPC=nop             
  nop                   #  31    0x43  1      OPC=nop             
  nop                   #  32    0x44  1      OPC=nop             
  nop                   #  33    0x45  1      OPC=nop             
  nop                   #  34    0x46  1      OPC=nop             
  nop                   #  35    0x47  1      OPC=nop             
  nop                   #  36    0x48  1      OPC=nop             
  nop                   #  37    0x49  1      OPC=nop             
  nop                   #  38    0x4a  1      OPC=nop             
  nop                   #  39    0x4b  1      OPC=nop             
  nop                   #  40    0x4c  1      OPC=nop             
  nop                   #  41    0x4d  1      OPC=nop             
  nop                   #  42    0x4e  1      OPC=nop             
  nop                   #  43    0x4f  1      OPC=nop             
                                                                  
.size simple_vec, .-simple_vec

