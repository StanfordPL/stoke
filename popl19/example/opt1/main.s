  .text
  .globl main
  .type main, @function

#! file-offset 0xa2
#! rip-offset  0x62
#! capacity    220 bytes

# Text                   #  Line  RIP    Bytes  Opcode              
.main:                   #        0x62   0      OPC=<label>         
  pushq %r15             #  1     0x62   2      OPC=pushq_r64_1     
  pushq %r14             #  2     0x64   2      OPC=pushq_r64_1     
  pushq %r13             #  3     0x66   2      OPC=pushq_r64_1     
  pushq %r12             #  4     0x68   2      OPC=pushq_r64_1     
  pushq %rbp             #  5     0x6a   1      OPC=pushq_r64_1     
  pushq %rbx             #  6     0x6b   1      OPC=pushq_r64_1     
  subq $0x8, %rsp        #  7     0x6c   4      OPC=subq_r64_imm8   
  movl $0x0, %ebp        #  8     0x70   5      OPC=movl_r32_imm32  
  jmpq .L_118            #  9     0x75   5      OPC=jmpq_label_1    
.L_7a:                   #        0x7a   0      OPC=<label>         
  movq %rbx, %rsi        #  10    0x7a   3      OPC=movq_r64_r64    
  movq %rbp, %rdi        #  11    0x7d   3      OPC=movq_r64_r64    
  callq .L_85            #  12    0x80   5      OPC=callq_label     
.L_85:                   #        0x85   0      OPC=<label>         
  movq %rax, %r14        #  13    0x85   3      OPC=movq_r64_r64    
  movq %rbx, %rsi        #  14    0x88   3      OPC=movq_r64_r64    
  movq %rbp, %rdi        #  15    0x8b   3      OPC=movq_r64_r64    
  callq .L_93            #  16    0x8e   5      OPC=callq_label     
.L_93:                   #        0x93   0      OPC=<label>         
  movq %rax, %r12        #  17    0x93   3      OPC=movq_r64_r64    
  movq %rbx, %rsi        #  18    0x96   3      OPC=movq_r64_r64    
  movq %rbp, %rdi        #  19    0x99   3      OPC=movq_r64_r64    
  callq .L_a1            #  20    0x9c   5      OPC=callq_label     
.L_a1:                   #        0xa1   0      OPC=<label>         
  movq %rax, %r13        #  21    0xa1   3      OPC=movq_r64_r64    
  subq $0x8, %rsp        #  22    0xa4   4      OPC=subq_r64_imm8   
  pushq %rax             #  23    0xa8   1      OPC=pushq_r64_1     
  movq %r12, %r9         #  24    0xa9   3      OPC=movq_r64_r64    
  movq %r14, %r8         #  25    0xac   3      OPC=movq_r64_r64    
  movq %rbx, %rcx        #  26    0xaf   3      OPC=movq_r64_r64    
  movq %rbp, %rdx        #  27    0xb2   3      OPC=movq_r64_r64    
  movl $0x0, %esi        #  28    0xb5   5      OPC=movl_r32_imm32  
  movl $0x1, %edi        #  29    0xba   5      OPC=movl_r32_imm32  
  movl $0x0, %eax        #  30    0xbf   5      OPC=movl_r32_imm32  
  callq .L_c9            #  31    0xc4   5      OPC=callq_label     
.L_c9:                   #        0xc9   0      OPC=<label>         
  addq $0x10, %rsp       #  32    0xc9   4      OPC=addq_r64_imm8   
  cmpq %r13, %r12        #  33    0xcd   3      OPC=cmpq_r64_r64    
  jne .L_ed              #  34    0xd0   2      OPC=jne_label       
  cmpq %r12, %r14        #  35    0xd2   3      OPC=cmpq_r64_r64    
  jne .L_ed              #  36    0xd5   2      OPC=jne_label       
  movl $0x0, %esi        #  37    0xd7   5      OPC=movl_r32_imm32  
  movl $0x1, %edi        #  38    0xdc   5      OPC=movl_r32_imm32  
  movl $0x0, %eax        #  39    0xe1   5      OPC=movl_r32_imm32  
  callq .L_eb            #  40    0xe6   5      OPC=callq_label     
.L_eb:                   #        0xeb   0      OPC=<label>         
  jmpq .L_101            #  41    0xeb   2      OPC=jmpq_label      
.L_ed:                   #        0xed   0      OPC=<label>         
  movl $0x0, %esi        #  42    0xed   5      OPC=movl_r32_imm32  
  movl $0x1, %edi        #  43    0xf2   5      OPC=movl_r32_imm32  
  movl $0x0, %eax        #  44    0xf7   5      OPC=movl_r32_imm32  
  callq .L_101           #  45    0xfc   5      OPC=callq_label     
.L_101:                  #        0x101  0      OPC=<label>         
  addq $0x1, %rbx        #  46    0x101  4      OPC=addq_r64_imm8   
  cmpq %rbx, %r15        #  47    0x105  3      OPC=cmpq_r64_r64    
  jae .L_7a              #  48    0x108  6      OPC=jae_label_1     
.L_10e:                  #        0x10e  0      OPC=<label>         
  addq $0x1, %rbp        #  49    0x10e  4      OPC=addq_r64_imm8   
  cmpq $0x21, %rbp       #  50    0x112  4      OPC=cmpq_r64_imm8   
  je .L_12a              #  51    0x116  2      OPC=je_label        
.L_118:                  #        0x118  0      OPC=<label>         
  leaq 0x20(%rbp), %r15  #  52    0x118  4      OPC=leaq_r64_m16    
  movq %rbp, %rbx        #  53    0x11c  3      OPC=movq_r64_r64    
  cmpq %rbp, %r15        #  54    0x11f  3      OPC=cmpq_r64_r64    
  jae .L_7a              #  55    0x122  6      OPC=jae_label_1     
  jmpq .L_10e            #  56    0x128  2      OPC=jmpq_label      
.L_12a:                  #        0x12a  0      OPC=<label>         
  movl $0x0, %eax        #  57    0x12a  5      OPC=movl_r32_imm32  
  addq $0x8, %rsp        #  58    0x12f  4      OPC=addq_r64_imm8   
  popq %rbx              #  59    0x133  1      OPC=popq_r64_1      
  popq %rbp              #  60    0x134  1      OPC=popq_r64_1      
  popq %r12              #  61    0x135  2      OPC=popq_r64_1      
  popq %r13              #  62    0x137  2      OPC=popq_r64_1      
  popq %r14              #  63    0x139  2      OPC=popq_r64_1      
  popq %r15              #  64    0x13b  2      OPC=popq_r64_1      
  retq                   #  65    0x13d  1      OPC=retq            
                                                                    
.size main, .-main

