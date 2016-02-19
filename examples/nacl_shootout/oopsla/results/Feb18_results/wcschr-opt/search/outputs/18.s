  .text
  .globl wcschr
  .type wcschr, @function

#! file-offset 0x181280
#! rip-offset  0x141280
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcschr:                    #        0x141280  0      OPC=<label>         
  nop                       #  1     0x141280  1      OPC=nop             
  movq %rdi, %rax           #  2     0x141281  3      OPC=movq_r64_r64    
  nop                       #  3     0x141284  1      OPC=nop             
  nop                       #  4     0x141285  1      OPC=nop             
  jmpq .L_1412c0            #  5     0x141286  2      OPC=jmpq_label      
  nop                       #  6     0x141288  1      OPC=nop             
.L_1412a0:                  #        0x141289  0      OPC=<label>         
  addl $0x4, %eax           #  7     0x141289  5      OPC=addl_eax_imm32  
.L_1412c0:                  #        0x14128e  0      OPC=<label>         
  xorl $0x0, %eax           #  8     0x14128e  5      OPC=xorl_eax_imm32  
  movl (%r15,%rax,1), %edx  #  9     0x141293  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  10    0x141297  2      OPC=cmpl_r32_r32    
  je .L_1412e0              #  11    0x141299  2      OPC=je_label        
  testl %edx, %edx          #  12    0x14129b  2      OPC=testl_r32_r32   
  jne .L_1412a0             #  13    0x14129d  2      OPC=jne_label       
  nop                       #  14    0x14129f  1      OPC=nop             
  subl %eax, %eax           #  15    0x1412a0  2      OPC=subl_r32_r32_1  
.L_1412e0:                  #        0x1412a2  0      OPC=<label>         
  retq                      #  16    0x1412a2  1      OPC=retq            
                                                                          
.size wcschr, .-wcschr
