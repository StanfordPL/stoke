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
  nop                         #  4     0x12c224  1      OPC=nop             
  nop                         #  5     0x12c225  1      OPC=nop             
  nop                         #  6     0x12c226  1      OPC=nop             
  nop                         #  7     0x12c227  1      OPC=nop             
  nop                         #  8     0x12c228  1      OPC=nop             
  nop                         #  9     0x12c229  1      OPC=nop             
  nop                         #  10    0x12c22a  1      OPC=nop             
  testl %edx, %edx            #  11    0x12c22b  2      OPC=testl_r32_r32   
  jne .L_12c260               #  12    0x12c22d  2      OPC=jne_label       
  jmpq .L_12c2a0              #  13    0x12c22f  2      OPC=jmpq_label      
  nop                         #  14    0x12c231  1      OPC=nop             
  nop                         #  15    0x12c232  1      OPC=nop             
.L_12c240:                    #        0x12c233  0      OPC=<label>         
  addl $0x1, %esi             #  16    0x12c233  3      OPC=addl_r32_imm8   
  addl $0x1, %eax             #  17    0x12c236  3      OPC=addl_r32_imm8   
  addl $0x1, %edi             #  18    0x12c239  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx             #  19    0x12c23c  2      OPC=cmpl_r32_r32    
  je .L_12c2a0                #  20    0x12c23e  2      OPC=je_label        
.L_12c260:                    #        0x12c240  0      OPC=<label>         
  andl %esi, %esi             #  21    0x12c240  2      OPC=andl_r32_r32_1  
  movzbq (%r15,%rsi,1), %rcx  #  22    0x12c242  5      OPC=movzbq_r64_m8   
  testb %cl, %cl              #  23    0x12c247  2      OPC=testb_r8_r8     
  movl %edi, %edi             #  24    0x12c249  2      OPC=movl_r32_r32    
  movb %cl, (%r15,%rdi,1)     #  25    0x12c24b  4      OPC=movb_m8_r8      
  jne .L_12c240               #  26    0x12c24f  2      OPC=jne_label       
  retq                        #  27    0x12c251  1      OPC=retq            
.L_12c280:                    #        0x12c252  0      OPC=<label>         
  addl $0x1, %eax             #  28    0x12c252  3      OPC=addl_r32_imm8   
  addl $0x1, %esi             #  29    0x12c255  3      OPC=addl_r32_imm8   
.L_12c2a0:                    #        0x12c258  0      OPC=<label>         
  movl %esi, %esi             #  30    0x12c258  2      OPC=movl_r32_r32_1  
  cmpb $0x0, (%r15,%rsi,1)    #  31    0x12c25a  5      OPC=cmpb_m8_imm8    
  jne .L_12c280               #  32    0x12c25f  2      OPC=jne_label       
  nop                         #  33    0x12c261  1      OPC=nop             
  retq                        #  34    0x12c262  1      OPC=retq            
                                                                            
.size strxfrm, .-strxfrm
