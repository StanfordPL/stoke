  .text
  .globl my_memset
  .type my_memset, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    32 bytes

# Text                         #  Line  RIP   Bytes  Opcode             
.my_memset:                    #        0     0      OPC=<label>        
  movq %rdi, %rax              #  1     0     3      OPC=movq_r64_r64   
  testl %edx, %edx             #  2     0x3   2      OPC=testl_r32_r32  
  je .L_1e                     #  3     0x5   2      OPC=je_label       
  movq %rdi, %rcx              #  4     0x7   3      OPC=movq_r64_r64   
  subl $0x1, %edx              #  5     0xa   3      OPC=subl_r32_imm8  
  leaq 0x1(%rdi,%rdx,1), %rdx  #  6     0xd   5      OPC=leaq_r64_m16   
.L_12:                         #        0x12  0      OPC=<label>        
  movb %sil, (%rcx)            #  7     0x12  3      OPC=movb_m8_r8     
  addq $0x1, %rcx              #  8     0x15  4      OPC=addq_r64_imm8  
  cmpq %rdx, %rcx              #  9     0x19  3      OPC=cmpq_r64_r64   
  jne .L_12                    #  10    0x1c  2      OPC=jne_label      
.L_1e:                         #        0x1e  0      OPC=<label>        
  nop                          #  11    0x1e  1      OPC=nop            
  retq                         #  12    0x1f  1      OPC=retq           
                                                                        
.size my_memset, .-my_memset

