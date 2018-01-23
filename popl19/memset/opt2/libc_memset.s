  .text
  .globl libc_memset
  .type libc_memset, @function

#! file-offset 0x70
#! rip-offset  0x30
#! capacity    257 bytes

# Text                          #  Line  RIP    Bytes  Opcode             
.libc_memset:                   #        0x30   0      OPC=<label>        
  cmpl $0x7, %edx               #  1     0x30   3      OPC=cmpl_r32_imm8  
  movq %rdi, %rax               #  2     0x33   3      OPC=movq_r64_r64   
  movq %rdi, %rcx               #  3     0x36   3      OPC=movq_r64_r64   
  jbe .L_10c                    #  4     0x39   6      OPC=jbe_label_1    
  movzbl %sil, %edi             #  5     0x3f   4      OPC=movzbl_r32_r8  
  movq %rdi, %r8                #  6     0x43   3      OPC=movq_r64_r64   
  movq %rdi, %r9                #  7     0x46   3      OPC=movq_r64_r64   
  shlq $0x8, %r8                #  8     0x49   4      OPC=shlq_r64_imm8  
  orq %rdi, %r8                 #  9     0x4d   3      OPC=orq_r64_r64    
  movq %r8, %rdi                #  10    0x50   3      OPC=movq_r64_r64   
  shlq $0x10, %rdi              #  11    0x53   4      OPC=shlq_r64_imm8  
  orq %rdi, %r8                 #  12    0x57   3      OPC=orq_r64_r64    
  movq %r8, %rdi                #  13    0x5a   3      OPC=movq_r64_r64   
  shlq $0x20, %rdi              #  14    0x5d   4      OPC=shlq_r64_imm8  
  orq %rdi, %r8                 #  15    0x61   3      OPC=orq_r64_r64    
  testb $0x7, %al               #  16    0x64   2      OPC=testb_al_imm8  
  je .L_7f                      #  17    0x66   2      OPC=je_label       
  nop                           #  18    0x68   1      OPC=nop            
  nop                           #  19    0x69   1      OPC=nop            
  nop                           #  20    0x6a   1      OPC=nop            
  nop                           #  21    0x6b   1      OPC=nop            
  nop                           #  22    0x6c   1      OPC=nop            
  nop                           #  23    0x6d   1      OPC=nop            
  nop                           #  24    0x6e   1      OPC=nop            
  nop                           #  25    0x6f   1      OPC=nop            
.L_70:                          #        0x70   0      OPC=<label>        
  movb %r9b, (%rcx)             #  26    0x70   3      OPC=movb_m8_r8     
  addq $0x1, %rcx               #  27    0x73   4      OPC=addq_r64_imm8  
  subl $0x1, %edx               #  28    0x77   3      OPC=subl_r32_imm8  
  testb $0x7, %cl               #  29    0x7a   3      OPC=testb_r8_imm8  
  jne .L_70                     #  30    0x7d   2      OPC=jne_label      
.L_7f:                          #        0x7f   0      OPC=<label>        
  movl %edx, %edi               #  31    0x7f   2      OPC=movl_r32_r32   
  shrl $0x6, %edi               #  32    0x81   3      OPC=shrl_r32_imm8  
  testl %edi, %edi              #  33    0x84   2      OPC=testl_r32_r32  
  je .L_d4                      #  34    0x86   2      OPC=je_label       
  subl $0x1, %edi               #  35    0x88   3      OPC=subl_r32_imm8  
  leaq 0x40(%rcx), %r9          #  36    0x8b   4      OPC=leaq_r64_m16   
  movq %rcx, %r11               #  37    0x8f   3      OPC=movq_r64_r64   
  movq %rdi, %r10               #  38    0x92   3      OPC=movq_r64_r64   
  shlq $0x6, %r10               #  39    0x95   4      OPC=shlq_r64_imm8  
  addq %r9, %r10                #  40    0x99   3      OPC=addq_r64_r64   
  jmpq .L_a4                    #  41    0x9c   2      OPC=jmpq_label     
  xchgw %ax, %ax                #  42    0x9e   2      OPC=xchgw_r16_ax   
.L_a0:                          #        0xa0   0      OPC=<label>        
  addq $0x40, %r9               #  43    0xa0   4      OPC=addq_r64_imm8  
