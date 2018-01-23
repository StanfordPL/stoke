  .text
  .globl my_memchar
  .type my_memchar, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    64 bytes

# Text                         #  Line  RIP   Bytes  Opcode             
.my_memchar:                   #        0     0      OPC=<label>        
  testl %edx, %edx             #  1     0     2      OPC=testl_r32_r32  
  je .L_32                     #  2     0x2   2      OPC=je_label       
  cmpb %sil, (%rdi)            #  3     0x4   3      OPC=cmpb_m8_r8     
  movl %esi, %r8d              #  4     0x7   3      OPC=movl_r32_r32   
  je .L_3a                     #  5     0xa   2      OPC=je_label       
  subl $0x1, %edx              #  6     0xc   3      OPC=subl_r32_imm8  
  leaq 0x1(%rdi), %rcx         #  7     0xf   4      OPC=leaq_r64_m16   
  leaq 0x1(%rdi,%rdx,1), %rdx  #  8     0x13  5      OPC=leaq_r64_m16   
  jmpq .L_2d                   #  9     0x18  2      OPC=jmpq_label     
  nop                          #  10    0x1a  1      OPC=nop            
  nop                          #  11    0x1b  1      OPC=nop            
  nop                          #  12    0x1c  1      OPC=nop            
  nop                          #  13    0x1d  1      OPC=nop            
  nop                          #  14    0x1e  1      OPC=nop            
  nop                          #  15    0x1f  1      OPC=nop            
.L_20:                         #        0x20  0      OPC=<label>        
  movq %rcx, %rax              #  16    0x20  3      OPC=movq_r64_r64   
  addq $0x1, %rcx              #  17    0x23  4      OPC=addq_r64_imm8  
  cmpb %r8b, -0x1(%rcx)        #  18    0x27  4      OPC=cmpb_m8_r8     
  je .L_38                     #  19    0x2b  2      OPC=je_label       
.L_2d:                         #        0x2d  0      OPC=<label>        
  cmpq %rdx, %rcx              #  20    0x2d  3      OPC=cmpq_r64_r64   
  jne .L_20                    #  21    0x30  2      OPC=jne_label      
.L_32:                         #        0x32  0      OPC=<label>        
  xorl %eax, %eax              #  22    0x32  2      OPC=xorl_r32_r32   
  retq                         #  23    0x34  1      OPC=retq           
  nop                          #  24    0x35  1      OPC=nop            
  nop                          #  25    0x36  1      OPC=nop            
  nop                          #  26    0x37  1      OPC=nop            
.L_38:                         #        0x38  0      OPC=<label>        
  nop                          #  27    0x38  1      OPC=nop            
  retq                         #  28    0x39  1      OPC=retq           
.L_3a:                         #        0x3a  0      OPC=<label>        
  movq %rdi, %rax              #  29    0x3a  3      OPC=movq_r64_r64   
  retq                         #  30    0x3d  1      OPC=retq           
  xchgw %ax, %ax               #  31    0x3e  2      OPC=xchgw_r16_ax   
                                                                        
.size my_memchar, .-my_memchar

