  .text
  .globl libc_memchr
  .type libc_memchr, @function

#! file-offset 0x80
#! rip-offset  0x40
#! capacity    236 bytes

# Text                            #  Line  RIP    Bytes  Opcode              
.libc_memchr:                     #        0x40   0      OPC=<label>         
  testl %edx, %edx                #  1     0x40   2      OPC=testl_r32_r32   
  movl %esi, %ecx                 #  2     0x42   2      OPC=movl_r32_r32    
  je .L_6b                        #  3     0x44   2      OPC=je_label        
  testb $0x7, %dil                #  4     0x46   4      OPC=testb_r8_imm8   
  je .L_78                        #  5     0x4a   2      OPC=je_label        
  cmpb %sil, (%rdi)               #  6     0x4c   3      OPC=cmpb_m8_r8      
  jne .L_62                       #  7     0x4f   2      OPC=jne_label       
  jmpq .L_70                      #  8     0x51   2      OPC=jmpq_label      
  nop                             #  9     0x53   1      OPC=nop             
  nop                             #  10    0x54   1      OPC=nop             
  nop                             #  11    0x55   1      OPC=nop             
  nop                             #  12    0x56   1      OPC=nop             
  nop                             #  13    0x57   1      OPC=nop             
.L_58:                            #        0x58   0      OPC=<label>         
  testb $0x7, %dil                #  14    0x58   4      OPC=testb_r8_imm8   
  je .L_78                        #  15    0x5c   2      OPC=je_label        
  cmpb %cl, (%rdi)                #  16    0x5e   2      OPC=cmpb_m8_r8      
  je .L_70                        #  17    0x60   2      OPC=je_label        
.L_62:                            #        0x62   0      OPC=<label>         
  addq $0x1, %rdi                 #  18    0x62   4      OPC=addq_r64_imm8   
  subl $0x1, %edx                 #  19    0x66   3      OPC=subl_r32_imm8   
  jne .L_58                       #  20    0x69   2      OPC=jne_label       
.L_6b:                            #        0x6b   0      OPC=<label>         
  xorl %eax, %eax                 #  21    0x6b   2      OPC=xorl_r32_r32    
  retq                            #  22    0x6d   1      OPC=retq            
  xchgw %ax, %ax                  #  23    0x6e   2      OPC=xchgw_r16_ax    
.L_70:                            #        0x70   0      OPC=<label>         
  movq %rdi, %rax                 #  24    0x70   3      OPC=movq_r64_r64    
  retq                            #  25    0x73   1      OPC=retq            
  nop                             #  26    0x74   1      OPC=nop             
  nop                             #  27    0x75   1      OPC=nop             
  nop                             #  28    0x76   1      OPC=nop             
  nop                             #  29    0x77   1      OPC=nop             
.L_78:                            #        0x78   0      OPC=<label>         
  movzbl %sil, %eax               #  30    0x78   4      OPC=movzbl_r32_r8   
  movl %eax, %r9d                 #  31    0x7c   3      OPC=movl_r32_r32    
  shll $0x8, %r9d                 #  32    0x7f   4      OPC=shll_r32_imm8   
  orl %r9d, %eax                  #  33    0x83   3      OPC=orl_r32_r32     
  cltq                            #  34    0x86   2      OPC=cltq            
  movq %rax, %r9                  #  35    0x88   3      OPC=movq_r64_r64    
  shlq $0x10, %r9                 #  36    0x8b   4      OPC=shlq_r64_imm8   
  orq %rax, %r9                   #  37    0x8f   3      OPC=orq_r64_r64     
  movq %r9, %rax                  #  38    0x92   3      OPC=movq_r64_r64    
  shlq $0x20, %rax                #  39    0x95   4      OPC=shlq_r64_imm8   
  orq %rax, %r9                   #  40    0x99   3      OPC=orq_r64_r64     
  cmpl $0x7, %edx                 #  41    0x9c   3      OPC=cmpl_r32_imm8   
  jbe .L_100                      #  42    0x9f   2      OPC=jbe_label       
  movq %r9, %rax                  #  43    0xa1   3      OPC=movq_r64_r64    
  xorq (%rdi), %rax               #  44    0xa4   3      OPC=xorq_r64_m64    
  movq $0xfefefefefefefeff, %r11  #  45    0xa7   10     OPC=movq_r64_imm64  
  movq $0x8080808080808080, %r10  #  46    0xb1   10     OPC=movq_r64_imm64  
  leaq (%rax,%r11,1), %r8         #  47    0xbb   4      OPC=leaq_r64_m16    
  notq %rax                       #  48    0xbf   3      OPC=notq_r64        
  andq %r8, %rax                  #  49    0xc2   3      OPC=andq_r64_r64    
  testq %r10, %rax                #  50    0xc5   3      OPC=testq_r64_r64   
  je .L_e5                        #  51    0xc8   2      OPC=je_label        
  jmpq .L_100                     #  52    0xca   2      OPC=jmpq_label      
  nop                             #  53    0xcc   1      OPC=nop             
  nop                             #  54    0xcd   1      OPC=nop             
  nop                             #  55    0xce   1      OPC=nop             
  nop                             #  56    0xcf   1      OPC=nop             
