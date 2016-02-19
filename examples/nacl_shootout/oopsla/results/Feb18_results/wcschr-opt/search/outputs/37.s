  .text
  .globl wcschr
  .type wcschr, @function

#! file-offset 0x181280
#! rip-offset  0x141280
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcschr:                    #        0x141280  0      OPC=<label>         
  nop                       #  1     0x141280  1      OPC=nop             
  movl %edi, %eax           #  2     0x141281  2      OPC=movl_r32_r32    
  nop                       #  3     0x141283  1      OPC=nop             
  nop                       #  4     0x141284  1      OPC=nop             
  nop                       #  5     0x141285  1      OPC=nop             
  jmpq .L_1412c0            #  6     0x141286  2      OPC=jmpq_label      
  nop                       #  7     0x141288  1      OPC=nop             
  nop                       #  8     0x141289  1      OPC=nop             
  nop                       #  9     0x14128a  1      OPC=nop             
  nop                       #  10    0x14128b  1      OPC=nop             
  nop                       #  11    0x14128c  1      OPC=nop             
.L_1412a0:                  #        0x14128d  0      OPC=<label>         
  addl $0x4, %eax           #  12    0x14128d  3      OPC=addl_r32_imm8   
.L_1412c0:                  #        0x141290  0      OPC=<label>         
  andl %eax, %eax           #  13    0x141290  2      OPC=andl_r32_r32    
  movl (%r15,%rax,1), %edx  #  14    0x141292  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  15    0x141296  2      OPC=cmpl_r32_r32    
  je .L_1412e0              #  16    0x141298  2      OPC=je_label        
  testl %edx, %edx          #  17    0x14129a  2      OPC=testl_r32_r32   
  jne .L_1412a0             #  18    0x14129c  2      OPC=jne_label       
  nop                       #  19    0x14129e  1      OPC=nop             
  nop                       #  20    0x14129f  1      OPC=nop             
  nop                       #  21    0x1412a0  1      OPC=nop             
  xorl %eax, %eax           #  22    0x1412a1  2      OPC=xorl_r32_r32_1  
  nop                       #  23    0x1412a3  1      OPC=nop             
.L_1412e0:                  #        0x1412a4  0      OPC=<label>         
  retq                      #  24    0x1412a4  1      OPC=retq            
                                                                          
.size wcschr, .-wcschr
