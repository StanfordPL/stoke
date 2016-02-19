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
  testl %edx, %edx            #  4     0x12c224  2      OPC=testl_r32_r32  
  nop                         #  5     0x12c226  1      OPC=nop            
  nop                         #  6     0x12c227  1      OPC=nop            
  nop                         #  7     0x12c228  1      OPC=nop            
  jne .L_12c260               #  8     0x12c229  2      OPC=jne_label      
  jmpq .L_12c2a0              #  9     0x12c22b  2      OPC=jmpq_label     
  nop                         #  10    0x12c22d  1      OPC=nop            
  nop                         #  11    0x12c22e  1      OPC=nop            
  nop                         #  12    0x12c22f  1      OPC=nop            
  nop                         #  13    0x12c230  1      OPC=nop            
  nop                         #  14    0x12c231  1      OPC=nop            
  nop                         #  15    0x12c232  1      OPC=nop            
  nop                         #  16    0x12c233  1      OPC=nop            
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
  nop                         #  46    0x12c259  1      OPC=nop            
  nop                         #  47    0x12c25a  1      OPC=nop            
  nop                         #  48    0x12c25b  1      OPC=nop            
  nop                         #  49    0x12c25c  1      OPC=nop            
  nop                         #  50    0x12c25d  1      OPC=nop            
  nop                         #  51    0x12c25e  1      OPC=nop            
  nop                         #  52    0x12c25f  1      OPC=nop            
  nop                         #  53    0x12c260  1      OPC=nop            
.L_12c260:                    #        0x12c261  0      OPC=<label>        
  movl %esi, %esi             #  54    0x12c261  2      OPC=movl_r32_r32   
  movzbl (%r15,%rsi,1), %ecx  #  55    0x12c263  5      OPC=movzbl_r32_m8  
  testb %cl, %cl              #  56    0x12c268  2      OPC=testb_r8_r8    
  movl %edi, %edi             #  57    0x12c26a  2      OPC=movl_r32_r32   
  movb %cl, (%r15,%rdi,1)     #  58    0x12c26c  4      OPC=movb_m8_r8     
  jne .L_12c240               #  59    0x12c270  2      OPC=jne_label      
  nop                         #  60    0x12c272  1      OPC=nop            
  retq                        #  61    0x12c273  1      OPC=retq           
  nop                         #  62    0x12c274  1      OPC=nop            
  nop                         #  63    0x12c275  1      OPC=nop            
.L_12c280:                    #        0x12c276  0      OPC=<label>        
  addl $0x1, %esi             #  64    0x12c276  3      OPC=addl_r32_imm8  
  addl $0x1, %eax             #  65    0x12c279  3      OPC=addl_r32_imm8  
  nop                         #  66    0x12c27c  1      OPC=nop            
.L_12c2a0:                    #        0x12c27d  0      OPC=<label>        
  movl %esi, %esi             #  67    0x12c27d  2      OPC=movl_r32_r32   
  cmpb $0x0, (%r15,%rsi,1)    #  68    0x12c27f  5      OPC=cmpb_m8_imm8   
  jne .L_12c280               #  69    0x12c284  2      OPC=jne_label      
  retq                        #  70    0x12c286  1      OPC=retq           
                                                                           
.size strxfrm, .-strxfrm
