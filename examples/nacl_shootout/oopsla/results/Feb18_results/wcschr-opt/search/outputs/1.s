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
.L_1412a0:                  #        0x141284  0      OPC=<label>         
  addl $0x4, %eax           #  3     0x141284  3      OPC=addl_r32_imm8   
  nop                       #  4     0x141287  1      OPC=nop             
  nop                       #  5     0x141288  1      OPC=nop             
  nop                       #  6     0x141289  1      OPC=nop             
  nop                       #  7     0x14128a  1      OPC=nop             
.L_1412c0:                  #        0x14128b  0      OPC=<label>         
  movl %eax, %eax           #  8     0x14128b  2      OPC=movl_r32_r32_1  
  movl (%r15,%rax,1), %edx  #  9     0x14128d  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  10    0x141291  2      OPC=cmpl_r32_r32    
  je .L_1412e0              #  11    0x141293  2      OPC=je_label        
  testl %edx, %edx          #  12    0x141295  2      OPC=testl_r32_r32   
  jne .L_1412a0             #  13    0x141297  2      OPC=jne_label       
  xorl %eax, %eax           #  14    0x141299  2      OPC=xorl_r32_r32    
  nop                       #  15    0x14129b  1      OPC=nop             
  nop                       #  16    0x14129c  1      OPC=nop             
  nop                       #  17    0x14129d  1      OPC=nop             
  nop                       #  18    0x14129e  1      OPC=nop             
  nop                       #  19    0x14129f  1      OPC=nop             
  nop                       #  20    0x1412a0  1      OPC=nop             
  nop                       #  21    0x1412a1  1      OPC=nop             
  nop                       #  22    0x1412a2  1      OPC=nop             
  nop                       #  23    0x1412a3  1      OPC=nop             
  nop                       #  24    0x1412a4  1      OPC=nop             
  nopl %eax                 #  25    0x1412a5  3      OPC=nopl_r32        
  nop                       #  26    0x1412a8  1      OPC=nop             
  nop                       #  27    0x1412a9  1      OPC=nop             
  nop                       #  28    0x1412aa  1      OPC=nop             
.L_1412e0:                  #        0x1412ab  0      OPC=<label>         
  nopl %eax                 #  29    0x1412ab  3      OPC=nopl_r32        
  nop                       #  30    0x1412ae  1      OPC=nop             
  nop                       #  31    0x1412af  1      OPC=nop             
  nop                       #  32    0x1412b0  1      OPC=nop             
  nop                       #  33    0x1412b1  1      OPC=nop             
  nop                       #  34    0x1412b2  1      OPC=nop             
  retq                      #  35    0x1412b3  1      OPC=retq            
                                                                          
.size wcschr, .-wcschr
