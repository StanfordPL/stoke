  .text
  .globl main
  .type main, @function

#! file-offset 0xc5
#! rip-offset  0x85
#! capacity    309 bytes

# Text                   #  Line  RIP    Bytes  Opcode              
.main:                   #        0x85   0      OPC=<label>         
  pushq %r15             #  1     0x85   2      OPC=pushq_r64_1     
  pushq %r14             #  2     0x87   2      OPC=pushq_r64_1     
  pushq %r13             #  3     0x89   2      OPC=pushq_r64_1     
  pushq %r12             #  4     0x8b   2      OPC=pushq_r64_1     
  pushq %rbp             #  5     0x8d   1      OPC=pushq_r64_1     
  pushq %rbx             #  6     0x8e   1      OPC=pushq_r64_1     
  subq $0x18, %rsp       #  7     0x8f   4      OPC=subq_r64_imm8   
  movl $0x0, %edi        #  8     0x93   5      OPC=movl_r32_imm32  
  callq .L_9d            #  9     0x98   5      OPC=callq_label     
.L_9d:                   #        0x9d   0      OPC=<label>         
  movq $0x0, (%rsp)      #  10    0x9d   8      OPC=movq_m64_imm32  
.L_a5:                   #        0xa5   0      OPC=<label>         
  testb $0x1, (%rsp)     #  11    0xa5   4      OPC=testb_m8_imm8   
  jne .L_b5              #  12    0xa9   2      OPC=jne_label       
  callq .L_b0            #  13    0xab   5      OPC=callq_label     
.L_b0:                   #        0xb0   0      OPC=<label>         
  movslq %eax, %rbp      #  14    0xb0   3      OPC=movslq_r64_r32  
  jmpq .L_cb             #  15    0xb3   2      OPC=jmpq_label      
.L_b5:                   #        0xb5   0      OPC=<label>         
  callq .L_ba            #  16    0xb5   5      OPC=callq_label     
.L_ba:                   #        0xba   0      OPC=<label>         
  movl %eax, %ebp        #  17    0xba   2      OPC=movl_r32_r32    
  callq .L_c1            #  18    0xbc   5      OPC=callq_label     
.L_c1:                   #        0xc1   0      OPC=<label>         
  shlq $0x20, %rbp       #  19    0xc1   4      OPC=shlq_r64_imm8   
  movslq %eax, %rdx      #  20    0xc5   3      OPC=movslq_r64_r32  
  orq %rdx, %rbp         #  21    0xc8   3      OPC=orq_r64_r64     
.L_cb:                   #        0xcb   0      OPC=<label>         
  leaq 0x8(%rbp), %rax   #  22    0xcb   4      OPC=leaq_r64_m16    
  movq %rax, 0x8(%rsp)   #  23    0xcf   5      OPC=movq_m64_r64    
  cmpq %rax, %rbp        #  24    0xd4   3      OPC=cmpq_r64_r64    
  jb .L_184              #  25    0xd7   6      OPC=jb_label_1      
  jmpq .L_196            #  26    0xdd   5      OPC=jmpq_label_1    
.L_e2:                   #        0xe2   0      OPC=<label>         
  movq %rbx, %rsi        #  27    0xe2   3      OPC=movq_r64_r64    
  movq %rbp, %rdi        #  28    0xe5   3      OPC=movq_r64_r64    
  callq .L_ed            #  29    0xe8   5      OPC=callq_label     
.L_ed:                   #        0xed   0      OPC=<label>         
  movq %rax, %r14        #  30    0xed   3      OPC=movq_r64_r64    
  movq %rbx, %rsi        #  31    0xf0   3      OPC=movq_r64_r64    
  movq %rbp, %rdi        #  32    0xf3   3      OPC=movq_r64_r64    
  callq .L_fb            #  33    0xf6   5      OPC=callq_label     
.L_fb:                   #        0xfb   0      OPC=<label>         
  movq %rax, %r12        #  34    0xfb   3      OPC=movq_r64_r64    
  movq %rbx, %rsi        #  35    0xfe   3      OPC=movq_r64_r64    
  movq %rbp, %rdi        #  36    0x101  3      OPC=movq_r64_r64    
  callq .L_109           #  37    0x104  5      OPC=callq_label     
