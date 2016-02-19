  .text
  .globl strxfrm
  .type strxfrm, @function

#! file-offset 0x16c220
#! rip-offset  0x12c220
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.strxfrm:                       #        0x12c220  0      OPC=<label>         
  nop                           #  1     0x12c220  1      OPC=nop             
  xorl %eax, %eax               #  2     0x12c221  2      OPC=xorl_r32_r32    
  testl %edx, %edx              #  3     0x12c223  2      OPC=testl_r32_r32   
  nop                           #  4     0x12c225  1      OPC=nop             
  nop                           #  5     0x12c226  1      OPC=nop             
  nop                           #  6     0x12c227  1      OPC=nop             
  nop                           #  7     0x12c228  1      OPC=nop             
  nop                           #  8     0x12c229  1      OPC=nop             
  nop                           #  9     0x12c22a  1      OPC=nop             
  nop                           #  10    0x12c22b  1      OPC=nop             
  nop                           #  11    0x12c22c  1      OPC=nop             
  jne .L_12c260                 #  12    0x12c22d  2      OPC=jne_label       
  nop                           #  13    0x12c22f  1      OPC=nop             
  nop                           #  14    0x12c230  1      OPC=nop             
  nop                           #  15    0x12c231  1      OPC=nop             
  jmpq .L_12c2a0                #  16    0x12c232  2      OPC=jmpq_label      
  nop                           #  17    0x12c234  1      OPC=nop             
  nop                           #  18    0x12c235  1      OPC=nop             
  nop                           #  19    0x12c236  1      OPC=nop             
  nop                           #  20    0x12c237  1      OPC=nop             
  nop                           #  21    0x12c238  1      OPC=nop             
  nop                           #  22    0x12c239  1      OPC=nop             
  nop                           #  23    0x12c23a  1      OPC=nop             
  nop                           #  24    0x12c23b  1      OPC=nop             
  nop                           #  25    0x12c23c  1      OPC=nop             
  nop                           #  26    0x12c23d  1      OPC=nop             
  nop                           #  27    0x12c23e  1      OPC=nop             
  nop                           #  28    0x12c23f  1      OPC=nop             
  nop                           #  29    0x12c240  1      OPC=nop             
  nop                           #  30    0x12c241  1      OPC=nop             
  nop                           #  31    0x12c242  1      OPC=nop             
  nop                           #  32    0x12c243  1      OPC=nop             
  nop                           #  33    0x12c244  1      OPC=nop             
  nop                           #  34    0x12c245  1      OPC=nop             
.L_12c240:                      #        0x12c246  0      OPC=<label>         
  addl $0x1, %esi               #  35    0x12c246  3      OPC=addl_r32_imm8   
  addl $0x1, %edi               #  36    0x12c249  3      OPC=addl_r32_imm8   
  addl $0x1, %eax               #  37    0x12c24c  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx               #  38    0x12c24f  2      OPC=cmpl_r32_r32    
  je .L_12c2a0                  #  39    0x12c251  2      OPC=je_label        
  nop                           #  40    0x12c253  1      OPC=nop             
  nop                           #  41    0x12c254  1      OPC=nop             
  nop                           #  42    0x12c255  1      OPC=nop             
  nop                           #  43    0x12c256  1      OPC=nop             
  nop                           #  44    0x12c257  1      OPC=nop             
.L_12c260:                      #        0x12c258  0      OPC=<label>         
  movl %esi, %esi               #  45    0x12c258  2      OPC=movl_r32_r32    
  movsbw (%r15,%rsi,1), %cx     #  46    0x12c25a  6      OPC=movsbw_r16_m8   
  testb %cl, %cl                #  47    0x12c260  2      OPC=testb_r8_r8     
  movl %edi, %edi               #  48    0x12c262  2      OPC=movl_r32_r32_1  
  movb %cl, (%r15,%rdi,1)       #  49    0x12c264  4      OPC=movb_m8_r8      
  jne .L_12c240                 #  50    0x12c268  2      OPC=jne_label       
  retq                          #  51    0x12c26a  1      OPC=retq            
  nop                           #  52    0x12c26b  1      OPC=nop             
  nop                           #  53    0x12c26c  1      OPC=nop             
  nop                           #  54    0x12c26d  1      OPC=nop             
  nop                           #  55    0x12c26e  1      OPC=nop             
.L_12c280:                      #        0x12c26f  0      OPC=<label>         
  addl $0x1, %eax               #  56    0x12c26f  3      OPC=addl_r32_imm8   
  nop                           #  57    0x12c272  1      OPC=nop             
  nop                           #  58    0x12c273  1      OPC=nop             
  nop                           #  59    0x12c274  1      OPC=nop             
.L_12c2a0:                      #        0x12c275  0      OPC=<label>         
  addl $0x1, %esi               #  60    0x12c275  3      OPC=addl_r32_imm8   
  cmpb $0x0, -0x1(%r15,%rsi,1)  #  61    0x12c278  6      OPC=cmpb_m8_imm8    
  jne .L_12c280                 #  62    0x12c27e  2      OPC=jne_label       
  nop                           #  63    0x12c280  1      OPC=nop             
  nop                           #  64    0x12c281  1      OPC=nop             
  nop                           #  65    0x12c282  1      OPC=nop             
  nop                           #  66    0x12c283  1      OPC=nop             
  nop                           #  67    0x12c284  1      OPC=nop             
  retq                          #  68    0x12c285  1      OPC=retq            
                                                                              
.size strxfrm, .-strxfrm
