  .text
  .globl strxfrm
  .type strxfrm, @function

#! file-offset 0x16c220
#! rip-offset  0x12c220
#! capacity    160 bytes

# Text                       #  Line  RIP       Bytes  Opcode             
.strxfrm:                    #        0x12c220  0      OPC=<label>        
  xorl %eax, %eax            #  1     0x12c220  2      OPC=xorl_r32_r32   
  nop                        #  2     0x12c222  1      OPC=nop            
  nop                        #  3     0x12c223  1      OPC=nop            
  testl %edx, %edx           #  4     0x12c224  2      OPC=testl_r32_r32  
  nop                        #  5     0x12c226  1      OPC=nop            
  nop                        #  6     0x12c227  1      OPC=nop            
  nop                        #  7     0x12c228  1      OPC=nop            
  nop                        #  8     0x12c229  1      OPC=nop            
  nop                        #  9     0x12c22a  1      OPC=nop            
  nop                        #  10    0x12c22b  1      OPC=nop            
  jne .L_12c260              #  11    0x12c22c  2      OPC=jne_label      
  nop                        #  12    0x12c22e  1      OPC=nop            
  nop                        #  13    0x12c22f  1      OPC=nop            
  nop                        #  14    0x12c230  1      OPC=nop            
  nop                        #  15    0x12c231  1      OPC=nop            
  nop                        #  16    0x12c232  1      OPC=nop            
  nop                        #  17    0x12c233  1      OPC=nop            
  nop                        #  18    0x12c234  1      OPC=nop            
  nop                        #  19    0x12c235  1      OPC=nop            
  nop                        #  20    0x12c236  1      OPC=nop            
  nop                        #  21    0x12c237  1      OPC=nop            
  nop                        #  22    0x12c238  1      OPC=nop            
  nop                        #  23    0x12c239  1      OPC=nop            
  nop                        #  24    0x12c23a  1      OPC=nop            
  nop                        #  25    0x12c23b  1      OPC=nop            
  nop                        #  26    0x12c23c  1      OPC=nop            
  nop                        #  27    0x12c23d  1      OPC=nop            
  nop                        #  28    0x12c23e  1      OPC=nop            
  nop                        #  29    0x12c23f  1      OPC=nop            
  jmpq .L_12c2a0             #  30    0x12c240  2      OPC=jmpq_label     
.L_12c240:                   #        0x12c242  0      OPC=<label>        
  addl $0x1, %esi            #  31    0x12c242  3      OPC=addl_r32_imm8  
  addl $0x1, %edi            #  32    0x12c245  3      OPC=addl_r32_imm8  
  addw $0x1, %ax             #  33    0x12c248  4      OPC=addw_r16_imm8  
  cmpl %eax, %edx            #  34    0x12c24c  2      OPC=cmpl_r32_r32   
  je .L_12c2a0               #  35    0x12c24e  2      OPC=je_label       
.L_12c260:                   #        0x12c250  0      OPC=<label>        
  orl %esi, %esi             #  36    0x12c250  2      OPC=orl_r32_r32_1  
  movsbw (%r15,%rsi,1), %cx  #  37    0x12c252  6      OPC=movsbw_r16_m8  
  testb %cl, %cl             #  38    0x12c258  2      OPC=testb_r8_r8    
  movl %edi, %edi            #  39    0x12c25a  2      OPC=movl_r32_r32   
  movb %cl, (%r15,%rdi,1)    #  40    0x12c25c  4      OPC=movb_m8_r8     
  jne .L_12c240              #  41    0x12c260  2      OPC=jne_label      
  retq                       #  42    0x12c262  1      OPC=retq           
.L_12c280:                   #        0x12c263  0      OPC=<label>        
  addl $0x1, %eax            #  43    0x12c263  3      OPC=addl_r32_imm8  
  addq $0x1, %rsi            #  44    0x12c266  4      OPC=addq_r64_imm8  
.L_12c2a0:                   #        0x12c26a  0      OPC=<label>        
  orl %esi, %esi             #  45    0x12c26a  2      OPC=orl_r32_r32    
  cmpb $0x0, (%r15,%rsi,1)   #  46    0x12c26c  5      OPC=cmpb_m8_imm8   
  jne .L_12c280              #  47    0x12c271  2      OPC=jne_label      
  nop                        #  48    0x12c273  1      OPC=nop            
  nop                        #  49    0x12c274  1      OPC=nop            
  nop                        #  50    0x12c275  1      OPC=nop            
  nop                        #  51    0x12c276  1      OPC=nop            
  retq                       #  52    0x12c277  1      OPC=retq           
                                                                          
.size strxfrm, .-strxfrm
