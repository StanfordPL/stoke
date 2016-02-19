  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    30 bytes

# Text                      #  Line  RIP   Bytes  Opcode             
.wmemset:                   #        0     0      OPC=<label>        
  nop                       #  1     0     1      OPC=nop            
  xorl %ecx, %ecx           #  2     0x1   2      OPC=xorl_r32_r32   
  orl %edi, %edi            #  3     0x3   2      OPC=orl_r32_r32    
  testq %rdx, %rdx          #  4     0x5   3      OPC=testq_r64_r64  
  nop                       #  5     0x8   1      OPC=nop            
  nop                       #  6     0x9   1      OPC=nop            
  nop                       #  7     0xa   1      OPC=nop            
  nop                       #  8     0xb   1      OPC=nop            
  nop                       #  9     0xc   1      OPC=nop            
  nop                       #  10    0xd   1      OPC=nop            
  nop                       #  11    0xe   1      OPC=nop            
  movq %rdi, %rax           #  12    0xf   3      OPC=movq_r64_r64   
  je .L_1c                  #  13    0x12  2      OPC=je_label       
.L_10:                      #        0x14  0      OPC=<label>        
  leal (%rax,%rcx,4), %r8d  #  14    0x14  4      OPC=leal_r32_m32   
  movl %esi, (%r15,%r8,1)   #  15    0x18  4      OPC=movl_m32_r32   
  addq $0x1, %rcx           #  16    0x1c  4      OPC=addq_r64_imm8  
  cmpq %rdx, %rcx           #  17    0x20  3      OPC=cmpq_r64_r64   
  jne .L_10                 #  18    0x23  2      OPC=jne_label      
  nop                       #  19    0x25  1      OPC=nop            
.L_1c:                      #        0x26  0      OPC=<label>        
  retq                      #  20    0x26  1      OPC=retq           
                                                                     
.size wmemset, .-wmemset
