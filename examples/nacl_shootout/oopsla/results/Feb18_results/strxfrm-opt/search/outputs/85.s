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
  nop                         #  5     0x12c225  1      OPC=nop            
  nop                         #  6     0x12c226  1      OPC=nop            
  nop                         #  7     0x12c227  1      OPC=nop            
  testl %edx, %edx            #  8     0x12c228  2      OPC=testl_r32_r32  
  jne .L_12c260               #  9     0x12c22a  2      OPC=jne_label      
  jmpq .L_12c2a0              #  10    0x12c22c  2      OPC=jmpq_label     
  nop                         #  11    0x12c22e  1      OPC=nop            
  nop                         #  12    0x12c22f  1      OPC=nop            
  nop                         #  13    0x12c230  1      OPC=nop            
  nop                         #  14    0x12c231  1      OPC=nop            
  nop                         #  15    0x12c232  1      OPC=nop            
  nop                         #  16    0x12c233  1      OPC=nop            
  nop                         #  17    0x12c234  1      OPC=nop            
  nop                         #  18    0x12c235  1      OPC=nop            
  nop                         #  19    0x12c236  1      OPC=nop            
.L_12c240:                    #        0x12c237  0      OPC=<label>        
  addl $0x1, %eax             #  20    0x12c237  3      OPC=addl_r32_imm8  
  addl $0x1, %edi             #  21    0x12c23a  3      OPC=addl_r32_imm8  
  addl $0x1, %esi             #  22    0x12c23d  3      OPC=addl_r32_imm8  
  cmpl %eax, %edx             #  23    0x12c240  2      OPC=cmpl_r32_r32   
  je .L_12c2a0                #  24    0x12c242  2      OPC=je_label       
  nop                         #  25    0x12c244  1      OPC=nop            
  nop                         #  26    0x12c245  1      OPC=nop            
  nop                         #  27    0x12c246  1      OPC=nop            
  nop                         #  28    0x12c247  1      OPC=nop            
  nop                         #  29    0x12c248  1      OPC=nop            
  nop                         #  30    0x12c249  1      OPC=nop            
  nop                         #  31    0x12c24a  1      OPC=nop            
  nop                         #  32    0x12c24b  1      OPC=nop            
  nop                         #  33    0x12c24c  1      OPC=nop            
  nop                         #  34    0x12c24d  1      OPC=nop            
  nop                         #  35    0x12c24e  1      OPC=nop            
  nop                         #  36    0x12c24f  1      OPC=nop            
  nop                         #  37    0x12c250  1      OPC=nop            
.L_12c260:                    #        0x12c251  0      OPC=<label>        
  movl %esi, %esi             #  38    0x12c251  2      OPC=movl_r32_r32   
  movzbl (%r15,%rsi,1), %ecx  #  39    0x12c253  5      OPC=movzbl_r32_m8  
  testb %cl, %cl              #  40    0x12c258  2      OPC=testb_r8_r8    
  movl %edi, %edi             #  41    0x12c25a  2      OPC=movl_r32_r32   
  movb %cl, (%r15,%rdi,1)     #  42    0x12c25c  4      OPC=movb_m8_r8     
  jne .L_12c240               #  43    0x12c260  2      OPC=jne_label      
  retq                        #  44    0x12c262  1      OPC=retq           
  nop                         #  45    0x12c263  1      OPC=nop            
  nop                         #  46    0x12c264  1      OPC=nop            
  nop                         #  47    0x12c265  1      OPC=nop            
  nop                         #  48    0x12c266  1      OPC=nop            
  nop                         #  49    0x12c267  1      OPC=nop            
  nop                         #  50    0x12c268  1      OPC=nop            
.L_12c280:                    #        0x12c269  0      OPC=<label>        
  addl $0x1, %esi             #  51    0x12c269  3      OPC=addl_r32_imm8  
  addl $0x1, %eax             #  52    0x12c26c  3      OPC=addl_r32_imm8  
  nop                         #  53    0x12c26f  1      OPC=nop            
  nop                         #  54    0x12c270  1      OPC=nop            
  nop                         #  55    0x12c271  1      OPC=nop            
  nop                         #  56    0x12c272  1      OPC=nop            
  nop                         #  57    0x12c273  1      OPC=nop            
  nop                         #  58    0x12c274  1      OPC=nop            
  nop                         #  59    0x12c275  1      OPC=nop            
  nop                         #  60    0x12c276  1      OPC=nop            
  nop                         #  61    0x12c277  1      OPC=nop            
  nop                         #  62    0x12c278  1      OPC=nop            
  nop                         #  63    0x12c279  1      OPC=nop            
  nop                         #  64    0x12c27a  1      OPC=nop            
  nop                         #  65    0x12c27b  1      OPC=nop            
.L_12c2a0:                    #        0x12c27c  0      OPC=<label>        
  andl %esi, %esi             #  66    0x12c27c  2      OPC=andl_r32_r32   
  cmpb $0x0, (%r15,%rsi,1)    #  67    0x12c27e  5      OPC=cmpb_m8_imm8   
  jne .L_12c280               #  68    0x12c283  2      OPC=jne_label      
  retq                        #  69    0x12c285  1      OPC=retq           
                                                                           
.size strxfrm, .-strxfrm
