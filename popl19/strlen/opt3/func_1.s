  .text
  .globl func_1
  .type func_1, @function

#! file-offset 0xe0
#! rip-offset  0xa0
#! capacity    229 bytes

# Text                           #  Line  RIP    Bytes  Opcode              
.func_1:                         #        0xa0   0      OPC=<label>         
  testb $0x7, %dil               #  1     0xa0   4      OPC=testb_r8_imm8   
  je .L_160                      #  2     0xa4   6      OPC=je_label_1      
  cmpb $0x0, (%rdi)              #  3     0xaa   3      OPC=cmpb_m8_imm8    
  je .L_170                      #  4     0xad   6      OPC=je_label_1      
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
  je .L_140                      #  16    0xc3   2      OPC=je_label        
.L_c5:                           #        0xc5   0      OPC=<label>         
  addq $0x1, %rax                #  17    0xc5   4      OPC=addq_r64_imm8   
  testb $0x7, %al                #  18    0xc9   2      OPC=testb_al_imm8   
  jne .L_c0                      #  19    0xcb   2      OPC=jne_label       
.L_cd:                           #        0xcd   0      OPC=<label>         
  movq $0xfefefefefefefeff, %r9  #  20    0xcd   10     OPC=movq_r64_imm64  
  movq $0x8080808080808080, %r8  #  21    0xd7   10     OPC=movq_r64_imm64  
  jmpq .L_eb                     #  22    0xe1   2      OPC=jmpq_label      
  nop                            #  23    0xe3   1      OPC=nop             
  nop                            #  24    0xe4   1      OPC=nop             
  nop                            #  25    0xe5   1      OPC=nop             
  nop                            #  26    0xe6   1      OPC=nop             
  nop                            #  27    0xe7   1      OPC=nop             
.L_e8:                           #        0xe8   0      OPC=<label>         
  movq %rcx, %rax                #  28    0xe8   3      OPC=movq_r64_r64    
.L_eb:                           #        0xeb   0      OPC=<label>         
  leaq 0x8(%rax), %rcx           #  29    0xeb   4      OPC=leaq_r64_m16    
  movq -0x8(%rcx), %rdx          #  30    0xef   4      OPC=movq_r64_m64    
  leaq (%rdx,%r9,1), %rsi        #  31    0xf3   4      OPC=leaq_r64_m16    
  notq %rdx                      #  32    0xf7   3      OPC=notq_r64        
  andq %rsi, %rdx                #  33    0xfa   3      OPC=andq_r64_r64    
  testq %r8, %rdx                #  34    0xfd   3      OPC=testq_r64_r64   
  je .L_e8                       #  35    0x100  2      OPC=je_label        
  cmpb $0x0, (%rax)              #  36    0x102  3      OPC=cmpb_m8_imm8    
  je .L_140                      #  37    0x105  2      OPC=je_label        
  cmpb $0x0, 0x1(%rax)           #  38    0x107  4      OPC=cmpb_m8_imm8    
  je .L_148                      #  39    0x10b  2      OPC=je_label        
  cmpb $0x0, 0x2(%rax)           #  40    0x10d  4      OPC=cmpb_m8_imm8    
  je .L_150                      #  41    0x111  2      OPC=je_label        
  cmpb $0x0, 0x3(%rax)           #  42    0x113  4      OPC=cmpb_m8_imm8    
  je .L_168                      #  43    0x117  2      OPC=je_label        
  cmpb $0x0, 0x4(%rax)           #  44    0x119  4      OPC=cmpb_m8_imm8    
  je .L_158                      #  45    0x11d  2      OPC=je_label        
  cmpb $0x0, 0x5(%rax)           #  46    0x11f  4      OPC=cmpb_m8_imm8    
  je .L_173                      #  47    0x123  2      OPC=je_label        
  cmpb $0x0, 0x6(%rax)           #  48    0x125  4      OPC=cmpb_m8_imm8    
  je .L_17b                      #  49    0x129  2      OPC=je_label        
  cmpb $0x0, 0x7(%rax)           #  50    0x12b  4      OPC=cmpb_m8_imm8    
  jne .L_183                     #  51    0x12f  2      OPC=jne_label       
  subq %rdi, %rax                #  52    0x131  3      OPC=subq_r64_r64    
  addq $0x7, %rax                #  53    0x134  4      OPC=addq_r64_imm8   
  retq                           #  54    0x138  1      OPC=retq            
  nop                            #  55    0x139  1      OPC=nop             
  nop                            #  56    0x13a  1      OPC=nop             
  nop                            #  57    0x13b  1      OPC=nop             
  nop                            #  58    0x13c  1      OPC=nop             
  nop                            #  59    0x13d  1      OPC=nop             
  nop                            #  60    0x13e  1      OPC=nop             
  nop                            #  61    0x13f  1      OPC=nop             
