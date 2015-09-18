  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    30 bytes

# Text                      #  Line  RIP   Bytes  Opcode             
.wmemset:                   #        0     0      OPC=<label>        
  xorl %ecx, %ecx           #  1     0     2      OPC=xorl_r32_r32   
  testq %rdx, %rdx          #  2     0x2   3      OPC=testq_r64_r64  
  movq %rdi, %rax           #  3     0x5   3      OPC=movq_r64_r64   
  je .L_1c                  #  4     0x8   2      OPC=je_label       
  nop                       #  5     0xa   1      OPC=nop            
  nop                       #  6     0xb   1      OPC=nop            
  nop                       #  7     0xc   1      OPC=nop            
  nop                       #  8     0xd   1      OPC=nop            
  nop                       #  9     0xe   1      OPC=nop            
  nop                       #  10    0xf   1      OPC=nop            
.L_10:                      #        0x10  0      OPC=<label>        
  movl %esi, (%rax,%rcx,4)  #  11    0x10  3      OPC=movl_m32_r32   
  addq $0x1, %rcx           #  12    0x13  4      OPC=addq_r64_imm8  
  cmpq %rdx, %rcx           #  13    0x17  3      OPC=cmpq_r64_r64   
  jne .L_10                 #  14    0x1a  2      OPC=jne_label      
.L_1c:                      #        0x1c  0      OPC=<label>        
  retq                      #  15    0x1c  1      OPC=retq           
  nop                       #  16    0x1d  1      OPC=nop            
                                                                     
.size wmemset, .-wmemset

