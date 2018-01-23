  .text
  .globl func_1
  .type func_1, @function

#! file-offset 0xe0
#! rip-offset  0xa0
#! capacity    223 bytes

# Text                           #  Line  RIP    Bytes  Opcode              
.func_1:                         #        0xa0   0      OPC=<label>         
  testb $0x7, %dil               #  1     0xa0   4      OPC=testb_r8_imm8   
  je .L_174                      #  2     0xa4   6      OPC=je_label_1      
  cmpb $0x0, (%rdi)              #  3     0xaa   3      OPC=cmpb_m8_imm8    
  je .L_17c                      #  4     0xad   6      OPC=je_label_1      
  movq %rdi, %rax                #  5     0xb3   3      OPC=movq_r64_r64    
  jmpq .L_c5                     #  6     0xb6   2      OPC=jmpq_label      
  nop                            #  7     0xb8   1      OPC=nop             
  nop                            #  8     0xb9   1      OPC=nop             
  nop                            #  9     0xba   1      OPC=nop             
  nop                            #  10    0xbb   1      OPC=nop             
  nop                            #  11    0xbc   1      OPC=nop             
  nop                            #  12    0xbd   1      OPC=nop             
  nop                            #  13    0xbe   1      OPC=nop             
  nop                            #  14    0xbf   1      OPC=nop             
.L_c0:                           #        0xc0   0      OPC=<label>         
  cmpb $0x0, (%rax)              #  15    0xc0   3      OPC=cmpb_m8_imm8    
  je .L_138                      #  16    0xc3   2      OPC=je_label        
.L_c5:                           #        0xc5   0      OPC=<label>         
  addq $0x1, %rax                #  17    0xc5   4      OPC=addq_r64_imm8   
  testb $0x7, %al                #  18    0xc9   2      OPC=testb_al_imm8   
  jne .L_c0                      #  19    0xcb   2      OPC=jne_label       
.L_cd:                           #        0xcd   0      OPC=<label>         
  movq $0xfefefefefefefeff, %r9  #  20    0xcd   10     OPC=movq_r64_imm64  
  movq $0x8080808080808080, %r8  #  21    0xd7   10     OPC=movq_r64_imm64  
  jmpq .L_115                    #  22    0xe1   2      OPC=jmpq_label      
  nop                            #  23    0xe3   1      OPC=nop             
  nop                            #  24    0xe4   1      OPC=nop             
  nop                            #  25    0xe5   1      OPC=nop             
  nop                            #  26    0xe6   1      OPC=nop             
  nop                            #  27    0xe7   1      OPC=nop             
.L_e8:                           #        0xe8   0      OPC=<label>         
  cmpb $0x0, -0x7(%rcx)          #  28    0xe8   4      OPC=cmpb_m8_imm8    
  je .L_13c                      #  29    0xec   2      OPC=je_label        
  cmpb $0x0, -0x6(%rcx)          #  30    0xee   4      OPC=cmpb_m8_imm8    
  je .L_144                      #  31    0xf2   2      OPC=je_label        
  cmpb $0x0, -0x5(%rcx)          #  32    0xf4   4      OPC=cmpb_m8_imm8    
  je .L_14c                      #  33    0xf8   2      OPC=je_label        
  cmpb $0x0, -0x4(%rcx)          #  34    0xfa   4      OPC=cmpb_m8_imm8    
  je .L_154                      #  35    0xfe   2      OPC=je_label        
  cmpb $0x0, -0x3(%rcx)          #  36    0x100  4      OPC=cmpb_m8_imm8    
  je .L_15c                      #  37    0x104  2      OPC=je_label        
  cmpb $0x0, -0x2(%rcx)          #  38    0x106  4      OPC=cmpb_m8_imm8    
  je .L_164                      #  39    0x10a  2      OPC=je_label        
  cmpb $0x0, -0x1(%rcx)          #  40    0x10c  4      OPC=cmpb_m8_imm8    
  je .L_16c                      #  41    0x110  2      OPC=je_label        
.L_112:                          #        0x112  0      OPC=<label>         
  movq %rcx, %rax                #  42    0x112  3      OPC=movq_r64_r64    
