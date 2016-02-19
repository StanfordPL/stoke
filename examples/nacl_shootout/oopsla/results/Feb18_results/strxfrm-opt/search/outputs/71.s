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
  nop                         #  7     0x12c227  1      OPC=nop             
  nop                         #  8     0x12c228  1      OPC=nop             
  nop                         #  9     0x12c229  1      OPC=nop             
  nop                         #  10    0x12c22a  1      OPC=nop             
  nop                         #  11    0x12c22b  1      OPC=nop             
  nop                         #  12    0x12c22c  1      OPC=nop             
  testl %edx, %edx            #  13    0x12c22d  2      OPC=testl_r32_r32   
  jne .L_12c260               #  14    0x12c22f  2      OPC=jne_label       
  jmpq .L_12c2a0              #  15    0x12c231  2      OPC=jmpq_label      
.L_12c240:                    #        0x12c233  0      OPC=<label>         
  addl $0x1, %esi             #  16    0x12c233  3      OPC=addl_r32_imm8   
  addl $0x1, %edi             #  17    0x12c236  3      OPC=addl_r32_imm8   
  addl $0x1, %eax             #  18    0x12c239  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx             #  19    0x12c23c  2      OPC=cmpl_r32_r32    
  je .L_12c2a0                #  20    0x12c23e  2      OPC=je_label        
.L_12c260:                    #        0x12c240  0      OPC=<label>         
  andl %esi, %esi             #  21    0x12c240  2      OPC=andl_r32_r32_1  
  movsbq (%r15,%rsi,1), %rcx  #  22    0x12c242  5      OPC=movsbq_r64_m8   
  andw %cx, %cx               #  23    0x12c247  3      OPC=andw_r16_r16    
  movl %edi, %edi             #  24    0x12c24a  2      OPC=movl_r32_r32    
  movb %cl, (%r15,%rdi,1)     #  25    0x12c24c  4      OPC=movb_m8_r8      
  jne .L_12c240               #  26    0x12c250  2      OPC=jne_label       
  nop                         #  27    0x12c252  1      OPC=nop             
  retq                        #  28    0x12c253  1      OPC=retq            
  nop                         #  29    0x12c254  1      OPC=nop             
  nop                         #  30    0x12c255  1      OPC=nop             
  nop                         #  31    0x12c256  1      OPC=nop             
  nop                         #  32    0x12c257  1      OPC=nop             
  nop                         #  33    0x12c258  1      OPC=nop             
  nop                         #  34    0x12c259  1      OPC=nop             
  nop                         #  35    0x12c25a  1      OPC=nop             
  nop                         #  36    0x12c25b  1      OPC=nop             
  nop                         #  37    0x12c25c  1      OPC=nop             
  nop                         #  38    0x12c25d  1      OPC=nop             
  nop                         #  39    0x12c25e  1      OPC=nop             
  nop                         #  40    0x12c25f  1      OPC=nop             
.L_12c280:                    #        0x12c260  0      OPC=<label>         
  addq $0x1, %rsi             #  41    0x12c260  7      OPC=addq_r64_imm32  
  addl $0x1, %eax             #  42    0x12c267  3      OPC=addl_r32_imm8   
  nop                         #  43    0x12c26a  1      OPC=nop             
  nop                         #  44    0x12c26b  1      OPC=nop             
  nop                         #  45    0x12c26c  1      OPC=nop             
  nop                         #  46    0x12c26d  1      OPC=nop             
.L_12c2a0:                    #        0x12c26e  0      OPC=<label>         
  orl %esi, %esi              #  47    0x12c26e  2      OPC=orl_r32_r32     
  cmpb $0x0, (%r15,%rsi,1)    #  48    0x12c270  5      OPC=cmpb_m8_imm8    
  jne .L_12c280               #  49    0x12c275  2      OPC=jne_label       
  nop                         #  50    0x12c277  1      OPC=nop             
  nop                         #  51    0x12c278  1      OPC=nop             
  retq                        #  52    0x12c279  1      OPC=retq            
                                                                            
.size strxfrm, .-strxfrm
