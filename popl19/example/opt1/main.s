  .text
  .globl main
  .type main, @function

#! file-offset 0xc5
#! rip-offset  0x85
#! capacity    220 bytes

# Text                   #  Line  RIP    Bytes  Opcode              
.main:                   #        0x85   0      OPC=<label>         
  pushq %r15             #  1     0x85   2      OPC=pushq_r64_1     
  pushq %r14             #  2     0x87   2      OPC=pushq_r64_1     
  pushq %r13             #  3     0x89   2      OPC=pushq_r64_1     
  pushq %r12             #  4     0x8b   2      OPC=pushq_r64_1     
  pushq %rbp             #  5     0x8d   1      OPC=pushq_r64_1     
  pushq %rbx             #  6     0x8e   1      OPC=pushq_r64_1     
  subq $0x8, %rsp        #  7     0x8f   4      OPC=subq_r64_imm8   
  movl $0x0, %ebp        #  8     0x93   5      OPC=movl_r32_imm32  
  jmpq .L_13b            #  9     0x98   5      OPC=jmpq_label_1    
.L_9d:                   #        0x9d   0      OPC=<label>         
  movq %rbx, %rsi        #  10    0x9d   3      OPC=movq_r64_r64    
  movq %rbp, %rdi        #  11    0xa0   3      OPC=movq_r64_r64    
  callq .L_a8            #  12    0xa3   5      OPC=callq_label     
.L_a8:                   #        0xa8   0      OPC=<label>         
  movq %rax, %r14        #  13    0xa8   3      OPC=movq_r64_r64    
  movq %rbx, %rsi        #  14    0xab   3      OPC=movq_r64_r64    
  movq %rbp, %rdi        #  15    0xae   3      OPC=movq_r64_r64    
  callq .L_b6            #  16    0xb1   5      OPC=callq_label     
.L_b6:                   #        0xb6   0      OPC=<label>         
  movq %rax, %r12        #  17    0xb6   3      OPC=movq_r64_r64    
  movq %rbx, %rsi        #  18    0xb9   3      OPC=movq_r64_r64    
  movq %rbp, %rdi        #  19    0xbc   3      OPC=movq_r64_r64    
  callq .L_c4            #  20    0xbf   5      OPC=callq_label     
.L_c4:                   #        0xc4   0      OPC=<label>         
  movq %rax, %r13        #  21    0xc4   3      OPC=movq_r64_r64    
  subq $0x8, %rsp        #  22    0xc7   4      OPC=subq_r64_imm8   
  pushq %rax             #  23    0xcb   1      OPC=pushq_r64_1     
  movq %r12, %r9         #  24    0xcc   3      OPC=movq_r64_r64    
  movq %r14, %r8         #  25    0xcf   3      OPC=movq_r64_r64    
  movq %rbx, %rcx        #  26    0xd2   3      OPC=movq_r64_r64    
  movq %rbp, %rdx        #  27    0xd5   3      OPC=movq_r64_r64    
  movl $0x0, %esi        #  28    0xd8   5      OPC=movl_r32_imm32  
  movl $0x1, %edi        #  29    0xdd   5      OPC=movl_r32_imm32  
  movl $0x0, %eax        #  30    0xe2   5      OPC=movl_r32_imm32  
  callq .L_ec            #  31    0xe7   5      OPC=callq_label     
.L_ec:                   #        0xec   0      OPC=<label>         
  addq $0x10, %rsp       #  32    0xec   4      OPC=addq_r64_imm8   
  cmpq %r13, %r12        #  33    0xf0   3      OPC=cmpq_r64_r64    
  jne .L_110             #  34    0xf3   2      OPC=jne_label       
  cmpq %r12, %r14        #  35    0xf5   3      OPC=cmpq_r64_r64    
  jne .L_110             #  36    0xf8   2      OPC=jne_label       
  movl $0x0, %esi        #  37    0xfa   5      OPC=movl_r32_imm32  
  movl $0x1, %edi        #  38    0xff   5      OPC=movl_r32_imm32  
  movl $0x0, %eax        #  39    0x104  5      OPC=movl_r32_imm32  
  callq .L_10e           #  40    0x109  5      OPC=callq_label     
.L_10e:                  #        0x10e  0      OPC=<label>         
  jmpq .L_124            #  41    0x10e  2      OPC=jmpq_label      
.L_110:                  #        0x110  0      OPC=<label>         
  movl $0x0, %esi        #  42    0x110  5      OPC=movl_r32_imm32  
  movl $0x1, %edi        #  43    0x115  5      OPC=movl_r32_imm32  
  movl $0x0, %eax        #  44    0x11a  5      OPC=movl_r32_imm32  
  callq .L_124           #  45    0x11f  5      OPC=callq_label     
.L_124:                  #        0x124  0      OPC=<label>         
  addq $0x1, %rbx        #  46    0x124  4      OPC=addq_r64_imm8   
  cmpq %rbx, %r15        #  47    0x128  3      OPC=cmpq_r64_r64    
  jae .L_9d              #  48    0x12b  6      OPC=jae_label_1     
.L_131:                  #        0x131  0      OPC=<label>         
  addq $0x1, %rbp        #  49    0x131  4      OPC=addq_r64_imm8   
  cmpq $0x21, %rbp       #  50    0x135  4      OPC=cmpq_r64_imm8   
  je .L_14d              #  51    0x139  2      OPC=je_label        
.L_13b:                  #        0x13b  0      OPC=<label>         
  leaq 0x20(%rbp), %r15  #  52    0x13b  4      OPC=leaq_r64_m16    
  movq %rbp, %rbx        #  53    0x13f  3      OPC=movq_r64_r64    
  cmpq %rbp, %r15        #  54    0x142  3      OPC=cmpq_r64_r64    
  jae .L_9d              #  55    0x145  6      OPC=jae_label_1     
  jmpq .L_131            #  56    0x14b  2      OPC=jmpq_label      
.L_14d:                  #        0x14d  0      OPC=<label>         
  movl $0x0, %eax        #  57    0x14d  5      OPC=movl_r32_imm32  
  addq $0x8, %rsp        #  58    0x152  4      OPC=addq_r64_imm8   
  popq %rbx              #  59    0x156  1      OPC=popq_r64_1      
  popq %rbp              #  60    0x157  1      OPC=popq_r64_1      
  popq %r12              #  61    0x158  2      OPC=popq_r64_1      
  popq %r13              #  62    0x15a  2      OPC=popq_r64_1      
  popq %r14              #  63    0x15c  2      OPC=popq_r64_1      
  popq %r15              #  64    0x15e  2      OPC=popq_r64_1      
  retq                   #  65    0x160  1      OPC=retq            
                                                                    
.size main, .-main

