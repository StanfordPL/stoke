  .text
  .globl wmemchr
  .type wmemchr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    44 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.wmemchr:            #        0     0      OPC=<label>        
  testq %rdx, %rdx   #  1     0     3      OPC=testq_r64_r64  
  je .L_21           #  2     0x3   2      OPC=je_label       
  xorl %eax, %eax    #  3     0x5   2      OPC=xorl_r32_r32   
  cmpl %esi, (%rdi)  #  4     0x7   2      OPC=cmpl_m32_r32   
  jne .L_14          #  5     0x9   2      OPC=jne_label      
  jmpq .L_28         #  6     0xb   2      OPC=jmpq_label     
  nop                #  7     0xd   1      OPC=nop            
  nop                #  8     0xe   1      OPC=nop            
  nop                #  9     0xf   1      OPC=nop            
.L_10:               #        0x10  0      OPC=<label>        
  cmpl %esi, (%rdi)  #  10    0x10  2      OPC=cmpl_m32_r32   
  je .L_28           #  11    0x12  2      OPC=je_label       
.L_14:               #        0x14  0      OPC=<label>        
  addq $0x1, %rax    #  12    0x14  4      OPC=addq_r64_imm8  
  addq $0x4, %rdi    #  13    0x18  4      OPC=addq_r64_imm8  
  cmpq %rdx, %rax    #  14    0x1c  3      OPC=cmpq_r64_r64   
  jne .L_10          #  15    0x1f  2      OPC=jne_label      
.L_21:               #        0x21  0      OPC=<label>        
  xorl %eax, %eax    #  16    0x21  2      OPC=xorl_r32_r32   
  retq               #  17    0x23  1      OPC=retq           
  nop                #  18    0x24  1      OPC=nop            
  nop                #  19    0x25  1      OPC=nop            
  nop                #  20    0x26  1      OPC=nop            
  nop                #  21    0x27  1      OPC=nop            
.L_28:               #        0x28  0      OPC=<label>        
  movq %rdi, %rax    #  22    0x28  3      OPC=movq_r64_r64   
  retq               #  23    0x2b  1      OPC=retq           
                                                              
.size wmemchr, .-wmemchr

