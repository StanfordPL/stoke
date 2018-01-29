  .text
  .globl main
  .type main, @function

#! file-offset 0xc5
#! rip-offset  0x85
#! capacity    274 bytes

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
  movq $0x4, 0x8(%rsp)   #  10    0x9d   9      OPC=movq_m64_imm32  
.L_a6:                   #        0xa6   0      OPC=<label>         
  callq .L_ab            #  11    0xa6   5      OPC=callq_label     
.L_ab:                   #        0xab   0      OPC=<label>         
  movslq %eax, %rbp      #  12    0xab   3      OPC=movslq_r64_r32  
  leaq 0x20(%rbp), %rax  #  13    0xae   4      OPC=leaq_r64_m16    
  movq %rax, (%rsp)      #  14    0xb2   4      OPC=movq_m64_r64    
  cmpq %rax, %rbp        #  15    0xb6   3      OPC=cmpq_r64_r64    
  jbe .L_165             #  16    0xb9   6      OPC=jbe_label_1     
  jmpq .L_177            #  17    0xbf   5      OPC=jmpq_label_1    
.L_c4:                   #        0xc4   0      OPC=<label>         
  movq %rbx, %rsi        #  18    0xc4   3      OPC=movq_r64_r64    
  movq %rbp, %rdi        #  19    0xc7   3      OPC=movq_r64_r64    
  callq .L_cf            #  20    0xca   5      OPC=callq_label     
.L_cf:                   #        0xcf   0      OPC=<label>         
  movq %rax, %r14        #  21    0xcf   3      OPC=movq_r64_r64    
  movq %rbx, %rsi        #  22    0xd2   3      OPC=movq_r64_r64    
  movq %rbp, %rdi        #  23    0xd5   3      OPC=movq_r64_r64    
  callq .L_dd            #  24    0xd8   5      OPC=callq_label     
.L_dd:                   #        0xdd   0      OPC=<label>         
  movq %rax, %r12        #  25    0xdd   3      OPC=movq_r64_r64    
  movq %rbx, %rsi        #  26    0xe0   3      OPC=movq_r64_r64    
  movq %rbp, %rdi        #  27    0xe3   3      OPC=movq_r64_r64    
  callq .L_eb            #  28    0xe6   5      OPC=callq_label     
.L_eb:                   #        0xeb   0      OPC=<label>         
  movq %rax, %r13        #  29    0xeb   3      OPC=movq_r64_r64    
  subq $0x8, %rsp        #  30    0xee   4      OPC=subq_r64_imm8   
  pushq %rax             #  31    0xf2   1      OPC=pushq_r64_1     
  movq %r12, %r9         #  32    0xf3   3      OPC=movq_r64_r64    
  movq %r14, %r8         #  33    0xf6   3      OPC=movq_r64_r64    
  movq %rbx, %rcx        #  34    0xf9   3      OPC=movq_r64_r64    
  movq %rbp, %rdx        #  35    0xfc   3      OPC=movq_r64_r64    
  movl $0x0, %esi        #  36    0xff   5      OPC=movl_r32_imm32  
  movl $0x1, %edi        #  37    0x104  5      OPC=movl_r32_imm32  
  movl $0x0, %eax        #  38    0x109  5      OPC=movl_r32_imm32  
  callq .L_113           #  39    0x10e  5      OPC=callq_label     
.L_113:                  #        0x113  0      OPC=<label>         
  addq $0x10, %rsp       #  40    0x113  4      OPC=addq_r64_imm8   
  cmpq %r13, %r12        #  41    0x117  3      OPC=cmpq_r64_r64    
  jne .L_140             #  42    0x11a  2      OPC=jne_label       
  cmpq %r12, %r14        #  43    0x11c  3      OPC=cmpq_r64_r64    
  jne .L_140             #  44    0x11f  2      OPC=jne_label       
  movl $0x0, %esi        #  45    0x121  5      OPC=movl_r32_imm32  
  movl $0x1, %edi        #  46    0x126  5      OPC=movl_r32_imm32  
  movl $0x0, %eax        #  47    0x12b  5      OPC=movl_r32_imm32  
  callq .L_135           #  48    0x130  5      OPC=callq_label     
.L_135:                  #        0x135  0      OPC=<label>         
  addq $0x1, %rbx        #  49    0x135  4      OPC=addq_r64_imm8   
  cmpq %r15, %rbx        #  50    0x139  3      OPC=cmpq_r64_r64    
  jbe .L_c4              #  51    0x13c  2      OPC=jbe_label       
  jmpq .L_15b            #  52    0x13e  2      OPC=jmpq_label      
.L_140:                  #        0x140  0      OPC=<label>         
  movl $0x0, %esi        #  53    0x140  5      OPC=movl_r32_imm32  
  movl $0x1, %edi        #  54    0x145  5      OPC=movl_r32_imm32  
  movl $0x0, %eax        #  55    0x14a  5      OPC=movl_r32_imm32  
  callq .L_154           #  56    0x14f  5      OPC=callq_label     
.L_154:                  #        0x154  0      OPC=<label>         
  movl $0x1, %eax        #  57    0x154  5      OPC=movl_r32_imm32  
  jmpq .L_188            #  58    0x159  2      OPC=jmpq_label      
.L_15b:                  #        0x15b  0      OPC=<label>         
  addq $0x1, %rbp        #  59    0x15b  4      OPC=addq_r64_imm8   
  cmpq (%rsp), %rbp      #  60    0x15f  4      OPC=cmpq_r64_m64    
  ja .L_177              #  61    0x163  2      OPC=ja_label        
.L_165:                  #        0x165  0      OPC=<label>         
  leaq 0x20(%rbp), %r15  #  62    0x165  4      OPC=leaq_r64_m16    
  movq %rbp, %rbx        #  63    0x169  3      OPC=movq_r64_r64    
  cmpq %rbp, %r15        #  64    0x16c  3      OPC=cmpq_r64_r64    
  jae .L_c4              #  65    0x16f  6      OPC=jae_label_1     
  jmpq .L_15b            #  66    0x175  2      OPC=jmpq_label      
.L_177:                  #        0x177  0      OPC=<label>         
  subq $0x1, 0x8(%rsp)   #  67    0x177  6      OPC=subq_m64_imm8   
  jne .L_a6              #  68    0x17d  6      OPC=jne_label_1     
  movl $0x0, %eax        #  69    0x183  5      OPC=movl_r32_imm32  
.L_188:                  #        0x188  0      OPC=<label>         
  addq $0x18, %rsp       #  70    0x188  4      OPC=addq_r64_imm8   
  popq %rbx              #  71    0x18c  1      OPC=popq_r64_1      
  popq %rbp              #  72    0x18d  1      OPC=popq_r64_1      
  popq %r12              #  73    0x18e  2      OPC=popq_r64_1      
  popq %r13              #  74    0x190  2      OPC=popq_r64_1      
  popq %r14              #  75    0x192  2      OPC=popq_r64_1      
  popq %r15              #  76    0x194  2      OPC=popq_r64_1      
  retq                   #  77    0x196  1      OPC=retq            
                                                                    
.size main, .-main

