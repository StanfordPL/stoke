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
  nop                         #  3     0x12c222  1      OPC=nop            
  nop                         #  4     0x12c223  1      OPC=nop            
  nop                         #  5     0x12c224  1      OPC=nop            
  xorl %eax, %eax             #  6     0x12c225  2      OPC=xorl_r32_r32   
  testl %edx, %edx            #  7     0x12c227  2      OPC=testl_r32_r32  
  nopl %eax                   #  8     0x12c229  3      OPC=nopl_r32       
  nop                         #  9     0x12c22c  1      OPC=nop            
  jne .L_12c260               #  10    0x12c22d  2      OPC=jne_label      
  nop                         #  11    0x12c22f  1      OPC=nop            
  jmpq .L_12c2a0              #  12    0x12c230  2      OPC=jmpq_label     
  nop                         #  13    0x12c232  1      OPC=nop            
  nop                         #  14    0x12c233  1      OPC=nop            
  nop                         #  15    0x12c234  1      OPC=nop            
  nop                         #  16    0x12c235  1      OPC=nop            
  nop                         #  17    0x12c236  1      OPC=nop            
  nop                         #  18    0x12c237  1      OPC=nop            
  nop                         #  19    0x12c238  1      OPC=nop            
  nop                         #  20    0x12c239  1      OPC=nop            
  nop                         #  21    0x12c23a  1      OPC=nop            
  nop                         #  22    0x12c23b  1      OPC=nop            
  nop                         #  23    0x12c23c  1      OPC=nop            
  nop                         #  24    0x12c23d  1      OPC=nop            
  nop                         #  25    0x12c23e  1      OPC=nop            
  nop                         #  26    0x12c23f  1      OPC=nop            
  nop                         #  27    0x12c240  1      OPC=nop            
  nop                         #  28    0x12c241  1      OPC=nop            
  nop                         #  29    0x12c242  1      OPC=nop            
  nop                         #  30    0x12c243  1      OPC=nop            
  nop                         #  31    0x12c244  1      OPC=nop            
  nop                         #  32    0x12c245  1      OPC=nop            
  nop                         #  33    0x12c246  1      OPC=nop            
  nop                         #  34    0x12c247  1      OPC=nop            
  nop                         #  35    0x12c248  1      OPC=nop            
  nop                         #  36    0x12c249  1      OPC=nop            
  nop                         #  37    0x12c24a  1      OPC=nop            
.L_12c240:                    #        0x12c24b  0      OPC=<label>        
  addl $0x1, %eax             #  38    0x12c24b  3      OPC=addl_r32_imm8  
  addl $0x1, %edi             #  39    0x12c24e  3      OPC=addl_r32_imm8  
  addl $0x1, %esi             #  40    0x12c251  3      OPC=addl_r32_imm8  
  cmpl %eax, %edx             #  41    0x12c254  2      OPC=cmpl_r32_r32   
  je .L_12c2a0                #  42    0x12c256  2      OPC=je_label       
  nop                         #  43    0x12c258  1      OPC=nop            
  nop                         #  44    0x12c259  1      OPC=nop            
  nop                         #  45    0x12c25a  1      OPC=nop            
  nop                         #  46    0x12c25b  1      OPC=nop            
  nop                         #  47    0x12c25c  1      OPC=nop            
  nop                         #  48    0x12c25d  1      OPC=nop            
  nop                         #  49    0x12c25e  1      OPC=nop            
  nop                         #  50    0x12c25f  1      OPC=nop            
  nop                         #  51    0x12c260  1      OPC=nop            
  nop                         #  52    0x12c261  1      OPC=nop            
.L_12c260:                    #        0x12c262  0      OPC=<label>        
  movl %esi, %esi             #  53    0x12c262  2      OPC=movl_r32_r32   
  movsbl (%r15,%rsi,1), %ecx  #  54    0x12c264  5      OPC=movsbl_r32_m8  
  testb %cl, %cl              #  55    0x12c269  2      OPC=testb_r8_r8    
  movl %edi, %edi             #  56    0x12c26b  2      OPC=movl_r32_r32   
  movb %cl, (%r15,%rdi,1)     #  57    0x12c26d  4      OPC=movb_m8_r8     
  jne .L_12c240               #  58    0x12c271  2      OPC=jne_label      
  retq                        #  59    0x12c273  1      OPC=retq           
  nop                         #  60    0x12c274  1      OPC=nop            
.L_12c280:                    #        0x12c275  0      OPC=<label>        
  addl $0x1, %eax             #  61    0x12c275  3      OPC=addl_r32_imm8  
  addl $0x1, %esi             #  62    0x12c278  3      OPC=addl_r32_imm8  
  nop                         #  63    0x12c27b  1      OPC=nop            
  nop                         #  64    0x12c27c  1      OPC=nop            
  nop                         #  65    0x12c27d  1      OPC=nop            
  nop                         #  66    0x12c27e  1      OPC=nop            
  nop                         #  67    0x12c27f  1      OPC=nop            
.L_12c2a0:                    #        0x12c280  0      OPC=<label>        
  movl %esi, %esi             #  68    0x12c280  2      OPC=movl_r32_r32   
  cmpb $0x0, (%r15,%rsi,1)    #  69    0x12c282  5      OPC=cmpb_m8_imm8   
  jne .L_12c280               #  70    0x12c287  2      OPC=jne_label      
  retq                        #  71    0x12c289  1      OPC=retq           
                                                                           
.size strxfrm, .-strxfrm
