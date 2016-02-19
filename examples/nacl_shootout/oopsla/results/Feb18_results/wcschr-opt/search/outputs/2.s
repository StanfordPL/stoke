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
.L_1412c0:                  #        0x14128a  0      OPC=<label>         
  movl %eax, %eax           #  7     0x14128a  2      OPC=movl_r32_r32_1  
  movl (%r15,%rax,1), %edx  #  8     0x14128c  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  9     0x141290  2      OPC=cmpl_r32_r32    
  je .L_1412e0              #  10    0x141292  2      OPC=je_label        
  testl %edx, %edx          #  11    0x141294  2      OPC=testl_r32_r32   
  jne .L_1412a0             #  12    0x141296  2      OPC=jne_label       
  xorl %eax, %eax           #  13    0x141298  2      OPC=xorl_r32_r32    
  nop                       #  14    0x14129a  1      OPC=nop             
  nop                       #  15    0x14129b  1      OPC=nop             
  nop                       #  16    0x14129c  1      OPC=nop             
  nop                       #  17    0x14129d  1      OPC=nop             
  nop                       #  18    0x14129e  1      OPC=nop             
  nop                       #  19    0x14129f  1      OPC=nop             
  nop                       #  20    0x1412a0  1      OPC=nop             
  nop                       #  21    0x1412a1  1      OPC=nop             
  nop                       #  22    0x1412a2  1      OPC=nop             
  nopl %eax                 #  23    0x1412a3  3      OPC=nopl_r32        
  nop                       #  24    0x1412a6  1      OPC=nop             
  nop                       #  25    0x1412a7  1      OPC=nop             
  nop                       #  26    0x1412a8  1      OPC=nop             
.L_1412e0:                  #        0x1412a9  0      OPC=<label>         
  nop                       #  27    0x1412a9  1      OPC=nop             
  nop                       #  28    0x1412aa  1      OPC=nop             
  nop                       #  29    0x1412ab  1      OPC=nop             
  nop                       #  30    0x1412ac  1      OPC=nop             
  retq                      #  31    0x1412ad  1      OPC=retq            
                                                                          
.size wcschr, .-wcschr
