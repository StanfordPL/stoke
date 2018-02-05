  .text
  .globl func_1
  .type func_1, @function

#! file-offset 0xd7
#! rip-offset  0x97
#! capacity    200 bytes

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
  cmpb $0x0, (%rax)              #  29    0xf2   3      OPC=cmpb_m8_imm8    
  jne .L_fb                      #  30    0xf5   2      OPC=jne_label       
  subq %rdi, %rax                #  31    0xf7   3      OPC=subq_r64_r64    
  retq                           #  32    0xfa   1      OPC=retq            
.L_fb:                           #        0xfb   0      OPC=<label>         
  cmpb $0x0, 0x1(%rax)           #  33    0xfb   4      OPC=cmpb_m8_imm8    
  jne .L_109                     #  34    0xff   2      OPC=jne_label       
  subq %rdi, %rax                #  35    0x101  3      OPC=subq_r64_r64    
  addq $0x1, %rax                #  36    0x104  4      OPC=addq_r64_imm8   
  retq                           #  37    0x108  1      OPC=retq            
.L_109:                          #        0x109  0      OPC=<label>         
  cmpb $0x0, 0x2(%rax)           #  38    0x109  4      OPC=cmpb_m8_imm8    
  jne .L_117                     #  39    0x10d  2      OPC=jne_label       
  subq %rdi, %rax                #  40    0x10f  3      OPC=subq_r64_r64    
  addq $0x2, %rax                #  41    0x112  4      OPC=addq_r64_imm8   
  retq                           #  42    0x116  1      OPC=retq            
.L_117:                          #        0x117  0      OPC=<label>         
  cmpb $0x0, 0x3(%rax)           #  43    0x117  4      OPC=cmpb_m8_imm8    
  jne .L_125                     #  44    0x11b  2      OPC=jne_label       
  subq %rdi, %rax                #  45    0x11d  3      OPC=subq_r64_r64    
  addq $0x3, %rax                #  46    0x120  4      OPC=addq_r64_imm8   
  retq                           #  47    0x124  1      OPC=retq            
.L_125:                          #        0x125  0      OPC=<label>         
  cmpb $0x0, 0x4(%rax)           #  48    0x125  4      OPC=cmpb_m8_imm8    
  jne .L_133                     #  49    0x129  2      OPC=jne_label       
  subq %rdi, %rax                #  50    0x12b  3      OPC=subq_r64_r64    
  addq $0x4, %rax                #  51    0x12e  4      OPC=addq_r64_imm8   
  retq                           #  52    0x132  1      OPC=retq            
.L_133:                          #        0x133  0      OPC=<label>         
  cmpb $0x0, 0x5(%rax)           #  53    0x133  4      OPC=cmpb_m8_imm8    
  jne .L_141                     #  54    0x137  2      OPC=jne_label       
  subq %rdi, %rax                #  55    0x139  3      OPC=subq_r64_r64    
  addq $0x5, %rax                #  56    0x13c  4      OPC=addq_r64_imm8   
  retq                           #  57    0x140  1      OPC=retq            
.L_141:                          #        0x141  0      OPC=<label>         
  cmpb $0x0, 0x6(%rax)           #  58    0x141  4      OPC=cmpb_m8_imm8    
  jne .L_14f                     #  59    0x145  2      OPC=jne_label       
  subq %rdi, %rax                #  60    0x147  3      OPC=subq_r64_r64    
  addq $0x6, %rax                #  61    0x14a  4      OPC=addq_r64_imm8   
  retq                           #  62    0x14e  1      OPC=retq            
.L_14f:                          #        0x14f  0      OPC=<label>         
  cmpb $0x0, 0x7(%rax)           #  63    0x14f  4      OPC=cmpb_m8_imm8    
  jne .L_15d                     #  64    0x153  2      OPC=jne_label       
  subq %rdi, %rax                #  65    0x155  3      OPC=subq_r64_r64    
  addq $0x7, %rax                #  66    0x158  4      OPC=addq_r64_imm8   
  retq                           #  67    0x15c  1      OPC=retq            
.L_15d:                          #        0x15d  0      OPC=<label>         
  nop                            #  68    0x15d  1      OPC=nop             
  retq                           #  69    0x15e  1      OPC=retq            
                                                                            
.size func_1, .-func_1

