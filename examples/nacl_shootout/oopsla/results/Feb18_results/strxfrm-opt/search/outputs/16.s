  .text
  .globl strxfrm
  .type strxfrm, @function

#! file-offset 0x16c220
#! rip-offset  0x12c220
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.strxfrm:                       #        0x12c220  0      OPC=<label>         
  xorl %eax, %eax               #  1     0x12c220  2      OPC=xorl_r32_r32    
  testl %edx, %edx              #  2     0x12c222  2      OPC=testl_r32_r32   
  jne .L_12c260                 #  3     0x12c224  2      OPC=jne_label       
  nop                           #  4     0x12c226  1      OPC=nop             
  jmpq .L_12c2a0                #  5     0x12c227  2      OPC=jmpq_label      
  nop                           #  6     0x12c229  1      OPC=nop             
  nop                           #  7     0x12c22a  1      OPC=nop             
.L_12c240:                      #        0x12c22b  0      OPC=<label>         
  addq $0x1, %rdi               #  8     0x12c22b  7      OPC=addq_r64_imm32  
  addl $0x1, %esi               #  9     0x12c232  3      OPC=addl_r32_imm8   
  addl $0x1, %eax               #  10    0x12c235  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx               #  11    0x12c238  2      OPC=cmpl_r32_r32    
  je .L_12c2a0                  #  12    0x12c23a  2      OPC=je_label        
  nop                           #  13    0x12c23c  1      OPC=nop             
  nop                           #  14    0x12c23d  1      OPC=nop             
  nop                           #  15    0x12c23e  1      OPC=nop             
  nop                           #  16    0x12c23f  1      OPC=nop             
.L_12c260:                      #        0x12c240  0      OPC=<label>         
  orl %esi, %esi                #  17    0x12c240  2      OPC=orl_r32_r32     
  movzbl (%r15,%rsi,1), %ecx    #  18    0x12c242  5      OPC=movzbl_r32_m8   
  testb %cl, %cl                #  19    0x12c247  2      OPC=testb_r8_r8     
  movl %edi, %edi               #  20    0x12c249  2      OPC=movl_r32_r32    
  movb %cl, (%r15,%rdi,1)       #  21    0x12c24b  4      OPC=movb_m8_r8      
  jne .L_12c240                 #  22    0x12c24f  2      OPC=jne_label       
  nop                           #  23    0x12c251  1      OPC=nop             
  retq                          #  24    0x12c252  1      OPC=retq            
.L_12c280:                      #        0x12c253  0      OPC=<label>         
  nop                           #  25    0x12c253  1      OPC=nop             
  nop                           #  26    0x12c254  1      OPC=nop             
  nop                           #  27    0x12c255  1      OPC=nop             
  nop                           #  28    0x12c256  1      OPC=nop             
  nop                           #  29    0x12c257  1      OPC=nop             
  addl $0x1, %eax               #  30    0x12c258  5      OPC=addl_eax_imm32  
.L_12c2a0:                      #        0x12c25d  0      OPC=<label>         
  addl $0x1, %esi               #  31    0x12c25d  3      OPC=addl_r32_imm8   
  cmpb $0x0, -0x1(%r15,%rsi,1)  #  32    0x12c260  6      OPC=cmpb_m8_imm8    
  jne .L_12c280                 #  33    0x12c266  2      OPC=jne_label       
  retq                          #  34    0x12c268  1      OPC=retq            
                                                                              
.size strxfrm, .-strxfrm
