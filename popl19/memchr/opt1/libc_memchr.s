  .text
  .globl libc_memchr
  .type libc_memchr, @function

#! file-offset 0x7e
#! rip-offset  0x3e
#! capacity    239 bytes

# Text                            #  Line  RIP    Bytes  Opcode              
.libc_memchr:                     #        0x3e   0      OPC=<label>         
  movl %esi, %ecx                 #  1     0x3e   2      OPC=movl_r32_r32    
  testl %edx, %edx                #  2     0x40   2      OPC=testl_r32_r32   
  je .L_11b                       #  3     0x42   6      OPC=je_label_1      
  testb $0x7, %dil                #  4     0x48   4      OPC=testb_r8_imm8   
  je .L_70                        #  5     0x4c   2      OPC=je_label        
  cmpb %sil, (%rdi)               #  6     0x4e   3      OPC=cmpb_m8_r8      
  jne .L_5d                       #  7     0x51   2      OPC=jne_label       
  jmpq .L_59                      #  8     0x53   2      OPC=jmpq_label      
.L_55:                            #        0x55   0      OPC=<label>         
  cmpb %cl, (%rdi)                #  9     0x55   2      OPC=cmpb_m8_r8      
  jne .L_5d                       #  10    0x57   2      OPC=jne_label       
.L_59:                            #        0x59   0      OPC=<label>         
  movq %rdi, %rax                 #  11    0x59   3      OPC=movq_r64_r64    
  retq                            #  12    0x5c   1      OPC=retq            
.L_5d:                            #        0x5d   0      OPC=<label>         
  addq $0x1, %rdi                 #  13    0x5d   4      OPC=addq_r64_imm8   
  subl $0x1, %edx                 #  14    0x61   3      OPC=subl_r32_imm8   
  je .L_121                       #  15    0x64   6      OPC=je_label_1      
  testb $0x7, %dil                #  16    0x6a   4      OPC=testb_r8_imm8   
  jne .L_55                       #  17    0x6e   2      OPC=jne_label       
.L_70:                            #        0x70   0      OPC=<label>         
  movzbl %sil, %eax               #  18    0x70   4      OPC=movzbl_r32_r8   
  movl %eax, %r9d                 #  19    0x74   3      OPC=movl_r32_r32    
  shll $0x8, %r9d                 #  20    0x77   4      OPC=shll_r32_imm8   
  orl %r9d, %eax                  #  21    0x7b   3      OPC=orl_r32_r32     
  cltq                            #  22    0x7e   2      OPC=cltq            
  movq %rax, %r9                  #  23    0x80   3      OPC=movq_r64_r64    
  shlq $0x10, %r9                 #  24    0x83   4      OPC=shlq_r64_imm8   
  orq %rax, %r9                   #  25    0x87   3      OPC=orq_r64_r64     
  movq %r9, %rax                  #  26    0x8a   3      OPC=movq_r64_r64    
  shlq $0x20, %rax                #  27    0x8d   4      OPC=shlq_r64_imm8   
  orq %rax, %r9                   #  28    0x91   3      OPC=orq_r64_r64     
  cmpl $0x7, %edx                 #  29    0x94   3      OPC=cmpl_r32_imm8   
  jbe .L_f1                       #  30    0x97   2      OPC=jbe_label       
  movq %r9, %rax                  #  31    0x99   3      OPC=movq_r64_r64    
  xorq (%rdi), %rax               #  32    0x9c   3      OPC=xorq_r64_m64    
  movq $0xfefefefefefefeff, %r8   #  33    0x9f   10     OPC=movq_r64_imm64  
  addq %rax, %r8                  #  34    0xa9   3      OPC=addq_r64_r64    
  notq %rax                       #  35    0xac   3      OPC=notq_r64        
  andq %r8, %rax                  #  36    0xaf   3      OPC=andq_r64_r64    
  movq $0x8080808080808080, %r8   #  37    0xb2   10     OPC=movq_r64_imm64  
  testq %r8, %rax                 #  38    0xbc   3      OPC=testq_r64_r64   
  jne .L_f1                       #  39    0xbf   2      OPC=jne_label       
  movq $0xfefefefefefefeff, %r11  #  40    0xc1   10     OPC=movq_r64_imm64  
  movq %r8, %r10                  #  41    0xcb   3      OPC=movq_r64_r64    
  jmpq .L_e5                      #  42    0xce   2      OPC=jmpq_label      
