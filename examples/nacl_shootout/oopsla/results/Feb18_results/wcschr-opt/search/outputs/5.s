  .text
  .globl wcschr
  .type wcschr, @function

#! file-offset 0x181280
#! rip-offset  0x141280
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wcschr:                    #        0x141280  0      OPC=<label>         
  movl %edi, %eax           #  1     0x141280  2      OPC=movl_r32_r32_1  
  jmpq .L_1412c0            #  2     0x141282  2      OPC=jmpq_label      
  nop                       #  3     0x141284  1      OPC=nop             
  nop                       #  4     0x141285  1      OPC=nop             
  nop                       #  5     0x141286  1      OPC=nop             
.L_1412a0:                  #        0x141287  0      OPC=<label>         
  addq $0x4, %rax           #  6     0x141287  6      OPC=addq_rax_imm32  
.L_1412c0:                  #        0x14128d  0      OPC=<label>         
  andl %eax, %eax           #  7     0x14128d  2      OPC=andl_r32_r32    
  movl (%r15,%rax,1), %edx  #  8     0x14128f  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  9     0x141293  2      OPC=cmpl_r32_r32    
  je .L_1412e0              #  10    0x141295  2      OPC=je_label        
  testl %edx, %edx          #  11    0x141297  2      OPC=testl_r32_r32   
  jne .L_1412a0             #  12    0x141299  2      OPC=jne_label       
  nop                       #  13    0x14129b  1      OPC=nop             
  nop                       #  14    0x14129c  1      OPC=nop             
  nop                       #  15    0x14129d  1      OPC=nop             
  nop                       #  16    0x14129e  1      OPC=nop             
  nop                       #  17    0x14129f  1      OPC=nop             
  nop                       #  18    0x1412a0  1      OPC=nop             
  nop                       #  19    0x1412a1  1      OPC=nop             
  xorl %eax, %eax           #  20    0x1412a2  2      OPC=xorl_r32_r32    
.L_1412e0:                  #        0x1412a4  0      OPC=<label>         
  nop                       #  21    0x1412a4  1      OPC=nop             
  nop                       #  22    0x1412a5  1      OPC=nop             
  nop                       #  23    0x1412a6  1      OPC=nop             
  nop                       #  24    0x1412a7  1      OPC=nop             
  retq                      #  25    0x1412a8  1      OPC=retq            
                                                                          
.size wcschr, .-wcschr
