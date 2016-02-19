  .text
  .globl strxfrm
  .type strxfrm, @function

#! file-offset 0x16c220
#! rip-offset  0x12c220
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.strxfrm:                       #        0x12c220  0      OPC=<label>         
  nop                           #  1     0x12c220  1      OPC=nop             
  nop                           #  2     0x12c221  1      OPC=nop             
  xorl %eax, %eax               #  3     0x12c222  2      OPC=xorl_r32_r32    
  nop                           #  4     0x12c224  1      OPC=nop             
  nop                           #  5     0x12c225  1      OPC=nop             
  nop                           #  6     0x12c226  1      OPC=nop             
  nop                           #  7     0x12c227  1      OPC=nop             
  nop                           #  8     0x12c228  1      OPC=nop             
  nop                           #  9     0x12c229  1      OPC=nop             
  testl %edx, %edx              #  10    0x12c22a  2      OPC=testl_r32_r32   
  jne .L_12c260                 #  11    0x12c22c  2      OPC=jne_label       
  nop                           #  12    0x12c22e  1      OPC=nop             
  nop                           #  13    0x12c22f  1      OPC=nop             
  jmpq .L_12c2a0                #  14    0x12c230  2      OPC=jmpq_label      
.L_12c240:                      #        0x12c232  0      OPC=<label>         
  addl $0x1, %esi               #  15    0x12c232  3      OPC=addl_r32_imm8   
  addl $0x1, %edi               #  16    0x12c235  3      OPC=addl_r32_imm8   
  addq $0x1, %rax               #  17    0x12c238  4      OPC=addq_r64_imm8   
  cmpl %eax, %edx               #  18    0x12c23c  2      OPC=cmpl_r32_r32    
  je .L_12c2a0                  #  19    0x12c23e  2      OPC=je_label        
.L_12c260:                      #        0x12c240  0      OPC=<label>         
  andl %esi, %esi               #  20    0x12c240  2      OPC=andl_r32_r32_1  
  movzbl (%r15,%rsi,1), %ecx    #  21    0x12c242  5      OPC=movzbl_r32_m8   
  testb %cl, %cl                #  22    0x12c247  2      OPC=testb_r8_r8     
  movl %edi, %edi               #  23    0x12c249  2      OPC=movl_r32_r32_1  
  movb %cl, (%r15,%rdi,1)       #  24    0x12c24b  4      OPC=movb_m8_r8      
  jne .L_12c240                 #  25    0x12c24f  2      OPC=jne_label       
  retq                          #  26    0x12c251  1      OPC=retq            
.L_12c280:                      #        0x12c252  0      OPC=<label>         
  addl $0x1, %eax               #  27    0x12c252  3      OPC=addl_r32_imm8   
  nop                           #  28    0x12c255  1      OPC=nop             
  nop                           #  29    0x12c256  1      OPC=nop             
  nop                           #  30    0x12c257  1      OPC=nop             
.L_12c2a0:                      #        0x12c258  0      OPC=<label>         
  addl $0x1, %esi               #  31    0x12c258  3      OPC=addl_r32_imm8   
  cmpb $0x0, -0x1(%r15,%rsi,1)  #  32    0x12c25b  6      OPC=cmpb_m8_imm8    
  jne .L_12c280                 #  33    0x12c261  2      OPC=jne_label       
  retq                          #  34    0x12c263  1      OPC=retq            
                                                                              
.size strxfrm, .-strxfrm
