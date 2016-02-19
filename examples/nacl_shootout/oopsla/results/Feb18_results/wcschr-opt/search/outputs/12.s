  .text
  .globl wcschr
  .type wcschr, @function

#! file-offset 0x181280
#! rip-offset  0x141280
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcschr:                    #        0x141280  0      OPC=<label>        
  nop                       #  1     0x141280  1      OPC=nop            
  nop                       #  2     0x141281  1      OPC=nop            
  nop                       #  3     0x141282  1      OPC=nop            
  nop                       #  4     0x141283  1      OPC=nop            
  movl %edi, %eax           #  5     0x141284  2      OPC=movl_r32_r32   
  jmpq .L_1412c0            #  6     0x141286  2      OPC=jmpq_label     
.L_1412a0:                  #        0x141288  0      OPC=<label>        
  addl $0x4, %eax           #  7     0x141288  3      OPC=addl_r32_imm8  
.L_1412c0:                  #        0x14128b  0      OPC=<label>        
  orl %eax, %eax            #  8     0x14128b  2      OPC=orl_r32_r32    
  movl (%r15,%rax,1), %edx  #  9     0x14128d  4      OPC=movl_r32_m32   
  cmpl %esi, %edx           #  10    0x141291  2      OPC=cmpl_r32_r32   
  je .L_1412e0              #  11    0x141293  2      OPC=je_label       
  shrl $0x1, %edx           #  12    0x141295  3      OPC=shrl_r32_imm8  
  jne .L_1412a0             #  13    0x141298  2      OPC=jne_label      
  subl %eax, %eax           #  14    0x14129a  2      OPC=subl_r32_r32   
.L_1412e0:                  #        0x14129c  0      OPC=<label>        
  nop                       #  15    0x14129c  1      OPC=nop            
  nop                       #  16    0x14129d  1      OPC=nop            
  nop                       #  17    0x14129e  1      OPC=nop            
  nop                       #  18    0x14129f  1      OPC=nop            
  retq                      #  19    0x1412a0  1      OPC=retq           
                                                                         
.size wcschr, .-wcschr
