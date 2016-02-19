  .text
  .globl wcschr
  .type wcschr, @function

#! file-offset 0x181280
#! rip-offset  0x141280
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcschr:                    #        0x141280  0      OPC=<label>         
  movl %edi, %eax           #  1     0x141280  2      OPC=movl_r32_r32    
  jmpq .L_1412c0            #  2     0x141282  2      OPC=jmpq_label      
  nop                       #  3     0x141284  1      OPC=nop             
  nop                       #  4     0x141285  1      OPC=nop             
  nop                       #  5     0x141286  1      OPC=nop             
  nop                       #  6     0x141287  1      OPC=nop             
  nop                       #  7     0x141288  1      OPC=nop             
  nop                       #  8     0x141289  1      OPC=nop             
  nop                       #  9     0x14128a  1      OPC=nop             
.L_1412a0:                  #        0x14128b  0      OPC=<label>         
  addl $0x4, %eax           #  10    0x14128b  3      OPC=addl_r32_imm8   
  nop                       #  11    0x14128e  1      OPC=nop             
  nop                       #  12    0x14128f  1      OPC=nop             
  nop                       #  13    0x141290  1      OPC=nop             
  nop                       #  14    0x141291  1      OPC=nop             
  nop                       #  15    0x141292  1      OPC=nop             
  nop                       #  16    0x141293  1      OPC=nop             
  nop                       #  17    0x141294  1      OPC=nop             
  nop                       #  18    0x141295  1      OPC=nop             
.L_1412c0:                  #        0x141296  0      OPC=<label>         
  movl %eax, %eax           #  19    0x141296  2      OPC=movl_r32_r32_1  
  movl (%r15,%rax,1), %edx  #  20    0x141298  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  21    0x14129c  2      OPC=cmpl_r32_r32    
  je .L_1412e0              #  22    0x14129e  2      OPC=je_label        
  testl %edx, %edx          #  23    0x1412a0  2      OPC=testl_r32_r32   
  jne .L_1412a0             #  24    0x1412a2  2      OPC=jne_label       
  xorl %eax, %eax           #  25    0x1412a4  2      OPC=xorl_r32_r32    
  nop                       #  26    0x1412a6  1      OPC=nop             
  nop                       #  27    0x1412a7  1      OPC=nop             
  nop                       #  28    0x1412a8  1      OPC=nop             
  nop                       #  29    0x1412a9  1      OPC=nop             
  nop                       #  30    0x1412aa  1      OPC=nop             
  nop                       #  31    0x1412ab  1      OPC=nop             
  nop                       #  32    0x1412ac  1      OPC=nop             
  andb $0x2, %ah            #  33    0x1412ad  3      OPC=andb_rh_imm8    
  nop                       #  34    0x1412b0  1      OPC=nop             
  nop                       #  35    0x1412b1  1      OPC=nop             
  nop                       #  36    0x1412b2  1      OPC=nop             
.L_1412e0:                  #        0x1412b3  0      OPC=<label>         
  retq                      #  37    0x1412b3  1      OPC=retq            
                                                                          
.size wcschr, .-wcschr