.L_115:                          #        0x115  0      OPC=<label>         
  leaq 0x8(%rax), %rcx           #  43    0x115  4      OPC=leaq_r64_m16    
  movq -0x8(%rcx), %rdx          #  44    0x119  4      OPC=movq_r64_m64    
  leaq (%rdx,%r9,1), %rsi        #  45    0x11d  4      OPC=leaq_r64_m16    
  notq %rdx                      #  46    0x121  3      OPC=notq_r64        
  andq %rsi, %rdx                #  47    0x124  3      OPC=andq_r64_r64    
  testq %r8, %rdx                #  48    0x127  3      OPC=testq_r64_r64   
  je .L_112                      #  49    0x12a  2      OPC=je_label        
  cmpb $0x0, -0x8(%rcx)          #  50    0x12c  4      OPC=cmpb_m8_imm8    
  jne .L_e8                      #  51    0x130  2      OPC=jne_label       
  nop                            #  52    0x132  1      OPC=nop             
  nop                            #  53    0x133  1      OPC=nop             
  nop                            #  54    0x134  1      OPC=nop             
  nop                            #  55    0x135  1      OPC=nop             
  nop                            #  56    0x136  1      OPC=nop             
  nop                            #  57    0x137  1      OPC=nop             
.L_138:                          #        0x138  0      OPC=<label>         
  subq %rdi, %rax                #  58    0x138  3      OPC=subq_r64_r64    
  retq                           #  59    0x13b  1      OPC=retq            
.L_13c:                          #        0x13c  0      OPC=<label>         
  subq %rdi, %rax                #  60    0x13c  3      OPC=subq_r64_r64    
  addq $0x1, %rax                #  61    0x13f  4      OPC=addq_r64_imm8   
  retq                           #  62    0x143  1      OPC=retq            
.L_144:                          #        0x144  0      OPC=<label>         
  subq %rdi, %rax                #  63    0x144  3      OPC=subq_r64_r64    
  addq $0x2, %rax                #  64    0x147  4      OPC=addq_r64_imm8   
  retq                           #  65    0x14b  1      OPC=retq            
.L_14c:                          #        0x14c  0      OPC=<label>         
  subq %rdi, %rax                #  66    0x14c  3      OPC=subq_r64_r64    
  addq $0x3, %rax                #  67    0x14f  4      OPC=addq_r64_imm8   
  retq                           #  68    0x153  1      OPC=retq            
.L_154:                          #        0x154  0      OPC=<label>         
  subq %rdi, %rax                #  69    0x154  3      OPC=subq_r64_r64    
  addq $0x4, %rax                #  70    0x157  4      OPC=addq_r64_imm8   
  retq                           #  71    0x15b  1      OPC=retq            
.L_15c:                          #        0x15c  0      OPC=<label>         
  subq %rdi, %rax                #  72    0x15c  3      OPC=subq_r64_r64    
  addq $0x5, %rax                #  73    0x15f  4      OPC=addq_r64_imm8   
  retq                           #  74    0x163  1      OPC=retq            
.L_164:                          #        0x164  0      OPC=<label>         
  subq %rdi, %rax                #  75    0x164  3      OPC=subq_r64_r64    
  addq $0x6, %rax                #  76    0x167  4      OPC=addq_r64_imm8   
  retq                           #  77    0x16b  1      OPC=retq            
.L_16c:                          #        0x16c  0      OPC=<label>         
  subq %rdi, %rax                #  78    0x16c  3      OPC=subq_r64_r64    
  addq $0x7, %rax                #  79    0x16f  4      OPC=addq_r64_imm8   
  retq                           #  80    0x173  1      OPC=retq            
.L_174:                          #        0x174  0      OPC=<label>         
  movq %rdi, %rax                #  81    0x174  3      OPC=movq_r64_r64    
  jmpq .L_cd                     #  82    0x177  5      OPC=jmpq_label_1    
.L_17c:                          #        0x17c  0      OPC=<label>         
  xorl %eax, %eax                #  83    0x17c  2      OPC=xorl_r32_r32    
  retq                           #  84    0x17e  1      OPC=retq            
                                                                            
.size func_1, .-func_1

