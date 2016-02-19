  .text
  .globl strxfrm
  .type strxfrm, @function

#! file-offset 0x16c220
#! rip-offset  0x12c220
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.strxfrm:                       #        0x12c220  0      OPC=<label>        
  xorq %rax, %rax               #  1     0x12c220  3      OPC=xorq_r64_r64   
  nop                           #  2     0x12c223  1      OPC=nop            
  nop                           #  3     0x12c224  1      OPC=nop            
  testl %edx, %edx              #  4     0x12c225  2      OPC=testl_r32_r32  
  jne .L_12c260                 #  5     0x12c227  2      OPC=jne_label      
  jmpq .L_12c2a0                #  6     0x12c229  2      OPC=jmpq_label     
  nop                           #  7     0x12c22b  1      OPC=nop            
  nop                           #  8     0x12c22c  1      OPC=nop            
  nop                           #  9     0x12c22d  1      OPC=nop            
  nop                           #  10    0x12c22e  1      OPC=nop            
  nop                           #  11    0x12c22f  1      OPC=nop            
.L_12c240:                      #        0x12c230  0      OPC=<label>        
  addw $0x1, %ax                #  12    0x12c230  4      OPC=addw_r16_imm8  
  decw %dx                      #  13    0x12c234  3      OPC=decw_r16       
  je .L_12c2a0                  #  14    0x12c237  2      OPC=je_label       
.L_12c260:                      #        0x12c239  0      OPC=<label>        
  orl %esi, %esi                #  15    0x12c239  2      OPC=orl_r32_r32    
  movsbl (%r15,%rsi,1), %ecx    #  16    0x12c23b  5      OPC=movsbl_r32_m8  
  subl $0xff, %edi              #  17    0x12c240  3      OPC=subl_r32_imm8  
  movb %cl, -0x1(%r15,%rdi,1)   #  18    0x12c243  5      OPC=movb_m8_r8     
  addl $0x1, %esi               #  19    0x12c248  3      OPC=addl_r32_imm8  
  testb %cl, %cl                #  20    0x12c24b  2      OPC=testb_r8_r8    
  jne .L_12c240                 #  21    0x12c24d  2      OPC=jne_label      
  nop                           #  22    0x12c24f  1      OPC=nop            
  retq                          #  23    0x12c250  1      OPC=retq           
  nop                           #  24    0x12c251  1      OPC=nop            
  nop                           #  25    0x12c252  1      OPC=nop            
  nop                           #  26    0x12c253  1      OPC=nop            
  nop                           #  27    0x12c254  1      OPC=nop            
.L_12c280:                      #        0x12c255  0      OPC=<label>        
  addl $0x1, %eax               #  28    0x12c255  3      OPC=addl_r32_imm8  
.L_12c2a0:                      #        0x12c258  0      OPC=<label>        
  addl $0x1, %esi               #  29    0x12c258  3      OPC=addl_r32_imm8  
  cmpb $0x0, -0x1(%r15,%rsi,1)  #  30    0x12c25b  6      OPC=cmpb_m8_imm8   
  jne .L_12c280                 #  31    0x12c261  2      OPC=jne_label      
  nop                           #  32    0x12c263  1      OPC=nop            
  nop                           #  33    0x12c264  1      OPC=nop            
  nop                           #  34    0x12c265  1      OPC=nop            
  nop                           #  35    0x12c266  1      OPC=nop            
  retq                          #  36    0x12c267  1      OPC=retq           
                                                                             
.size strxfrm, .-strxfrm
