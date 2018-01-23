  .text
  .globl func_1
  .type func_1, @function

#! file-offset 0xd7
#! rip-offset  0x97
#! capacity    199 bytes

# Text                           #  Line  RIP    Bytes  Opcode              
.func_1:                         #        0x97   0      OPC=<label>         
  testb $0x7, %dil               #  1     0x97   4      OPC=testb_r8_imm8   
  je .L_bf                       #  2     0x9b   2      OPC=je_label        
  cmpb $0x0, (%rdi)              #  3     0x9d   3      OPC=cmpb_m8_imm8    
  je .L_ae                       #  4     0xa0   2      OPC=je_label        
  movq %rdi, %rax                #  5     0xa2   3      OPC=movq_r64_r64    
  jmpq .L_b5                     #  6     0xa5   2      OPC=jmpq_label      
.L_a7:                           #        0xa7   0      OPC=<label>         
  cmpb $0x0, (%rax)              #  7     0xa7   3      OPC=cmpb_m8_imm8    
  jne .L_b5                      #  8     0xaa   2      OPC=jne_label       
  jmpq .L_b1                     #  9     0xac   2      OPC=jmpq_label      
.L_ae:                           #        0xae   0      OPC=<label>         
  movq %rdi, %rax                #  10    0xae   3      OPC=movq_r64_r64    
.L_b1:                           #        0xb1   0      OPC=<label>         
  subq %rdi, %rax                #  11    0xb1   3      OPC=subq_r64_r64    
  retq                           #  12    0xb4   1      OPC=retq            
.L_b5:                           #        0xb5   0      OPC=<label>         
  addq $0x1, %rax                #  13    0xb5   4      OPC=addq_r64_imm8   
  testb $0x7, %al                #  14    0xb9   2      OPC=testb_al_imm8   
  jne .L_a7                      #  15    0xbb   2      OPC=jne_label       
  jmpq .L_c2                     #  16    0xbd   2      OPC=jmpq_label      
.L_bf:                           #        0xbf   0      OPC=<label>         
  movq %rdi, %rax                #  17    0xbf   3      OPC=movq_r64_r64    
.L_c2:                           #        0xc2   0      OPC=<label>         
  movq $0xfefefefefefefeff, %r9  #  18    0xc2   10     OPC=movq_r64_imm64  
  movq $0x8080808080808080, %r8  #  19    0xcc   10     OPC=movq_r64_imm64  
  jmpq .L_db                     #  20    0xd6   2      OPC=jmpq_label      
.L_d8:                           #        0xd8   0      OPC=<label>         
  movq %rcx, %rax                #  21    0xd8   3      OPC=movq_r64_r64    
.L_db:                           #        0xdb   0      OPC=<label>         
  leaq 0x8(%rax), %rcx           #  22    0xdb   4      OPC=leaq_r64_m16    
  movq -0x8(%rcx), %rdx          #  23    0xdf   4      OPC=movq_r64_m64    
  leaq (%rdx,%r9,1), %rsi        #  24    0xe3   4      OPC=leaq_r64_m16    
  notq %rdx                      #  25    0xe7   3      OPC=notq_r64        
  andq %rsi, %rdx                #  26    0xea   3      OPC=andq_r64_r64    
  testq %r8, %rdx                #  27    0xed   3      OPC=testq_r64_r64   
  je .L_d8                       #  28    0xf0   2      OPC=je_label        
  cmpb $0x0, -0x8(%rcx)          #  29    0xf2   4      OPC=cmpb_m8_imm8    
  jne .L_fc                      #  30    0xf6   2      OPC=jne_label       
  subq %rdi, %rax                #  31    0xf8   3      OPC=subq_r64_r64    
  retq                           #  32    0xfb   1      OPC=retq            
.L_fc:                           #        0xfc   0      OPC=<label>         
  cmpb $0x0, -0x7(%rcx)          #  33    0xfc   4      OPC=cmpb_m8_imm8    
  jne .L_10a                     #  34    0x100  2      OPC=jne_label       
  subq %rdi, %rax                #  35    0x102  3      OPC=subq_r64_r64    
  addq $0x1, %rax                #  36    0x105  4      OPC=addq_r64_imm8   
  retq                           #  37    0x109  1      OPC=retq            
.L_10a:                          #        0x10a  0      OPC=<label>         
  cmpb $0x0, -0x6(%rcx)          #  38    0x10a  4      OPC=cmpb_m8_imm8    
  jne .L_118                     #  39    0x10e  2      OPC=jne_label       
  subq %rdi, %rax                #  40    0x110  3      OPC=subq_r64_r64    
  addq $0x2, %rax                #  41    0x113  4      OPC=addq_r64_imm8   
  retq                           #  42    0x117  1      OPC=retq            
.L_118:                          #        0x118  0      OPC=<label>         
  cmpb $0x0, -0x5(%rcx)          #  43    0x118  4      OPC=cmpb_m8_imm8    
  jne .L_126                     #  44    0x11c  2      OPC=jne_label       
  subq %rdi, %rax                #  45    0x11e  3      OPC=subq_r64_r64    
  addq $0x3, %rax                #  46    0x121  4      OPC=addq_r64_imm8   
  retq                           #  47    0x125  1      OPC=retq            
.L_126:                          #        0x126  0      OPC=<label>         
  cmpb $0x0, -0x4(%rcx)          #  48    0x126  4      OPC=cmpb_m8_imm8    
  jne .L_134                     #  49    0x12a  2      OPC=jne_label       
  subq %rdi, %rax                #  50    0x12c  3      OPC=subq_r64_r64    
  addq $0x4, %rax                #  51    0x12f  4      OPC=addq_r64_imm8   
  retq                           #  52    0x133  1      OPC=retq            
.L_134:                          #        0x134  0      OPC=<label>         
  cmpb $0x0, -0x3(%rcx)          #  53    0x134  4      OPC=cmpb_m8_imm8    
  jne .L_142                     #  54    0x138  2      OPC=jne_label       
  subq %rdi, %rax                #  55    0x13a  3      OPC=subq_r64_r64    
  addq $0x5, %rax                #  56    0x13d  4      OPC=addq_r64_imm8   
  retq                           #  57    0x141  1      OPC=retq            
.L_142:                          #        0x142  0      OPC=<label>         
  cmpb $0x0, -0x2(%rcx)          #  58    0x142  4      OPC=cmpb_m8_imm8    
  jne .L_150                     #  59    0x146  2      OPC=jne_label       
  subq %rdi, %rax                #  60    0x148  3      OPC=subq_r64_r64    
  addq $0x6, %rax                #  61    0x14b  4      OPC=addq_r64_imm8   
  retq                           #  62    0x14f  1      OPC=retq            
.L_150:                          #        0x150  0      OPC=<label>         
  cmpb $0x0, -0x1(%rcx)          #  63    0x150  4      OPC=cmpb_m8_imm8    
  jne .L_d8                      #  64    0x154  2      OPC=jne_label       
  subq %rdi, %rax                #  65    0x156  3      OPC=subq_r64_r64    
  addq $0x7, %rax                #  66    0x159  4      OPC=addq_r64_imm8   
  retq                           #  67    0x15d  1      OPC=retq            
                                                                            
.size func_1, .-func_1