.L_109:                  #        0x109  0      OPC=<label>         
  movq %rax, %r13        #  38    0x109  3      OPC=movq_r64_r64    
  subq $0x8, %rsp        #  39    0x10c  4      OPC=subq_r64_imm8   
  pushq %rax             #  40    0x110  1      OPC=pushq_r64_1     
  movq %r12, %r9         #  41    0x111  3      OPC=movq_r64_r64    
  movq %r14, %r8         #  42    0x114  3      OPC=movq_r64_r64    
  movq %rbx, %rcx        #  43    0x117  3      OPC=movq_r64_r64    
  movq %rbp, %rdx        #  44    0x11a  3      OPC=movq_r64_r64    
  movl $0x0, %esi        #  45    0x11d  5      OPC=movl_r32_imm32  
  movl $0x1, %edi        #  46    0x122  5      OPC=movl_r32_imm32  
  movl $0x0, %eax        #  47    0x127  5      OPC=movl_r32_imm32  
  callq .L_131           #  48    0x12c  5      OPC=callq_label     
.L_131:                  #        0x131  0      OPC=<label>         
  addq $0x10, %rsp       #  49    0x131  4      OPC=addq_r64_imm8   
  cmpq %r13, %r12        #  50    0x135  3      OPC=cmpq_r64_r64    
  jne .L_15e             #  51    0x138  2      OPC=jne_label       
  cmpq %r12, %r14        #  52    0x13a  3      OPC=cmpq_r64_r64    
  jne .L_15e             #  53    0x13d  2      OPC=jne_label       
  movl $0x0, %esi        #  54    0x13f  5      OPC=movl_r32_imm32  
  movl $0x1, %edi        #  55    0x144  5      OPC=movl_r32_imm32  
  movl $0x0, %eax        #  56    0x149  5      OPC=movl_r32_imm32  
  callq .L_153           #  57    0x14e  5      OPC=callq_label     
.L_153:                  #        0x153  0      OPC=<label>         
  addq $0x1, %rbx        #  58    0x153  4      OPC=addq_r64_imm8   
  cmpq %rbx, %r15        #  59    0x157  3      OPC=cmpq_r64_r64    
  jae .L_e2              #  60    0x15a  2      OPC=jae_label       
  jmpq .L_179            #  61    0x15c  2      OPC=jmpq_label      
.L_15e:                  #        0x15e  0      OPC=<label>         
  movl $0x0, %esi        #  62    0x15e  5      OPC=movl_r32_imm32  
  movl $0x1, %edi        #  63    0x163  5      OPC=movl_r32_imm32  
  movl $0x0, %eax        #  64    0x168  5      OPC=movl_r32_imm32  
  callq .L_172           #  65    0x16d  5      OPC=callq_label     
.L_172:                  #        0x172  0      OPC=<label>         
  movl $0x1, %eax        #  66    0x172  5      OPC=movl_r32_imm32  
  jmpq .L_1ab            #  67    0x177  2      OPC=jmpq_label      
.L_179:                  #        0x179  0      OPC=<label>         
  addq $0x1, %rbp        #  68    0x179  4      OPC=addq_r64_imm8   
  cmpq 0x8(%rsp), %rbp   #  69    0x17d  5      OPC=cmpq_r64_m64    
  je .L_196              #  70    0x182  2      OPC=je_label        
.L_184:                  #        0x184  0      OPC=<label>         
  leaq 0x14(%rbp), %r15  #  71    0x184  4      OPC=leaq_r64_m16    
  movq %rbp, %rbx        #  72    0x188  3      OPC=movq_r64_r64    
  cmpq %rbp, %r15        #  73    0x18b  3      OPC=cmpq_r64_r64    
  jae .L_e2              #  74    0x18e  6      OPC=jae_label_1     
  jmpq .L_179            #  75    0x194  2      OPC=jmpq_label      
.L_196:                  #        0x196  0      OPC=<label>         
  addq $0x1, (%rsp)      #  76    0x196  5      OPC=addq_m64_imm8   
  movq (%rsp), %rax      #  77    0x19b  4      OPC=movq_r64_m64    
  cmpq $0x10, %rax       #  78    0x19f  4      OPC=cmpq_r64_imm8   
  jne .L_a5              #  79    0x1a3  6      OPC=jne_label_1     
  movb $0x0, %al         #  80    0x1a9  2      OPC=movb_r8_imm8    
.L_1ab:                  #        0x1ab  0      OPC=<label>         
  addq $0x18, %rsp       #  81    0x1ab  4      OPC=addq_r64_imm8   
  popq %rbx              #  82    0x1af  1      OPC=popq_r64_1      
  popq %rbp              #  83    0x1b0  1      OPC=popq_r64_1      
  popq %r12              #  84    0x1b1  2      OPC=popq_r64_1      
  popq %r13              #  85    0x1b3  2      OPC=popq_r64_1      
  popq %r14              #  86    0x1b5  2      OPC=popq_r64_1      
  popq %r15              #  87    0x1b7  2      OPC=popq_r64_1      
  retq                   #  88    0x1b9  1      OPC=retq            
                                                                    
.size main, .-main