.L_a4:                          #        0xa4   0      OPC=<label>        
  cmpq %r9, %r10                #  44    0xa4   3      OPC=cmpq_r64_r64   
  movq %r8, (%rcx)              #  45    0xa7   3      OPC=movq_m64_r64   
  movq %r8, 0x8(%rcx)           #  46    0xaa   4      OPC=movq_m64_r64   
  movq %r8, 0x10(%rcx)          #  47    0xae   4      OPC=movq_m64_r64   
  movq %r8, 0x18(%rcx)          #  48    0xb2   4      OPC=movq_m64_r64   
  movq %r8, 0x20(%rcx)          #  49    0xb6   4      OPC=movq_m64_r64   
  movq %r8, 0x28(%rcx)          #  50    0xba   4      OPC=movq_m64_r64   
  movq %r8, 0x30(%rcx)          #  51    0xbe   4      OPC=movq_m64_r64   
  movq %r8, 0x38(%rcx)          #  52    0xc2   4      OPC=movq_m64_r64   
  movq %r9, %rcx                #  53    0xc6   3      OPC=movq_r64_r64   
  jne .L_a0                     #  54    0xc9   2      OPC=jne_label      
  shlq $0x6, %rdi               #  55    0xcb   4      OPC=shlq_r64_imm8  
  leaq 0x40(%r11,%rdi,1), %rcx  #  56    0xcf   5      OPC=leaq_r64_m16   
.L_d4:                          #        0xd4   0      OPC=<label>        
  movl %edx, %edi               #  57    0xd4   2      OPC=movl_r32_r32   
  andl $0x3f, %edi              #  58    0xd6   3      OPC=andl_r32_imm8  
  shrl $0x3, %edi               #  59    0xd9   3      OPC=shrl_r32_imm8  
  testl %edi, %edi              #  60    0xdc   2      OPC=testl_r32_r32  
  je .L_109                     #  61    0xde   2      OPC=je_label       
  subl $0x1, %edi               #  62    0xe0   3      OPC=subl_r32_imm8  
  movq %rcx, %r10               #  63    0xe3   3      OPC=movq_r64_r64   
  leaq 0x8(,%rdi,8), %r9        #  64    0xe6   8      OPC=leaq_r64_m16   
  addq %rcx, %r9                #  65    0xee   3      OPC=addq_r64_r64   
  nop                           #  66    0xf1   1      OPC=nop            
  nop                           #  67    0xf2   1      OPC=nop            
  nop                           #  68    0xf3   1      OPC=nop            
  nop                           #  69    0xf4   1      OPC=nop            
  nop                           #  70    0xf5   1      OPC=nop            
  nop                           #  71    0xf6   1      OPC=nop            
  nop                           #  72    0xf7   1      OPC=nop            
.L_f8:                          #        0xf8   0      OPC=<label>        
  movq %r8, (%rcx)              #  73    0xf8   3      OPC=movq_m64_r64   
  addq $0x8, %rcx               #  74    0xfb   4      OPC=addq_r64_imm8  
  cmpq %rcx, %r9                #  75    0xff   3      OPC=cmpq_r64_r64   
  jne .L_f8                     #  76    0x102  2      OPC=jne_label      
  leaq 0x8(%r10,%rdi,8), %rcx   #  77    0x104  5      OPC=leaq_r64_m16   
.L_109:                         #        0x109  0      OPC=<label>        
  andl $0x7, %edx               #  78    0x109  3      OPC=andl_r32_imm8  
.L_10c:                         #        0x10c  0      OPC=<label>        
  testl %edx, %edx              #  79    0x10c  2      OPC=testl_r32_r32  
  je .L_12f                     #  80    0x10e  2      OPC=je_label       
  leaq 0x1(%rcx), %r8           #  81    0x110  4      OPC=leaq_r64_m16   
  subl $0x1, %edx               #  82    0x114  3      OPC=subl_r32_imm8  
  addq %r8, %rdx                #  83    0x117  3      OPC=addq_r64_r64   
  jmpq .L_124                   #  84    0x11a  2      OPC=jmpq_label     
  nop                           #  85    0x11c  1      OPC=nop            
  nop                           #  86    0x11d  1      OPC=nop            
  nop                           #  87    0x11e  1      OPC=nop            
  nop                           #  88    0x11f  1      OPC=nop            
.L_120:                         #        0x120  0      OPC=<label>        
  addq $0x1, %r8                #  89    0x120  4      OPC=addq_r64_imm8  
.L_124:                         #        0x124  0      OPC=<label>        
  cmpq %rdx, %r8                #  90    0x124  3      OPC=cmpq_r64_r64   
  movb %sil, (%rcx)             #  91    0x127  3      OPC=movb_m8_r8     
  movq %r8, %rcx                #  92    0x12a  3      OPC=movq_r64_r64   
  jne .L_120                    #  93    0x12d  2      OPC=jne_label      
.L_12f:                         #        0x12f  0      OPC=<label>        
  nop                           #  94    0x12f  1      OPC=nop            
  retq                          #  95    0x130  1      OPC=retq           
                                                                          
.size libc_memset, .-libc_memset

