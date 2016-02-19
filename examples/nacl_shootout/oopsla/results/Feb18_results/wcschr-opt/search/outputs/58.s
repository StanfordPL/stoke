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
  jmpq .L_1412c0            #  3     0x141283  2      OPC=jmpq_label      
  nop                       #  4     0x141285  1      OPC=nop             
  nopl %eax                 #  5     0x141286  3      OPC=nopl_r32        
  nop                       #  6     0x141289  1      OPC=nop             
  nop                       #  7     0x14128a  1      OPC=nop             
.L_1412a0:                  #        0x14128b  0      OPC=<label>         
  addl $0x4, %eax           #  8     0x14128b  6      OPC=addl_r32_imm32  
.L_1412c0:                  #        0x141291  0      OPC=<label>         
  movl %eax, %eax           #  9     0x141291  2      OPC=movl_r32_r32_1  
  movl (%r15,%rax,1), %edx  #  10    0x141293  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  11    0x141297  2      OPC=cmpl_r32_r32    
  je .L_1412e0              #  12    0x141299  2      OPC=je_label        
  testl %edx, %edx          #  13    0x14129b  2      OPC=testl_r32_r32   
  jne .L_1412a0             #  14    0x14129d  2      OPC=jne_label       
  nop                       #  15    0x14129f  1      OPC=nop             
  subl %eax, %eax           #  16    0x1412a0  2      OPC=subl_r32_r32_1  
.L_1412e0:                  #        0x1412a2  0      OPC=<label>         
  retq                      #  17    0x1412a2  1      OPC=retq            
                                                                          
.size wcschr, .-wcschr