.L_140:                          #        0x140  0      OPC=<label>         
  subq %rdi, %rax                #  62    0x140  3      OPC=subq_r64_r64    
  retq                           #  63    0x143  1      OPC=retq            
  nop                            #  64    0x144  1      OPC=nop             
  nop                            #  65    0x145  1      OPC=nop             
  nop                            #  66    0x146  1      OPC=nop             
  nop                            #  67    0x147  1      OPC=nop             
.L_148:                          #        0x148  0      OPC=<label>         
  subq %rdi, %rax                #  68    0x148  3      OPC=subq_r64_r64    
  addq $0x1, %rax                #  69    0x14b  4      OPC=addq_r64_imm8   
  retq                           #  70    0x14f  1      OPC=retq            
.L_150:                          #        0x150  0      OPC=<label>         
  subq %rdi, %rax                #  71    0x150  3      OPC=subq_r64_r64    
  addq $0x2, %rax                #  72    0x153  4      OPC=addq_r64_imm8   
  retq                           #  73    0x157  1      OPC=retq            
.L_158:                          #        0x158  0      OPC=<label>         
  subq %rdi, %rax                #  74    0x158  3      OPC=subq_r64_r64    
  addq $0x4, %rax                #  75    0x15b  4      OPC=addq_r64_imm8   
  retq                           #  76    0x15f  1      OPC=retq            
.L_160:                          #        0x160  0      OPC=<label>         
  movq %rdi, %rax                #  77    0x160  3      OPC=movq_r64_r64    
  jmpq .L_cd                     #  78    0x163  5      OPC=jmpq_label_1    
.L_168:                          #        0x168  0      OPC=<label>         
  subq %rdi, %rax                #  79    0x168  3      OPC=subq_r64_r64    
  addq $0x3, %rax                #  80    0x16b  4      OPC=addq_r64_imm8   
  retq                           #  81    0x16f  1      OPC=retq            
.L_170:                          #        0x170  0      OPC=<label>         
  xorl %eax, %eax                #  82    0x170  2      OPC=xorl_r32_r32    
  retq                           #  83    0x172  1      OPC=retq            
.L_173:                          #        0x173  0      OPC=<label>         
  subq %rdi, %rax                #  84    0x173  3      OPC=subq_r64_r64    
  addq $0x5, %rax                #  85    0x176  4      OPC=addq_r64_imm8   
  retq                           #  86    0x17a  1      OPC=retq            
.L_17b:                          #        0x17b  0      OPC=<label>         
  subq %rdi, %rax                #  87    0x17b  3      OPC=subq_r64_r64    
  addq $0x6, %rax                #  88    0x17e  4      OPC=addq_r64_imm8   
  retq                           #  89    0x182  1      OPC=retq            
.L_183:                          #        0x183  0      OPC=<label>         
  nop                            #  90    0x183  1      OPC=nop             
  retq                           #  91    0x184  1      OPC=retq            
                                                                            
.size func_1, .-func_1

