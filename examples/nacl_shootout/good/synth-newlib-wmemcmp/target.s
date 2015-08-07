  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    61 bytes

# Text                          #  Line  RIP   Bytes  Opcode             
.wmemcmp:                       #        0     0      OPC=<label>        
  testq %rdx, %rdx              #  1     0     3      OPC=testq_r64_r64  
  je .L_2d                      #  2     0x3   2      OPC=je_label       
  leal (%rdi), %r8d
  movl (%r15, %r8), %r8d             #  3     0x5   3      OPC=movl_r32_m32   
  leal (%rsi), %ecx
  movl (%r15, %rcx), %ecx             #  4     0x8   2      OPC=movl_r32_m32   
  cmpl %ecx, %r8d               #  5     0xa   3      OPC=cmpl_r32_r32   
  jne .L_30                     #  6     0xd   2      OPC=jne_label      
  xorl %eax, %eax               #  7     0xf   2      OPC=xorl_r32_r32   
  jmpq .L_24                    #  8     0x11  2      OPC=jmpq_label     
  nop                           #  9     0x13  1      OPC=nop            
  nop                           #  10    0x14  1      OPC=nop            
  nop                           #  11    0x15  1      OPC=nop            
  nop                           #  12    0x16  1      OPC=nop            
  nop                           #  13    0x17  1      OPC=nop            
.L_18:                          #        0x18  0      OPC=<label>        
  leal (%rdi,%rax,4), %r8d
  movl (%r15,%r8), %r8d      #  14    0x18  4      OPC=movl_r32_m32   
  leal (%rsi,%rax,4), %ecx
  movl (%r15,%r8), %ecx      #  15    0x1c  3      OPC=movl_r32_m32   
  cmpl %ecx, %r8d               #  16    0x1f  3      OPC=cmpl_r32_r32   
  jne .L_30                     #  17    0x22  2      OPC=jne_label      
.L_24:                          #        0x24  0      OPC=<label>        
  addq $0x1, %rax               #  18    0x24  4      OPC=addq_r64_imm8  
  cmpq %rdx, %rax               #  19    0x28  3      OPC=cmpq_r64_r64   
  jne .L_18                     #  20    0x2b  2      OPC=jne_label      
.L_2d:                          #        0x2d  0      OPC=<label>        
  xorl %eax, %eax               #  21    0x2d  2      OPC=xorl_r32_r32   
  retq                          #  22    0x2f  1      OPC=retq           
.L_30:                          #        0x30  0      OPC=<label>        
  xorl %eax, %eax               #  23    0x30  2      OPC=xorl_r32_r32   
  cmpl %ecx, %r8d               #  24    0x32  3      OPC=cmpl_r32_r32   
  setg %al                      #  25    0x35  3      OPC=setg_r8        
  leal -0x1(%rax,%rax,1), %eax  #  26    0x38  4      OPC=leal_r32_m16   
  retq                          #  27    0x3c  1      OPC=retq           
                                                                         
.size wmemcmp, .-wmemcmp

