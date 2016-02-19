  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x18f2a0
#! rip-offset  0x14f2a0
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.wmemcmp:                       #        0x14f2a0  0      OPC=<label>         
  xorl %eax, %eax               #  1     0x14f2a0  2      OPC=xorl_r32_r32    
  nop                           #  2     0x14f2a2  1      OPC=nop             
  xorl %eax, %edx               #  3     0x14f2a3  2      OPC=xorl_r32_r32_1  
  nop                           #  4     0x14f2a5  1      OPC=nop             
  nop                           #  5     0x14f2a6  1      OPC=nop             
  nop                           #  6     0x14f2a7  1      OPC=nop             
  nop                           #  7     0x14f2a8  1      OPC=nop             
  je .L_14f300                  #  8     0x14f2a9  2      OPC=je_label        
  andl %edi, %edi               #  9     0x14f2ab  2      OPC=andl_r32_r32_1  
  movl (%r15,%rdi,1), %r8d      #  10    0x14f2ad  4      OPC=movl_r32_m32    
  nop                           #  11    0x14f2b1  1      OPC=nop             
  nop                           #  12    0x14f2b2  1      OPC=nop             
  nop                           #  13    0x14f2b3  1      OPC=nop             
  addl $0x0, %esi               #  14    0x14f2b4  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %ecx      #  15    0x14f2b7  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  16    0x14f2bb  3      OPC=cmpl_r32_r32    
  je .L_14f2e0                  #  17    0x14f2be  2      OPC=je_label        
  jmpq .L_14f320                #  18    0x14f2c0  2      OPC=jmpq_label      
  nop                           #  19    0x14f2c2  1      OPC=nop             
.L_14f2c0:                      #        0x14f2c3  0      OPC=<label>         
  addl $0x4, %edi               #  20    0x14f2c3  3      OPC=addl_r32_imm8   
  movl (%r15,%rdi,1), %r8d      #  21    0x14f2c6  4      OPC=movl_r32_m32    
  addl $0x4, %esi               #  22    0x14f2ca  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %ecx      #  23    0x14f2cd  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  24    0x14f2d1  3      OPC=cmpl_r32_r32    
  jne .L_14f320                 #  25    0x14f2d4  2      OPC=jne_label       
.L_14f2e0:                      #        0x14f2d6  0      OPC=<label>         
  decq %rdx                     #  26    0x14f2d6  3      OPC=decq_r64        
  ja .L_14f2c0                  #  27    0x14f2d9  2      OPC=ja_label        
  nop                           #  28    0x14f2db  1      OPC=nop             
  nop                           #  29    0x14f2dc  1      OPC=nop             
  nop                           #  30    0x14f2dd  1      OPC=nop             
  nop                           #  31    0x14f2de  1      OPC=nop             
  nop                           #  32    0x14f2df  1      OPC=nop             
  nop                           #  33    0x14f2e0  1      OPC=nop             
  nop                           #  34    0x14f2e1  1      OPC=nop             
  nop                           #  35    0x14f2e2  1      OPC=nop             
  nop                           #  36    0x14f2e3  1      OPC=nop             
  nop                           #  37    0x14f2e4  1      OPC=nop             
  nop                           #  38    0x14f2e5  1      OPC=nop             
.L_14f300:                      #        0x14f2e6  0      OPC=<label>         
  retq                          #  39    0x14f2e6  1      OPC=retq            
.L_14f320:                      #        0x14f2e7  0      OPC=<label>         
  setg %al                      #  40    0x14f2e7  3      OPC=setg_r8         
  nop                           #  41    0x14f2ea  1      OPC=nop             
  nop                           #  42    0x14f2eb  1      OPC=nop             
  nop                           #  43    0x14f2ec  1      OPC=nop             
  nop                           #  44    0x14f2ed  1      OPC=nop             
  nop                           #  45    0x14f2ee  1      OPC=nop             
  nop                           #  46    0x14f2ef  1      OPC=nop             
  nop                           #  47    0x14f2f0  1      OPC=nop             
  leal -0x1(%rax,%rax,1), %eax  #  48    0x14f2f1  4      OPC=leal_r32_m32    
  retq                          #  49    0x14f2f5  1      OPC=retq            
                                                                              
.size wmemcmp, .-wmemcmp
