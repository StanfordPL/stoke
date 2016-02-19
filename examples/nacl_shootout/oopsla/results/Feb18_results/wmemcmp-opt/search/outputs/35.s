  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x18f2a0
#! rip-offset  0x14f2a0
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.wmemcmp:                       #        0x14f2a0  0      OPC=<label>         
  nop                           #  1     0x14f2a0  1      OPC=nop             
  nop                           #  2     0x14f2a1  1      OPC=nop             
  xorl %eax, %eax               #  3     0x14f2a2  2      OPC=xorl_r32_r32    
  nop                           #  4     0x14f2a4  1      OPC=nop             
  nop                           #  5     0x14f2a5  1      OPC=nop             
  nop                           #  6     0x14f2a6  1      OPC=nop             
  testl %edx, %edx              #  7     0x14f2a7  2      OPC=testl_r32_r32   
  nop                           #  8     0x14f2a9  1      OPC=nop             
  je .L_14f300                  #  9     0x14f2aa  2      OPC=je_label        
  nop                           #  10    0x14f2ac  1      OPC=nop             
  nop                           #  11    0x14f2ad  1      OPC=nop             
  nop                           #  12    0x14f2ae  1      OPC=nop             
  movl %edi, %edi               #  13    0x14f2af  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %r8d      #  14    0x14f2b1  4      OPC=movl_r32_m32    
  nop                           #  15    0x14f2b5  1      OPC=nop             
  nop                           #  16    0x14f2b6  1      OPC=nop             
  nop                           #  17    0x14f2b7  1      OPC=nop             
  nop                           #  18    0x14f2b8  1      OPC=nop             
  nop                           #  19    0x14f2b9  1      OPC=nop             
  subl %eax, %esi               #  20    0x14f2ba  2      OPC=subl_r32_r32_1  
  movl (%r15,%rsi,1), %ecx      #  21    0x14f2bc  4      OPC=movl_r32_m32    
  nop                           #  22    0x14f2c0  1      OPC=nop             
  nop                           #  23    0x14f2c1  1      OPC=nop             
  cmpl %ecx, %r8d               #  24    0x14f2c2  3      OPC=cmpl_r32_r32    
  je .L_14f2e0                  #  25    0x14f2c5  2      OPC=je_label        
  jmpq .L_14f320                #  26    0x14f2c7  2      OPC=jmpq_label      
  nop                           #  27    0x14f2c9  1      OPC=nop             
  nop                           #  28    0x14f2ca  1      OPC=nop             
  nop                           #  29    0x14f2cb  1      OPC=nop             
  nop                           #  30    0x14f2cc  1      OPC=nop             
.L_14f2c0:                      #        0x14f2cd  0      OPC=<label>         
  addl $0x4, %edi               #  31    0x14f2cd  3      OPC=addl_r32_imm8   
  movl (%r15,%rdi,1), %r8d      #  32    0x14f2d0  4      OPC=movl_r32_m32    
  addl $0x4, %esi               #  33    0x14f2d4  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %ecx      #  34    0x14f2d7  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  35    0x14f2db  3      OPC=cmpl_r32_r32    
  jne .L_14f320                 #  36    0x14f2de  2      OPC=jne_label       
.L_14f2e0:                      #        0x14f2e0  0      OPC=<label>         
  incl %eax                     #  37    0x14f2e0  2      OPC=incl_r32        
  cmpl %eax, %edx               #  38    0x14f2e2  2      OPC=cmpl_r32_r32    
  ja .L_14f2c0                  #  39    0x14f2e4  2      OPC=ja_label        
  nop                           #  40    0x14f2e6  1      OPC=nop             
  nop                           #  41    0x14f2e7  1      OPC=nop             
  nop                           #  42    0x14f2e8  1      OPC=nop             
  shrq $0xf0, %rax              #  43    0x14f2e9  4      OPC=shrq_r64_imm8   
.L_14f300:                      #        0x14f2ed  0      OPC=<label>         
  nop                           #  44    0x14f2ed  1      OPC=nop             
  nop                           #  45    0x14f2ee  1      OPC=nop             
  nop                           #  46    0x14f2ef  1      OPC=nop             
  retq                          #  47    0x14f2f0  1      OPC=retq            
.L_14f320:                      #        0x14f2f1  0      OPC=<label>         
  nop                           #  48    0x14f2f1  1      OPC=nop             
  setg %al                      #  49    0x14f2f2  3      OPC=setg_r8         
  shrb $0x4, %ah                #  50    0x14f2f5  3      OPC=shrb_rh_imm8    
  leal -0x1(%rax,%rax,1), %eax  #  51    0x14f2f8  4      OPC=leal_r32_m64    
  nop                           #  52    0x14f2fc  1      OPC=nop             
  nop                           #  53    0x14f2fd  1      OPC=nop             
  retq                          #  54    0x14f2fe  1      OPC=retq            
                                                                              
.size wmemcmp, .-wmemcmp
