  .text
  .globl strxfrm
  .type strxfrm, @function

#! file-offset 0x16c220
#! rip-offset  0x12c220
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.strxfrm:                       #        0x12c220  0      OPC=<label>        
  nop                           #  1     0x12c220  1      OPC=nop            
  nop                           #  2     0x12c221  1      OPC=nop            
  xorl %eax, %eax               #  3     0x12c222  2      OPC=xorl_r32_r32   
  testl %edx, %edx              #  4     0x12c224  2      OPC=testl_r32_r32  
  nop                           #  5     0x12c226  1      OPC=nop            
  nop                           #  6     0x12c227  1      OPC=nop            
  nop                           #  7     0x12c228  1      OPC=nop            
  nop                           #  8     0x12c229  1      OPC=nop            
  nop                           #  9     0x12c22a  1      OPC=nop            
  nop                           #  10    0x12c22b  1      OPC=nop            
  jne .L_12c260                 #  11    0x12c22c  2      OPC=jne_label      
  nop                           #  12    0x12c22e  1      OPC=nop            
  nop                           #  13    0x12c22f  1      OPC=nop            
  jmpq .L_12c2a0                #  14    0x12c230  2      OPC=jmpq_label     
  nop                           #  15    0x12c232  1      OPC=nop            
  nop                           #  16    0x12c233  1      OPC=nop            
  nop                           #  17    0x12c234  1      OPC=nop            
  nop                           #  18    0x12c235  1      OPC=nop            
  nop                           #  19    0x12c236  1      OPC=nop            
  nop                           #  20    0x12c237  1      OPC=nop            
  nop                           #  21    0x12c238  1      OPC=nop            
  nop                           #  22    0x12c239  1      OPC=nop            
  nop                           #  23    0x12c23a  1      OPC=nop            
  nop                           #  24    0x12c23b  1      OPC=nop            
  nop                           #  25    0x12c23c  1      OPC=nop            
.L_12c240:                      #        0x12c23d  0      OPC=<label>        
  addl $0x1, %eax               #  26    0x12c23d  3      OPC=addl_r32_imm8  
  addl $0x1, %edi               #  27    0x12c240  3      OPC=addl_r32_imm8  
  addl $0x1, %esi               #  28    0x12c243  3      OPC=addl_r32_imm8  
  cmpl %eax, %edx               #  29    0x12c246  2      OPC=cmpl_r32_r32   
  je .L_12c2a0                  #  30    0x12c248  2      OPC=je_label       
  nop                           #  31    0x12c24a  1      OPC=nop            
  nop                           #  32    0x12c24b  1      OPC=nop            
  nop                           #  33    0x12c24c  1      OPC=nop            
  nop                           #  34    0x12c24d  1      OPC=nop            
  nop                           #  35    0x12c24e  1      OPC=nop            
.L_12c260:                      #        0x12c24f  0      OPC=<label>        
  movl %esi, %esi               #  36    0x12c24f  2      OPC=movl_r32_r32   
  movzbl (%r15,%rsi,1), %ecx    #  37    0x12c251  5      OPC=movzbl_r32_m8  
  testb %cl, %cl                #  38    0x12c256  2      OPC=testb_r8_r8    
  movl %edi, %edi               #  39    0x12c258  2      OPC=movl_r32_r32   
  movb %cl, (%r15,%rdi,1)       #  40    0x12c25a  4      OPC=movb_m8_r8     
  jne .L_12c240                 #  41    0x12c25e  2      OPC=jne_label      
  retq                          #  42    0x12c260  1      OPC=retq           
  nop                           #  43    0x12c261  1      OPC=nop            
  nop                           #  44    0x12c262  1      OPC=nop            
.L_12c280:                      #        0x12c263  0      OPC=<label>        
  andl %esi, %esi               #  45    0x12c263  2      OPC=andl_r32_r32   
  addl $0x1, %eax               #  46    0x12c265  3      OPC=addl_r32_imm8  
  nop                           #  47    0x12c268  1      OPC=nop            
  nop                           #  48    0x12c269  1      OPC=nop            
  nop                           #  49    0x12c26a  1      OPC=nop            
  nop                           #  50    0x12c26b  1      OPC=nop            
  nop                           #  51    0x12c26c  1      OPC=nop            
  nop                           #  52    0x12c26d  1      OPC=nop            
  nop                           #  53    0x12c26e  1      OPC=nop            
  nop                           #  54    0x12c26f  1      OPC=nop            
  nop                           #  55    0x12c270  1      OPC=nop            
  nop                           #  56    0x12c271  1      OPC=nop            
  nop                           #  57    0x12c272  1      OPC=nop            
  nop                           #  58    0x12c273  1      OPC=nop            
  nop                           #  59    0x12c274  1      OPC=nop            
  nop                           #  60    0x12c275  1      OPC=nop            
  nop                           #  61    0x12c276  1      OPC=nop            
.L_12c2a0:                      #        0x12c277  0      OPC=<label>        
  addl $0x1, %esi               #  62    0x12c277  3      OPC=addl_r32_imm8  
  cmpb $0x0, -0x1(%r15,%rsi,1)  #  63    0x12c27a  6      OPC=cmpb_m8_imm8   
  jne .L_12c280                 #  64    0x12c280  2      OPC=jne_label      
  retq                          #  65    0x12c282  1      OPC=retq           
                                                                             
.size strxfrm, .-strxfrm
