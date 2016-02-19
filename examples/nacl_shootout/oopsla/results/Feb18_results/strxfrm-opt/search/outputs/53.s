  .text
  .globl strxfrm
  .type strxfrm, @function

#! file-offset 0x16c220
#! rip-offset  0x12c220
#! capacity    160 bytes

# Text                       #  Line  RIP       Bytes  Opcode              
.strxfrm:                    #        0x12c220  0      OPC=<label>         
  nop                        #  1     0x12c220  1      OPC=nop             
  xorl %eax, %eax            #  2     0x12c221  2      OPC=xorl_r32_r32    
  nop                        #  3     0x12c223  1      OPC=nop             
  nop                        #  4     0x12c224  1      OPC=nop             
  nop                        #  5     0x12c225  1      OPC=nop             
  nop                        #  6     0x12c226  1      OPC=nop             
  testl %edx, %edx           #  7     0x12c227  2      OPC=testl_r32_r32   
  jne .L_12c260              #  8     0x12c229  2      OPC=jne_label       
  nop                        #  9     0x12c22b  1      OPC=nop             
  nop                        #  10    0x12c22c  1      OPC=nop             
  jmpq .L_12c2a0             #  11    0x12c22d  2      OPC=jmpq_label      
  nop                        #  12    0x12c22f  1      OPC=nop             
  nop                        #  13    0x12c230  1      OPC=nop             
  nop                        #  14    0x12c231  1      OPC=nop             
  nop                        #  15    0x12c232  1      OPC=nop             
  nop                        #  16    0x12c233  1      OPC=nop             
  nop                        #  17    0x12c234  1      OPC=nop             
  nop                        #  18    0x12c235  1      OPC=nop             
  nop                        #  19    0x12c236  1      OPC=nop             
  nop                        #  20    0x12c237  1      OPC=nop             
  nop                        #  21    0x12c238  1      OPC=nop             
  nop                        #  22    0x12c239  1      OPC=nop             
  nop                        #  23    0x12c23a  1      OPC=nop             
.L_12c240:                   #        0x12c23b  0      OPC=<label>         
  addl $0x1, %eax            #  24    0x12c23b  5      OPC=addl_eax_imm32  
  addl $0x1, %esi            #  25    0x12c240  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx            #  26    0x12c243  2      OPC=cmpl_r32_r32    
  je .L_12c2a0               #  27    0x12c245  2      OPC=je_label        
  nop                        #  28    0x12c247  1      OPC=nop             
  nop                        #  29    0x12c248  1      OPC=nop             
  nop                        #  30    0x12c249  1      OPC=nop             
  nop                        #  31    0x12c24a  1      OPC=nop             
  addl $0x1, %edi            #  32    0x12c24b  3      OPC=addl_r32_imm8   
.L_12c260:                   #        0x12c24e  0      OPC=<label>         
  movl %esi, %esi            #  33    0x12c24e  2      OPC=movl_r32_r32    
  movzbw (%r15,%rsi,1), %cx  #  34    0x12c250  6      OPC=movzbw_r16_m8   
  testb %cl, %cl             #  35    0x12c256  2      OPC=testb_r8_r8     
  movl %edi, %edi            #  36    0x12c258  2      OPC=movl_r32_r32_1  
  movb %cl, (%r15,%rdi,1)    #  37    0x12c25a  4      OPC=movb_m8_r8      
  jne .L_12c240              #  38    0x12c25e  2      OPC=jne_label       
  nop                        #  39    0x12c260  1      OPC=nop             
  retq                       #  40    0x12c261  1      OPC=retq            
.L_12c280:                   #        0x12c262  0      OPC=<label>         
  addl $0x1, %eax            #  41    0x12c262  3      OPC=addl_r32_imm8   
  addq $0x1, %rsi            #  42    0x12c265  4      OPC=addq_r64_imm8   
  nop                        #  43    0x12c269  1      OPC=nop             
.L_12c2a0:                   #        0x12c26a  0      OPC=<label>         
  movl %esi, %esi            #  44    0x12c26a  2      OPC=movl_r32_r32_1  
  cmpb $0x0, (%r15,%rsi,1)   #  45    0x12c26c  5      OPC=cmpb_m8_imm8    
  jne .L_12c280              #  46    0x12c271  2      OPC=jne_label       
  nop                        #  47    0x12c273  1      OPC=nop             
  nop                        #  48    0x12c274  1      OPC=nop             
  retq                       #  49    0x12c275  1      OPC=retq            
                                                                           
.size strxfrm, .-strxfrm
