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
  nop                         #  3     0x12c223  1      OPC=nop             
  nop                         #  4     0x12c224  1      OPC=nop             
  andb %dl, %dl               #  5     0x12c225  2      OPC=andb_r8_r8      
  nop                         #  6     0x12c227  1      OPC=nop             
  nop                         #  7     0x12c228  1      OPC=nop             
  nop                         #  8     0x12c229  1      OPC=nop             
  nop                         #  9     0x12c22a  1      OPC=nop             
  nop                         #  10    0x12c22b  1      OPC=nop             
  jne .L_12c260               #  11    0x12c22c  2      OPC=jne_label       
  nop                         #  12    0x12c22e  1      OPC=nop             
  nop                         #  13    0x12c22f  1      OPC=nop             
  nop                         #  14    0x12c230  1      OPC=nop             
  nop                         #  15    0x12c231  1      OPC=nop             
  nop                         #  16    0x12c232  1      OPC=nop             
  nop                         #  17    0x12c233  1      OPC=nop             
  jmpq .L_12c2a0              #  18    0x12c234  2      OPC=jmpq_label      
  nop                         #  19    0x12c236  1      OPC=nop             
  nop                         #  20    0x12c237  1      OPC=nop             
  nop                         #  21    0x12c238  1      OPC=nop             
  nop                         #  22    0x12c239  1      OPC=nop             
.L_12c240:                    #        0x12c23a  0      OPC=<label>         
  addl $0x1, %eax             #  23    0x12c23a  6      OPC=addl_r32_imm32  
  addl $0x1, %esi             #  24    0x12c240  3      OPC=addl_r32_imm8   
  addw $0x1, %di              #  25    0x12c243  4      OPC=addw_r16_imm8   
  cmpl %eax, %edx             #  26    0x12c247  2      OPC=cmpl_r32_r32    
  je .L_12c2a0                #  27    0x12c249  2      OPC=je_label        
.L_12c260:                    #        0x12c24b  0      OPC=<label>         
  andl %esi, %esi             #  28    0x12c24b  2      OPC=andl_r32_r32    
  movzbq (%r15,%rsi,1), %rcx  #  29    0x12c24d  5      OPC=movzbq_r64_m8   
  testb %cl, %cl              #  30    0x12c252  2      OPC=testb_r8_r8     
  movl %edi, %edi             #  31    0x12c254  2      OPC=movl_r32_r32_1  
  movb %cl, (%r15,%rdi,1)     #  32    0x12c256  4      OPC=movb_m8_r8      
  jne .L_12c240               #  33    0x12c25a  2      OPC=jne_label       
  nop                         #  34    0x12c25c  1      OPC=nop             
  nop                         #  35    0x12c25d  1      OPC=nop             
  nop                         #  36    0x12c25e  1      OPC=nop             
  nop                         #  37    0x12c25f  1      OPC=nop             
  retq                        #  38    0x12c260  1      OPC=retq            
  nop                         #  39    0x12c261  1      OPC=nop             
  nop                         #  40    0x12c262  1      OPC=nop             
  nop                         #  41    0x12c263  1      OPC=nop             
  nop                         #  42    0x12c264  1      OPC=nop             
.L_12c280:                    #        0x12c265  0      OPC=<label>         
  nop                         #  43    0x12c265  1      OPC=nop             
  nop                         #  44    0x12c266  1      OPC=nop             
  nop                         #  45    0x12c267  1      OPC=nop             
  nop                         #  46    0x12c268  1      OPC=nop             
  nop                         #  47    0x12c269  1      OPC=nop             
  nop                         #  48    0x12c26a  1      OPC=nop             
  nop                         #  49    0x12c26b  1      OPC=nop             
  nop                         #  50    0x12c26c  1      OPC=nop             
  nop                         #  51    0x12c26d  1      OPC=nop             
  nop                         #  52    0x12c26e  1      OPC=nop             
  nop                         #  53    0x12c26f  1      OPC=nop             
  nopl %eax                   #  54    0x12c270  3      OPC=nopl_r32        
  nop                         #  55    0x12c273  1      OPC=nop             
  nop                         #  56    0x12c274  1      OPC=nop             
  nop                         #  57    0x12c275  1      OPC=nop             
  nop                         #  58    0x12c276  1      OPC=nop             
  nop                         #  59    0x12c277  1      OPC=nop             
  nop                         #  60    0x12c278  1      OPC=nop             
  nop                         #  61    0x12c279  1      OPC=nop             
  nop                         #  62    0x12c27a  1      OPC=nop             
  addl $0x1, %eax             #  63    0x12c27b  3      OPC=addl_r32_imm8   
  addw $0x1, %si              #  64    0x12c27e  5      OPC=addw_r16_imm16  
.L_12c2a0:                    #        0x12c283  0      OPC=<label>         
  orl %esi, %esi              #  65    0x12c283  2      OPC=orl_r32_r32_1   
  cmpb $0x0, (%r15,%rsi,1)    #  66    0x12c285  5      OPC=cmpb_m8_imm8    
  nop                         #  67    0x12c28a  1      OPC=nop             
  nop                         #  68    0x12c28b  1      OPC=nop             
  nop                         #  69    0x12c28c  1      OPC=nop             
  nop                         #  70    0x12c28d  1      OPC=nop             
  nop                         #  71    0x12c28e  1      OPC=nop             
  nop                         #  72    0x12c28f  1      OPC=nop             
  nop                         #  73    0x12c290  1      OPC=nop             
  nop                         #  74    0x12c291  1      OPC=nop             
  jne .L_12c280               #  75    0x12c292  2      OPC=jne_label       
  nop                         #  76    0x12c294  1      OPC=nop             
  nop                         #  77    0x12c295  1      OPC=nop             
  nop                         #  78    0x12c296  1      OPC=nop             
  nop                         #  79    0x12c297  1      OPC=nop             
  nop                         #  80    0x12c298  1      OPC=nop             
  nop                         #  81    0x12c299  1      OPC=nop             
  nop                         #  82    0x12c29a  1      OPC=nop             
  nop                         #  83    0x12c29b  1      OPC=nop             
  nop                         #  84    0x12c29c  1      OPC=nop             
  nop                         #  85    0x12c29d  1      OPC=nop             
  retq                        #  86    0x12c29e  1      OPC=retq            
                                                                            
.size strxfrm, .-strxfrm
