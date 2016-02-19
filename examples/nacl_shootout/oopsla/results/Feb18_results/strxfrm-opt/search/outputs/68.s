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
  nop                         #  4     0x12c225  1      OPC=nop            
  nop                         #  5     0x12c226  1      OPC=nop            
  jne .L_12c260               #  6     0x12c227  2      OPC=jne_label      
  jmpq .L_12c2a0              #  7     0x12c229  2      OPC=jmpq_label     
  nop                         #  8     0x12c22b  1      OPC=nop            
  nop                         #  9     0x12c22c  1      OPC=nop            
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
.L_12c240:                    #        0x12c23a  0      OPC=<label>        
  addl $0x1, %eax             #  23    0x12c23a  3      OPC=addl_r32_imm8  
  addl $0x1, %edi             #  24    0x12c23d  3      OPC=addl_r32_imm8  
  addl $0x1, %esi             #  25    0x12c240  3      OPC=addl_r32_imm8  
  cmpl %eax, %edx             #  26    0x12c243  2      OPC=cmpl_r32_r32   
  je .L_12c2a0                #  27    0x12c245  2      OPC=je_label       
  nop                         #  28    0x12c247  1      OPC=nop            
  nop                         #  29    0x12c248  1      OPC=nop            
  nop                         #  30    0x12c249  1      OPC=nop            
  nop                         #  31    0x12c24a  1      OPC=nop            
  nop                         #  32    0x12c24b  1      OPC=nop            
  nop                         #  33    0x12c24c  1      OPC=nop            
  nop                         #  34    0x12c24d  1      OPC=nop            
  nop                         #  35    0x12c24e  1      OPC=nop            
  nop                         #  36    0x12c24f  1      OPC=nop            
.L_12c260:                    #        0x12c250  0      OPC=<label>        
  movl %esi, %esi             #  37    0x12c250  2      OPC=movl_r32_r32   
  movzbq (%r15,%rsi,1), %rcx  #  38    0x12c252  5      OPC=movzbq_r64_m8  
  andw %cx, %cx               #  39    0x12c257  3      OPC=andw_r16_r16   
  movl %edi, %edi             #  40    0x12c25a  2      OPC=movl_r32_r32   
  movb %cl, (%r15,%rdi,1)     #  41    0x12c25c  4      OPC=movb_m8_r8     
  jne .L_12c240               #  42    0x12c260  2      OPC=jne_label      
  retq                        #  43    0x12c262  1      OPC=retq           
  nop                         #  44    0x12c263  1      OPC=nop            
  nop                         #  45    0x12c264  1      OPC=nop            
  nop                         #  46    0x12c265  1      OPC=nop            
  nop                         #  47    0x12c266  1      OPC=nop            
.L_12c280:                    #        0x12c267  0      OPC=<label>        
  addl $0x1, %esi             #  48    0x12c267  3      OPC=addl_r32_imm8  
  addl $0x1, %eax             #  49    0x12c26a  3      OPC=addl_r32_imm8  
  nop                         #  50    0x12c26d  1      OPC=nop            
  nop                         #  51    0x12c26e  1      OPC=nop            
  nop                         #  52    0x12c26f  1      OPC=nop            
  nop                         #  53    0x12c270  1      OPC=nop            
  nop                         #  54    0x12c271  1      OPC=nop            
  nop                         #  55    0x12c272  1      OPC=nop            
  nop                         #  56    0x12c273  1      OPC=nop            
  nop                         #  57    0x12c274  1      OPC=nop            
  nop                         #  58    0x12c275  1      OPC=nop            
  nop                         #  59    0x12c276  1      OPC=nop            
  nop                         #  60    0x12c277  1      OPC=nop            
  nop                         #  61    0x12c278  1      OPC=nop            
  nop                         #  62    0x12c279  1      OPC=nop            
  nop                         #  63    0x12c27a  1      OPC=nop            
  nop                         #  64    0x12c27b  1      OPC=nop            
.L_12c2a0:                    #        0x12c27c  0      OPC=<label>        
  movl %esi, %esi             #  65    0x12c27c  2      OPC=movl_r32_r32   
  cmpb $0x0, (%r15,%rsi,1)    #  66    0x12c27e  5      OPC=cmpb_m8_imm8   
  jne .L_12c280               #  67    0x12c283  2      OPC=jne_label      
  retq                        #  68    0x12c285  1      OPC=retq           
                                                                           
.size strxfrm, .-strxfrm
