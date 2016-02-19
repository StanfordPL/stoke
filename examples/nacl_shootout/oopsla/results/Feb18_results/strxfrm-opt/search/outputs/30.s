  .text
  .globl strxfrm
  .type strxfrm, @function

#! file-offset 0x16c220
#! rip-offset  0x12c220
#! capacity    160 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strxfrm:                     #        0x12c220  0      OPC=<label>         
  xorl %eax, %eax             #  1     0x12c220  2      OPC=xorl_r32_r32    
  testl %edx, %edx            #  2     0x12c222  2      OPC=testl_r32_r32   
  nop                         #  3     0x12c224  1      OPC=nop             
  nop                         #  4     0x12c225  1      OPC=nop             
  nop                         #  5     0x12c226  1      OPC=nop             
  nop                         #  6     0x12c227  1      OPC=nop             
  nop                         #  7     0x12c228  1      OPC=nop             
  nop                         #  8     0x12c229  1      OPC=nop             
  nop                         #  9     0x12c22a  1      OPC=nop             
  nop                         #  10    0x12c22b  1      OPC=nop             
  nop                         #  11    0x12c22c  1      OPC=nop             
  nop                         #  12    0x12c22d  1      OPC=nop             
  nop                         #  13    0x12c22e  1      OPC=nop             
  nop                         #  14    0x12c22f  1      OPC=nop             
  jne .L_12c260               #  15    0x12c230  2      OPC=jne_label       
  jmpq .L_12c2a0              #  16    0x12c232  2      OPC=jmpq_label      
  nop                         #  17    0x12c234  1      OPC=nop             
  nop                         #  18    0x12c235  1      OPC=nop             
  nop                         #  19    0x12c236  1      OPC=nop             
  nop                         #  20    0x12c237  1      OPC=nop             
  nop                         #  21    0x12c238  1      OPC=nop             
  nop                         #  22    0x12c239  1      OPC=nop             
  nop                         #  23    0x12c23a  1      OPC=nop             
  nop                         #  24    0x12c23b  1      OPC=nop             
  nop                         #  25    0x12c23c  1      OPC=nop             
  nop                         #  26    0x12c23d  1      OPC=nop             
  nop                         #  27    0x12c23e  1      OPC=nop             
  nop                         #  28    0x12c23f  1      OPC=nop             
  nop                         #  29    0x12c240  1      OPC=nop             
  nop                         #  30    0x12c241  1      OPC=nop             
  nop                         #  31    0x12c242  1      OPC=nop             
  nop                         #  32    0x12c243  1      OPC=nop             
.L_12c240:                    #        0x12c244  0      OPC=<label>         
  addl $0x1, %eax             #  33    0x12c244  3      OPC=addl_r32_imm8   
  addl $0x1, %edi             #  34    0x12c247  3      OPC=addl_r32_imm8   
  addl $0x1, %esi             #  35    0x12c24a  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx             #  36    0x12c24d  2      OPC=cmpl_r32_r32    
  je .L_12c2a0                #  37    0x12c24f  2      OPC=je_label        
  nop                         #  38    0x12c251  1      OPC=nop             
  nop                         #  39    0x12c252  1      OPC=nop             
  nop                         #  40    0x12c253  1      OPC=nop             
  nop                         #  41    0x12c254  1      OPC=nop             
  nop                         #  42    0x12c255  1      OPC=nop             
  nop                         #  43    0x12c256  1      OPC=nop             
  nop                         #  44    0x12c257  1      OPC=nop             
  nop                         #  45    0x12c258  1      OPC=nop             
.L_12c260:                    #        0x12c259  0      OPC=<label>         
  movl %esi, %esi             #  46    0x12c259  2      OPC=movl_r32_r32_1  
  movzbl (%r15,%rsi,1), %ecx  #  47    0x12c25b  5      OPC=movzbl_r32_m8   
  testb %cl, %cl              #  48    0x12c260  2      OPC=testb_r8_r8     
  movl %edi, %edi             #  49    0x12c262  2      OPC=movl_r32_r32    
  movb %cl, (%r15,%rdi,1)     #  50    0x12c264  4      OPC=movb_m8_r8      
  jne .L_12c240               #  51    0x12c268  2      OPC=jne_label       
  nop                         #  52    0x12c26a  1      OPC=nop             
  nop                         #  53    0x12c26b  1      OPC=nop             
  retq                        #  54    0x12c26c  1      OPC=retq            
  nop                         #  55    0x12c26d  1      OPC=nop             
.L_12c280:                    #        0x12c26e  0      OPC=<label>         
  addl $0x1, %esi             #  56    0x12c26e  3      OPC=addl_r32_imm8   
  addl $0x1, %eax             #  57    0x12c271  3      OPC=addl_r32_imm8   
  nop                         #  58    0x12c274  1      OPC=nop             
  nop                         #  59    0x12c275  1      OPC=nop             
  nop                         #  60    0x12c276  1      OPC=nop             
  nop                         #  61    0x12c277  1      OPC=nop             
.L_12c2a0:                    #        0x12c278  0      OPC=<label>         
  orl %esi, %esi              #  62    0x12c278  2      OPC=orl_r32_r32     
  cmpb $0x0, (%r15,%rsi,1)    #  63    0x12c27a  5      OPC=cmpb_m8_imm8    
  jne .L_12c280               #  64    0x12c27f  2      OPC=jne_label       
  retq                        #  65    0x12c281  1      OPC=retq            
                                                                            
.size strxfrm, .-strxfrm