.L_d0:                            #        0xd0   0      OPC=<label>         
  movq %r9, %rax                  #  43    0xd0   3      OPC=movq_r64_r64    
  xorq (%rdi), %rax               #  44    0xd3   3      OPC=xorq_r64_m64    
  leaq (%rax,%r11,1), %r8         #  45    0xd6   4      OPC=leaq_r64_m16    
  notq %rax                       #  46    0xda   3      OPC=notq_r64        
  andq %r8, %rax                  #  47    0xdd   3      OPC=andq_r64_r64    
  testq %r10, %rax                #  48    0xe0   3      OPC=testq_r64_r64   
  jne .L_f1                       #  49    0xe3   2      OPC=jne_label       
.L_e5:                            #        0xe5   0      OPC=<label>         
  addq $0x8, %rdi                 #  50    0xe5   4      OPC=addq_r64_imm8   
  subl $0x8, %edx                 #  51    0xe9   3      OPC=subl_r32_imm8   
  cmpl $0x7, %edx                 #  52    0xec   3      OPC=cmpl_r32_imm8   
  ja .L_d0                        #  53    0xef   2      OPC=ja_label        
.L_f1:                            #        0xf1   0      OPC=<label>         
  testl %edx, %edx                #  54    0xf1   2      OPC=testl_r32_r32   
  je .L_127                       #  55    0xf3   2      OPC=je_label        
  subl $0x1, %edx                 #  56    0xf5   3      OPC=subl_r32_imm8   
  leaq 0x1(%rdi,%rdx,1), %rax     #  57    0xf8   5      OPC=leaq_r64_m16    
  cmpb %sil, (%rdi)               #  58    0xfd   3      OPC=cmpb_m8_r8      
  jne .L_10c                      #  59    0x100  2      OPC=jne_label       
  jmpq .L_108                     #  60    0x102  2      OPC=jmpq_label      
.L_104:                           #        0x104  0      OPC=<label>         
  cmpb %cl, (%rdi)                #  61    0x104  2      OPC=cmpb_m8_r8      
  jne .L_10c                      #  62    0x106  2      OPC=jne_label       
.L_108:                           #        0x108  0      OPC=<label>         
  movq %rdi, %rax                 #  63    0x108  3      OPC=movq_r64_r64    
  retq                            #  64    0x10b  1      OPC=retq            
.L_10c:                           #        0x10c  0      OPC=<label>         
  addq $0x1, %rdi                 #  65    0x10c  4      OPC=addq_r64_imm8   
  cmpq %rax, %rdi                 #  66    0x110  3      OPC=cmpq_r64_r64    
  jne .L_104                      #  67    0x113  2      OPC=jne_label       
  movl $0x0, %eax                 #  68    0x115  5      OPC=movl_r32_imm32  
  retq                            #  69    0x11a  1      OPC=retq            
.L_11b:                           #        0x11b  0      OPC=<label>         
  movl $0x0, %eax                 #  70    0x11b  5      OPC=movl_r32_imm32  
  retq                            #  71    0x120  1      OPC=retq            
.L_121:                           #        0x121  0      OPC=<label>         
  movl $0x0, %eax                 #  72    0x121  5      OPC=movl_r32_imm32  
  retq                            #  73    0x126  1      OPC=retq            
.L_127:                           #        0x127  0      OPC=<label>         
  movl $0x0, %eax                 #  74    0x127  5      OPC=movl_r32_imm32  
  retq                            #  75    0x12c  1      OPC=retq            
                                                                             
.size libc_memchr, .-libc_memchr

