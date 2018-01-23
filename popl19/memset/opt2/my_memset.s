  .text
  .globl my_memset
  .type my_memset, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                         #  Line  RIP   Bytes  Opcode             
.my_memset:                    #        0     0      OPC=<label>        
  testl %edx, %edx             #  1     0     2      OPC=testl_r32_r32  
  movq %rdi, %rax              #  2     0x2   3      OPC=movq_r64_r64   
  je .L_24                     #  3     0x5   2      OPC=je_label       
  subl $0x1, %edx              #  4     0x7   3      OPC=subl_r32_imm8  
  movq %rdi, %rcx              #  5     0xa   3      OPC=movq_r64_r64   
  leaq 0x1(%rdi,%rdx,1), %rdx  #  6     0xd   5      OPC=leaq_r64_m16   
  nop                          #  7     0x12  1      OPC=nop            
  nop                          #  8     0x13  1      OPC=nop            
  nop                          #  9     0x14  1      OPC=nop            
  nop                          #  10    0x15  1      OPC=nop            
  nop                          #  11    0x16  1      OPC=nop            
  nop                          #  12    0x17  1      OPC=nop            
.L_18:                         #        0x18  0      OPC=<label>        
  movb %sil, (%rcx)            #  13    0x18  3      OPC=movb_m8_r8     
  addq $0x1, %rcx              #  14    0x1b  4      OPC=addq_r64_imm8  
  cmpq %rdx, %rcx              #  15    0x1f  3      OPC=cmpq_r64_r64   
  jne .L_18                    #  16    0x22  2      OPC=jne_label      
.L_24:                         #        0x24  0      OPC=<label>        
  nop                          #  17    0x24  1      OPC=nop            
  retq                         #  18    0x25  1      OPC=retq           
  nop                          #  19    0x26  1      OPC=nop            
  nop                          #  20    0x27  1      OPC=nop            
  nop                          #  21    0x28  1      OPC=nop            
  nop                          #  22    0x29  1      OPC=nop            
  nop                          #  23    0x2a  1      OPC=nop            
  nop                          #  24    0x2b  1      OPC=nop            
  nop                          #  25    0x2c  1      OPC=nop            
  nop                          #  26    0x2d  1      OPC=nop            
  nop                          #  27    0x2e  1      OPC=nop            
  nop                          #  28    0x2f  1      OPC=nop            
                                                                        
.size my_memset, .-my_memset

