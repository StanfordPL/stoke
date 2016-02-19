  .text
  .globl strxfrm
  .type strxfrm, @function

#! file-offset 0x16c220
#! rip-offset  0x12c220
#! capacity    160 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strxfrm:                     #        0x12c220  0      OPC=<label>         
  nop                         #  1     0x12c220  1      OPC=nop             
  nop                         #  2     0x12c221  1      OPC=nop             
  xorl %eax, %eax             #  3     0x12c222  2      OPC=xorl_r32_r32    
  nop                         #  4     0x12c224  1      OPC=nop             
  nop                         #  5     0x12c225  1      OPC=nop             
  nop                         #  6     0x12c226  1      OPC=nop             
  nop                         #  7     0x12c227  1      OPC=nop             
  nop                         #  8     0x12c228  1      OPC=nop             
  testl %edx, %edx            #  9     0x12c229  2      OPC=testl_r32_r32   
  nop                         #  10    0x12c22b  1      OPC=nop             
  nop                         #  11    0x12c22c  1      OPC=nop             
  nop                         #  12    0x12c22d  1      OPC=nop             
  nop                         #  13    0x12c22e  1      OPC=nop             
  nop                         #  14    0x12c22f  1      OPC=nop             
  jne .L_12c260               #  15    0x12c230  2      OPC=jne_label       
  jmpq .L_12c2a0              #  16    0x12c232  2      OPC=jmpq_label      
  nop                         #  17    0x12c234  1      OPC=nop             
.L_12c240:                    #        0x12c235  0      OPC=<label>         
  addl $0x1, %esi             #  18    0x12c235  3      OPC=addl_r32_imm8   
  addl $0x1, %eax             #  19    0x12c238  3      OPC=addl_r32_imm8   
  addl $0x1, %edi             #  20    0x12c23b  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx             #  21    0x12c23e  2      OPC=cmpl_r32_r32    
  je .L_12c2a0                #  22    0x12c240  2      OPC=je_label        
.L_12c260:                    #        0x12c242  0      OPC=<label>         
  orl %esi, %esi              #  23    0x12c242  2      OPC=orl_r32_r32     
  movsbq (%r15,%rsi,1), %rcx  #  24    0x12c244  5      OPC=movsbq_r64_m8   
  orw %cx, %cx                #  25    0x12c249  3      OPC=orw_r16_r16     
  movl %edi, %edi             #  26    0x12c24c  2      OPC=movl_r32_r32    
  movb %cl, (%r15,%rdi,1)     #  27    0x12c24e  4      OPC=movb_m8_r8      
  jne .L_12c240               #  28    0x12c252  2      OPC=jne_label       
  retq                        #  29    0x12c254  1      OPC=retq            
  nop                         #  30    0x12c255  1      OPC=nop             
  nop                         #  31    0x12c256  1      OPC=nop             
  nop                         #  32    0x12c257  1      OPC=nop             
  nop                         #  33    0x12c258  1      OPC=nop             
.L_12c280:                    #        0x12c259  0      OPC=<label>         
  addl $0x1, %eax             #  34    0x12c259  3      OPC=addl_r32_imm8   
  addq $0x1, %rsi             #  35    0x12c25c  7      OPC=addq_r64_imm32  
.L_12c2a0:                    #        0x12c263  0      OPC=<label>         
  orl %esi, %esi              #  36    0x12c263  2      OPC=orl_r32_r32     
  cmpb $0x0, (%r15,%rsi,1)    #  37    0x12c265  5      OPC=cmpb_m8_imm8    
  jne .L_12c280               #  38    0x12c26a  2      OPC=jne_label       
  nop                         #  39    0x12c26c  1      OPC=nop             
  nop                         #  40    0x12c26d  1      OPC=nop             
  nop                         #  41    0x12c26e  1      OPC=nop             
  nop                         #  42    0x12c26f  1      OPC=nop             
  nop                         #  43    0x12c270  1      OPC=nop             
  nop                         #  44    0x12c271  1      OPC=nop             
  nop                         #  45    0x12c272  1      OPC=nop             
  nop                         #  46    0x12c273  1      OPC=nop             
  nop                         #  47    0x12c274  1      OPC=nop             
  nop                         #  48    0x12c275  1      OPC=nop             
  nop                         #  49    0x12c276  1      OPC=nop             
  nop                         #  50    0x12c277  1      OPC=nop             
  retq                        #  51    0x12c278  1      OPC=retq            
                                                                            
.size strxfrm, .-strxfrm
