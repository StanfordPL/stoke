  .text
  .globl my_memchar
  .type my_memchar, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    62 bytes

# Text                         #  Line  RIP   Bytes  Opcode              
.my_memchar:                   #        0     0      OPC=<label>         
  testl %edx, %edx             #  1     0     2      OPC=testl_r32_r32   
  je .L_38                     #  2     0x2   2      OPC=je_label        
  movl %esi, %r8d              #  3     0x4   3      OPC=movl_r32_r32    
  cmpb %sil, (%rdi)            #  4     0x7   3      OPC=cmpb_m8_r8      
  jne .L_21                    #  5     0xa   2      OPC=jne_label       
  jmpq .L_1d                   #  6     0xc   2      OPC=jmpq_label      
.L_e:                          #        0xe   0      OPC=<label>         
  movq %rcx, %rax              #  7     0xe   3      OPC=movq_r64_r64    
  addq $0x1, %rcx              #  8     0x11  4      OPC=addq_r64_imm8   
  cmpb %r8b, -0x1(%rcx)        #  9     0x15  4      OPC=cmpb_m8_r8      
  jne .L_2d                    #  10    0x19  2      OPC=jne_label       
  nop                          #  11    0x1b  1      OPC=nop             
  retq                         #  12    0x1c  1      OPC=retq            
.L_1d:                         #        0x1d  0      OPC=<label>         
  movq %rdi, %rax              #  13    0x1d  3      OPC=movq_r64_r64    
  retq                         #  14    0x20  1      OPC=retq            
.L_21:                         #        0x21  0      OPC=<label>         
  leaq 0x1(%rdi), %rcx         #  15    0x21  4      OPC=leaq_r64_m16    
  subl $0x1, %edx              #  16    0x25  3      OPC=subl_r32_imm8   
  leaq 0x1(%rdi,%rdx,1), %rdx  #  17    0x28  5      OPC=leaq_r64_m16    
.L_2d:                         #        0x2d  0      OPC=<label>         
  cmpq %rdx, %rcx              #  18    0x2d  3      OPC=cmpq_r64_r64    
  jne .L_e                     #  19    0x30  2      OPC=jne_label       
  movl $0x0, %eax              #  20    0x32  5      OPC=movl_r32_imm32  
  retq                         #  21    0x37  1      OPC=retq            
.L_38:                         #        0x38  0      OPC=<label>         
  movl $0x0, %eax              #  22    0x38  5      OPC=movl_r32_imm32  
  retq                         #  23    0x3d  1      OPC=retq            
                                                                         
.size my_memchar, .-my_memchar

