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
.L_1412a0:                  #        0x14128a  0      OPC=<label>         
  addl $0x4, %eax           #  9     0x14128a  3      OPC=addl_r32_imm8   
.L_1412c0:                  #        0x14128d  0      OPC=<label>         
  movl %eax, %eax           #  10    0x14128d  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx  #  11    0x14128f  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  12    0x141293  2      OPC=cmpl_r32_r32    
  je .L_1412e0              #  13    0x141295  2      OPC=je_label        
  testl %edx, %edx          #  14    0x141297  2      OPC=testl_r32_r32   
  jne .L_1412a0             #  15    0x141299  2      OPC=jne_label       
  subl %eax, %eax           #  16    0x14129b  2      OPC=subl_r32_r32_1  
.L_1412e0:                  #        0x14129d  0      OPC=<label>         
  nop                       #  17    0x14129d  1      OPC=nop             
  nop                       #  18    0x14129e  1      OPC=nop             
  nop                       #  19    0x14129f  1      OPC=nop             
  nop                       #  20    0x1412a0  1      OPC=nop             
  nop                       #  21    0x1412a1  1      OPC=nop             
  nop                       #  22    0x1412a2  1      OPC=nop             
  nop                       #  23    0x1412a3  1      OPC=nop             
  nop                       #  24    0x1412a4  1      OPC=nop             
  nop                       #  25    0x1412a5  1      OPC=nop             
  nop                       #  26    0x1412a6  1      OPC=nop             
  nop                       #  27    0x1412a7  1      OPC=nop             
  nop                       #  28    0x1412a8  1      OPC=nop             
  nop                       #  29    0x1412a9  1      OPC=nop             
  nop                       #  30    0x1412aa  1      OPC=nop             
  retq                      #  31    0x1412ab  1      OPC=retq            
                                                                          
.size wcschr, .-wcschr
