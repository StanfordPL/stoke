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
  movl %edi, %eax           #  4     0x141283  2      OPC=movl_r32_r32   
  nop                       #  5     0x141285  1      OPC=nop            
  nop                       #  6     0x141286  1      OPC=nop            
  nop                       #  7     0x141287  1      OPC=nop            
  jmpq .L_1412c0            #  8     0x141288  2      OPC=jmpq_label     
  nop                       #  9     0x14128a  1      OPC=nop            
  nop                       #  10    0x14128b  1      OPC=nop            
  nop                       #  11    0x14128c  1      OPC=nop            
  nop                       #  12    0x14128d  1      OPC=nop            
  nop                       #  13    0x14128e  1      OPC=nop            
  nop                       #  14    0x14128f  1      OPC=nop            
  nop                       #  15    0x141290  1      OPC=nop            
.L_1412a0:                  #        0x141291  0      OPC=<label>        
  addl $0x4, %eax           #  16    0x141291  3      OPC=addl_r32_imm8  
.L_1412c0:                  #        0x141294  0      OPC=<label>        
  orl %eax, %eax            #  17    0x141294  2      OPC=orl_r32_r32_1  
  movl (%r15,%rax,1), %edx  #  18    0x141296  4      OPC=movl_r32_m32   
  cmpl %esi, %edx           #  19    0x14129a  2      OPC=cmpl_r32_r32   
  je .L_1412e0              #  20    0x14129c  2      OPC=je_label       
  testl %edx, %edx          #  21    0x14129e  2      OPC=testl_r32_r32  
  jne .L_1412a0             #  22    0x1412a0  2      OPC=jne_label      
  nop                       #  23    0x1412a2  1      OPC=nop            
  nop                       #  24    0x1412a3  1      OPC=nop            
  nop                       #  25    0x1412a4  1      OPC=nop            
  nop                       #  26    0x1412a5  1      OPC=nop            
  nop                       #  27    0x1412a6  1      OPC=nop            
  nop                       #  28    0x1412a7  1      OPC=nop            
  nop                       #  29    0x1412a8  1      OPC=nop            
  xorl %eax, %eax           #  30    0x1412a9  2      OPC=xorl_r32_r32   
  nop                       #  31    0x1412ab  1      OPC=nop            
  nop                       #  32    0x1412ac  1      OPC=nop            
  nop                       #  33    0x1412ad  1      OPC=nop            
  nop                       #  34    0x1412ae  1      OPC=nop            
.L_1412e0:                  #        0x1412af  0      OPC=<label>        
  retq                      #  35    0x1412af  1      OPC=retq           
                                                                         
.size wcschr, .-wcschr
