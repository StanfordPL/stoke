  .text
  .globl strxfrm
  .type strxfrm, @function

#! file-offset 0x16c220
#! rip-offset  0x12c220
#! capacity    160 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strxfrm:                     #        0x12c220  0      OPC=<label>         
  xorl %eax, %eax             #  1     0x12c220  2      OPC=xorl_r32_r32    
  nop                         #  2     0x12c222  1      OPC=nop             
  testl %edx, %edx            #  3     0x12c223  2      OPC=testl_r32_r32   
  movl %edi, %edi             #  4     0x12c225  2      OPC=movl_r32_r32    
  nopl %eax                   #  5     0x12c227  3      OPC=nopl_r32        
  jne .L_12c260               #  6     0x12c22a  2      OPC=jne_label       
  jmpq .L_12c2a0              #  7     0x12c22c  2      OPC=jmpq_label      
  nop                         #  8     0x12c22e  1      OPC=nop             
  nop                         #  9     0x12c22f  1      OPC=nop             
  nop                         #  10    0x12c230  1      OPC=nop             
  nop                         #  11    0x12c231  1      OPC=nop             
  nop                         #  12    0x12c232  1      OPC=nop             
  nop                         #  13    0x12c233  1      OPC=nop             
  nop                         #  14    0x12c234  1      OPC=nop             
  nop                         #  15    0x12c235  1      OPC=nop             
  nop                         #  16    0x12c236  1      OPC=nop             
  nop                         #  17    0x12c237  1      OPC=nop             
  nop                         #  18    0x12c238  1      OPC=nop             
  nop                         #  19    0x12c239  1      OPC=nop             
  nop                         #  20    0x12c23a  1      OPC=nop             
  nop                         #  21    0x12c23b  1      OPC=nop             
  nop                         #  22    0x12c23c  1      OPC=nop             
  nop                         #  23    0x12c23d  1      OPC=nop             
  nop                         #  24    0x12c23e  1      OPC=nop             
  nop                         #  25    0x12c23f  1      OPC=nop             
  nop                         #  26    0x12c240  1      OPC=nop             
  nop                         #  27    0x12c241  1      OPC=nop             
  nop                         #  28    0x12c242  1      OPC=nop             
.L_12c240:                    #        0x12c243  0      OPC=<label>         
  addl $0x1, %eax             #  29    0x12c243  5      OPC=addl_eax_imm32  
  addl $0x1, %edi             #  30    0x12c248  3      OPC=addl_r32_imm8   
  addl $0x1, %esi             #  31    0x12c24b  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx             #  32    0x12c24e  2      OPC=cmpl_r32_r32    
  je .L_12c2a0                #  33    0x12c250  2      OPC=je_label        
  nop                         #  34    0x12c252  1      OPC=nop             
  nop                         #  35    0x12c253  1      OPC=nop             
  nop                         #  36    0x12c254  1      OPC=nop             
  nop                         #  37    0x12c255  1      OPC=nop             
  nop                         #  38    0x12c256  1      OPC=nop             
  nop                         #  39    0x12c257  1      OPC=nop             
  nop                         #  40    0x12c258  1      OPC=nop             
  nop                         #  41    0x12c259  1      OPC=nop             
  nop                         #  42    0x12c25a  1      OPC=nop             
  nop                         #  43    0x12c25b  1      OPC=nop             
  nop                         #  44    0x12c25c  1      OPC=nop             
  nop                         #  45    0x12c25d  1      OPC=nop             
  nop                         #  46    0x12c25e  1      OPC=nop             
  nop                         #  47    0x12c25f  1      OPC=nop             
  nop                         #  48    0x12c260  1      OPC=nop             
  nop                         #  49    0x12c261  1      OPC=nop             
  nop                         #  50    0x12c262  1      OPC=nop             
.L_12c260:                    #        0x12c263  0      OPC=<label>         
  movl %esi, %esi             #  51    0x12c263  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %ecx  #  52    0x12c265  5      OPC=movzbl_r32_m8   
  testb %cl, %cl              #  53    0x12c26a  2      OPC=testb_r8_r8     
  movl %edi, %edi             #  54    0x12c26c  2      OPC=movl_r32_r32    
  movb %cl, (%r15,%rdi,1)     #  55    0x12c26e  4      OPC=movb_m8_r8      
  jne .L_12c240               #  56    0x12c272  2      OPC=jne_label       
  retq                        #  57    0x12c274  1      OPC=retq            
  nop                         #  58    0x12c275  1      OPC=nop             
  nop                         #  59    0x12c276  1      OPC=nop             
  nop                         #  60    0x12c277  1      OPC=nop             
.L_12c280:                    #        0x12c278  0      OPC=<label>         
  addl $0x1, %esi             #  61    0x12c278  3      OPC=addl_r32_imm8   
  addl $0x1, %eax             #  62    0x12c27b  3      OPC=addl_r32_imm8   
  nop                         #  63    0x12c27e  1      OPC=nop             
  nop                         #  64    0x12c27f  1      OPC=nop             
  nop                         #  65    0x12c280  1      OPC=nop             
  nop                         #  66    0x12c281  1      OPC=nop             
  nop                         #  67    0x12c282  1      OPC=nop             
  nop                         #  68    0x12c283  1      OPC=nop             
  nop                         #  69    0x12c284  1      OPC=nop             
  nop                         #  70    0x12c285  1      OPC=nop             
  nop                         #  71    0x12c286  1      OPC=nop             
  nop                         #  72    0x12c287  1      OPC=nop             
  nop                         #  73    0x12c288  1      OPC=nop             
  nop                         #  74    0x12c289  1      OPC=nop             
  nop                         #  75    0x12c28a  1      OPC=nop             
  nop                         #  76    0x12c28b  1      OPC=nop             
.L_12c2a0:                    #        0x12c28c  0      OPC=<label>         
  movl %esi, %esi             #  77    0x12c28c  2      OPC=movl_r32_r32    
  cmpb $0x0, (%r15,%rsi,1)    #  78    0x12c28e  5      OPC=cmpb_m8_imm8    
  jne .L_12c280               #  79    0x12c293  2      OPC=jne_label       
  retq                        #  80    0x12c295  1      OPC=retq            
                                                                            
.size strxfrm, .-strxfrm
