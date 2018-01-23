  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function

#! file-offset 0x540
#! rip-offset  0x400540
#! capacity    112 bytes

# Text                       #  Line  RIP       Bytes  Opcode             
.__libc_csu_init:            #        0x400540  0      OPC=<label>        
  pushq %r15                 #  1     0x400540  2      OPC=pushq_r64_1    
  movl %edi, %r15d           #  2     0x400542  3      OPC=movl_r32_r32   
  pushq %r14                 #  3     0x400545  2      OPC=pushq_r64_1    
  movq %rsi, %r14            #  4     0x400547  3      OPC=movq_r64_r64   
  pushq %r13                 #  5     0x40054a  2      OPC=pushq_r64_1    
  movq %rdx, %r13            #  6     0x40054c  3      OPC=movq_r64_r64   
  pushq %r12                 #  7     0x40054f  2      OPC=pushq_r64_1    
  leaq 0x2008b8(%rip), %r12  #  8     0x400551  7      OPC=leaq_r64_m16   
  pushq %rbp                 #  9     0x400558  1      OPC=pushq_r64_1    
  leaq 0x2008b8(%rip), %rbp  #  10    0x400559  7      OPC=leaq_r64_m16   
  pushq %rbx                 #  11    0x400560  1      OPC=pushq_r64_1    
  subq %r12, %rbp            #  12    0x400561  3      OPC=subq_r64_r64   
  xorl %ebx, %ebx            #  13    0x400564  2      OPC=xorl_r32_r32   
  sarq $0x3, %rbp            #  14    0x400566  4      OPC=sarq_r64_imm8  
  subq $0x8, %rsp            #  15    0x40056a  4      OPC=subq_r64_imm8  
  callq ._init               #  16    0x40056e  5      OPC=callq_label    
  testq %rbp, %rbp           #  17    0x400573  3      OPC=testq_r64_r64  
  je .L_400596               #  18    0x400576  2      OPC=je_label       
  nop                        #  19    0x400578  1      OPC=nop            
  nop                        #  20    0x400579  1      OPC=nop            
  nop                        #  21    0x40057a  1      OPC=nop            
  nop                        #  22    0x40057b  1      OPC=nop            
  nop                        #  23    0x40057c  1      OPC=nop            
  nop                        #  24    0x40057d  1      OPC=nop            
  nop                        #  25    0x40057e  1      OPC=nop            
  nop                        #  26    0x40057f  1      OPC=nop            
.L_400580:                   #        0x400580  0      OPC=<label>        
  movq %r13, %rdx            #  27    0x400580  3      OPC=movq_r64_r64   
  movq %r14, %rsi            #  28    0x400583  3      OPC=movq_r64_r64   
  movl %r15d, %edi           #  29    0x400586  3      OPC=movl_r32_r32   
  callq (%r12,%rbx,8)        #  30    0x400589  4      OPC=callq_m64      
  addq $0x1, %rbx            #  31    0x40058d  4      OPC=addq_r64_imm8  
  cmpq %rbp, %rbx            #  32    0x400591  3      OPC=cmpq_r64_r64   
  jne .L_400580              #  33    0x400594  2      OPC=jne_label      
.L_400596:                   #        0x400596  0      OPC=<label>        
  addq $0x8, %rsp            #  34    0x400596  4      OPC=addq_r64_imm8  
  popq %rbx                  #  35    0x40059a  1      OPC=popq_r64_1     
  popq %rbp                  #  36    0x40059b  1      OPC=popq_r64_1     
  popq %r12                  #  37    0x40059c  2      OPC=popq_r64_1     
  popq %r13                  #  38    0x40059e  2      OPC=popq_r64_1     
  popq %r14                  #  39    0x4005a0  2      OPC=popq_r64_1     
  popq %r15                  #  40    0x4005a2  2      OPC=popq_r64_1     
  retq                       #  41    0x4005a4  1      OPC=retq           
  nop                        #  42    0x4005a5  1      OPC=nop            
  nop                        #  43    0x4005a6  1      OPC=nop            
  nop                        #  44    0x4005a7  1      OPC=nop            
  nop                        #  45    0x4005a8  1      OPC=nop            
  nop                        #  46    0x4005a9  1      OPC=nop            
  nop                        #  47    0x4005aa  1      OPC=nop            
  nop                        #  48    0x4005ab  1      OPC=nop            
  nop                        #  49    0x4005ac  1      OPC=nop            
  nop                        #  50    0x4005ad  1      OPC=nop            
  nop                        #  51    0x4005ae  1      OPC=nop            
  nop                        #  52    0x4005af  1      OPC=nop            
                                                                          
.size __libc_csu_init, .-__libc_csu_init

