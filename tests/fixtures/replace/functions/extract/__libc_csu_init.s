  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function

#! file-offset 0x5e0
#! rip-offset  0x4005e0
#! capacity    112 bytes

# Text                       #  Line  RIP       Bytes  Opcode             
.__libc_csu_init:            #        0x4005e0  0      OPC=<label>        
  pushq %r15                 #  1     0x4005e0  2      OPC=pushq_r64_1    
  movl %edi, %r15d           #  2     0x4005e2  3      OPC=movl_r32_r32   
  pushq %r14                 #  3     0x4005e5  2      OPC=pushq_r64_1    
  movq %rsi, %r14            #  4     0x4005e7  3      OPC=movq_r64_r64   
  pushq %r13                 #  5     0x4005ea  2      OPC=pushq_r64_1    
  movq %rdx, %r13            #  6     0x4005ec  3      OPC=movq_r64_r64   
  pushq %r12                 #  7     0x4005ef  2      OPC=pushq_r64_1    
  leaq 0x200818(%rip), %r12  #  8     0x4005f1  7      OPC=leaq_r64_m16   
  pushq %rbp                 #  9     0x4005f8  1      OPC=pushq_r64_1    
  leaq 0x200818(%rip), %rbp  #  10    0x4005f9  7      OPC=leaq_r64_m16   
  pushq %rbx                 #  11    0x400600  1      OPC=pushq_r64_1    
  subq %r12, %rbp            #  12    0x400601  3      OPC=subq_r64_r64   
  xorl %ebx, %ebx            #  13    0x400604  2      OPC=xorl_r32_r32   
  sarq $0x3, %rbp            #  14    0x400606  4      OPC=sarq_r64_imm8  
  subq $0x8, %rsp            #  15    0x40060a  4      OPC=subq_r64_imm8  
  callq ._init               #  16    0x40060e  5      OPC=callq_label    
  testq %rbp, %rbp           #  17    0x400613  3      OPC=testq_r64_r64  
  je .L_400636               #  18    0x400616  2      OPC=je_label       
  nop                        #  19    0x400618  1      OPC=nop            
  nop                        #  20    0x400619  1      OPC=nop            
  nop                        #  21    0x40061a  1      OPC=nop            
  nop                        #  22    0x40061b  1      OPC=nop            
  nop                        #  23    0x40061c  1      OPC=nop            
  nop                        #  24    0x40061d  1      OPC=nop            
  nop                        #  25    0x40061e  1      OPC=nop            
  nop                        #  26    0x40061f  1      OPC=nop            
.L_400620:                   #        0x400620  0      OPC=<label>        
  movq %r13, %rdx            #  27    0x400620  3      OPC=movq_r64_r64   
  movq %r14, %rsi            #  28    0x400623  3      OPC=movq_r64_r64   
  movl %r15d, %edi           #  29    0x400626  3      OPC=movl_r32_r32   
  callq (%r12,%rbx,8)        #  30    0x400629  4      OPC=callq_m64      
  addq $0x1, %rbx            #  31    0x40062d  4      OPC=addq_r64_imm8  
  cmpq %rbp, %rbx            #  32    0x400631  3      OPC=cmpq_r64_r64   
  jne .L_400620              #  33    0x400634  2      OPC=jne_label      
.L_400636:                   #        0x400636  0      OPC=<label>        
  addq $0x8, %rsp            #  34    0x400636  4      OPC=addq_r64_imm8  
  popq %rbx                  #  35    0x40063a  1      OPC=popq_r64_1     
  popq %rbp                  #  36    0x40063b  1      OPC=popq_r64_1     
  popq %r12                  #  37    0x40063c  2      OPC=popq_r64_1     
  popq %r13                  #  38    0x40063e  2      OPC=popq_r64_1     
  popq %r14                  #  39    0x400640  2      OPC=popq_r64_1     
  popq %r15                  #  40    0x400642  2      OPC=popq_r64_1     
  retq                       #  41    0x400644  1      OPC=retq           
  nop                        #  42    0x400645  1      OPC=nop            
  nop                        #  43    0x400646  1      OPC=nop            
  nop                        #  44    0x400647  1      OPC=nop            
  nop                        #  45    0x400648  1      OPC=nop            
  nop                        #  46    0x400649  1      OPC=nop            
  nop                        #  47    0x40064a  1      OPC=nop            
  nop                        #  48    0x40064b  1      OPC=nop            
  nop                        #  49    0x40064c  1      OPC=nop            
  nop                        #  50    0x40064d  1      OPC=nop            
  nop                        #  51    0x40064e  1      OPC=nop            
  nop                        #  52    0x40064f  1      OPC=nop            
                                                                          
.size __libc_csu_init, .-__libc_csu_init

