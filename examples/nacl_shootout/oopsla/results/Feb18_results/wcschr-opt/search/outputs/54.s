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
  movl %edi, %eax           #  5     0x141284  2      OPC=movl_r32_r32_1  
  jmpq .L_1412c0            #  6     0x141286  2      OPC=jmpq_label      
.L_1412a0:                  #        0x141288  0      OPC=<label>         
  addq $0x4, %rax           #  7     0x141288  7      OPC=addq_r64_imm32  
.L_1412c0:                  #        0x14128f  0      OPC=<label>         
  orl $0x0, %eax            #  8     0x14128f  5      OPC=orl_eax_imm32   
  movl (%r15,%rax,1), %edx  #  9     0x141294  4      OPC=movl_r32_m32    
  cmpl %esi, %edx           #  10    0x141298  2      OPC=cmpl_r32_r32    
  je .L_1412e0              #  11    0x14129a  2      OPC=je_label        
  testl %edx, %edx          #  12    0x14129c  2      OPC=testl_r32_r32   
  jne .L_1412a0             #  13    0x14129e  2      OPC=jne_label       
  nop                       #  14    0x1412a0  1      OPC=nop             
  nop                       #  15    0x1412a1  1      OPC=nop             
  xorq %rax, %rax           #  16    0x1412a2  3      OPC=xorq_r64_r64_1  
  nop                       #  17    0x1412a5  1      OPC=nop             
.L_1412e0:                  #        0x1412a6  0      OPC=<label>         
  retq                      #  18    0x1412a6  1      OPC=retq            
                                                                          
.size wcschr, .-wcschr
