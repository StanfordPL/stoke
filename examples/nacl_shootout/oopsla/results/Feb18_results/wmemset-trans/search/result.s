  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    30 bytes

# Text                      #  Line  RIP   Bytes  Opcode             
.wmemset:                   #        0     0      OPC=<label>        
  xorl %ecx, %ecx           #  1     0     2      OPC=xorl_r32_r32   
  nop                       #  2     0x2   1      OPC=nop            
  nop                       #  3     0x3   1      OPC=nop            
  nop                       #  4     0x4   1      OPC=nop            
  nop                       #  5     0x5   1      OPC=nop            
  nop                       #  6     0x6   1      OPC=nop            
  movl %edi, %eax           #  7     0x7   2      OPC=movl_r32_r32   
  testq %rdx, %rdx          #  8     0x9   3      OPC=testq_r64_r64  
  je .L_1c                  #  9     0xc   2      OPC=je_label       
  nop                       #  10    0xe   1      OPC=nop            
.L_10:                      #        0xf   0      OPC=<label>        
  leal (%rax,%rcx,4), %r8d  #  11    0xf   4      OPC=leal_r32_m16   
  movl %esi, (%r15,%r8,1)   #  12    0x13  4      OPC=movl_m32_r32   
  addq $0x1, %rcx           #  13    0x17  4      OPC=addq_r64_imm8  
  cmpq %rdx, %rcx           #  14    0x1b  3      OPC=cmpq_r64_r64   
  jne .L_10                 #  15    0x1e  2      OPC=jne_label      
.L_1c:                      #        0x20  0      OPC=<label>        
  retq                      #  16    0x20  1      OPC=retq           
                                                                     
.size wmemset, .-wmemset