.L_d0:                            #        0xd0   0      OPC=<label>         
  movq %r9, %rax                  #  57    0xd0   3      OPC=movq_r64_r64    
  xorq (%rdi), %rax               #  58    0xd3   3      OPC=xorq_r64_m64    
  leaq (%rax,%r11,1), %r8         #  59    0xd6   4      OPC=leaq_r64_m16    
  notq %rax                       #  60    0xda   3      OPC=notq_r64        
  andq %r8, %rax                  #  61    0xdd   3      OPC=andq_r64_r64    
  testq %r10, %rax                #  62    0xe0   3      OPC=testq_r64_r64   
  jne .L_100                      #  63    0xe3   2      OPC=jne_label       
.L_e5:                            #        0xe5   0      OPC=<label>         
  subl $0x8, %edx                 #  64    0xe5   3      OPC=subl_r32_imm8   
  addq $0x8, %rdi                 #  65    0xe8   4      OPC=addq_r64_imm8   
  cmpl $0x7, %edx                 #  66    0xec   3      OPC=cmpl_r32_imm8   
  ja .L_d0                        #  67    0xef   2      OPC=ja_label        
  testl %edx, %edx                #  68    0xf1   2      OPC=testl_r32_r32   
  je .L_6b                        #  69    0xf3   6      OPC=je_label_1      
  nop                             #  70    0xf9   1      OPC=nop             
  nop                             #  71    0xfa   1      OPC=nop             
  nop                             #  72    0xfb   1      OPC=nop             
  nop                             #  73    0xfc   1      OPC=nop             
  nop                             #  74    0xfd   1      OPC=nop             
  nop                             #  75    0xfe   1      OPC=nop             
  nop                             #  76    0xff   1      OPC=nop             
.L_100:                           #        0x100  0      OPC=<label>         
  subl $0x1, %edx                 #  77    0x100  3      OPC=subl_r32_imm8   
  cmpb %sil, (%rdi)               #  78    0x103  3      OPC=cmpb_m8_r8      
  leaq 0x1(%rdi,%rdx,1), %rax     #  79    0x106  5      OPC=leaq_r64_m16    
  jne .L_120                      #  80    0x10b  2      OPC=jne_label       
  jmpq .L_70                      #  81    0x10d  5      OPC=jmpq_label_1    
  nop                             #  82    0x112  1      OPC=nop             
  nop                             #  83    0x113  1      OPC=nop             
  nop                             #  84    0x114  1      OPC=nop             
  nop                             #  85    0x115  1      OPC=nop             
  nop                             #  86    0x116  1      OPC=nop             
  nop                             #  87    0x117  1      OPC=nop             
.L_118:                           #        0x118  0      OPC=<label>         
  cmpb %cl, (%rdi)                #  88    0x118  2      OPC=cmpb_m8_r8      
  je .L_70                        #  89    0x11a  6      OPC=je_label_1      
.L_120:                           #        0x120  0      OPC=<label>         
  addq $0x1, %rdi                 #  90    0x120  4      OPC=addq_r64_imm8   
  cmpq %rax, %rdi                 #  91    0x124  3      OPC=cmpq_r64_r64    
  jne .L_118                      #  92    0x127  2      OPC=jne_label       
  xorl %eax, %eax                 #  93    0x129  2      OPC=xorl_r32_r32    
  retq                            #  94    0x12b  1      OPC=retq            
                                                                             
.size libc_memchr, .-libc_memchr

