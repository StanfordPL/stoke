  .text
  .globl wcpcpy
  .type wcpcpy, @function

#! file-offset 0x180ac0
#! rip-offset  0x140ac0
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.wcpcpy:                        #        0x140ac0  0      OPC=<label>        
.L_140ae0:                      #        0x140ac0  0      OPC=<label>        
  addl $0x4, %esi               #  1     0x140ac0  3      OPC=addl_r32_imm8  
  movl -0x4(%r15,%rsi,1), %edx  #  2     0x140ac3  5      OPC=movl_r32_m32   
  andl %edi, %edi               #  3     0x140ac8  2      OPC=andl_r32_r32   
  movl %edx, (%r15,%rdi,1)      #  4     0x140aca  4      OPC=movl_m32_r32   
  movq %rdi, %rax               #  5     0x140ace  3      OPC=movq_r64_r64   
  nop                           #  6     0x140ad1  1      OPC=nop            
  nop                           #  7     0x140ad2  1      OPC=nop            
  nop                           #  8     0x140ad3  1      OPC=nop            
  nop                           #  9     0x140ad4  1      OPC=nop            
  nop                           #  10    0x140ad5  1      OPC=nop            
  nop                           #  11    0x140ad6  1      OPC=nop            
  nop                           #  12    0x140ad7  1      OPC=nop            
  nop                           #  13    0x140ad8  1      OPC=nop            
  addl $0x4, %edi               #  14    0x140ad9  3      OPC=addl_r32_imm8  
  testl %edx, %edx              #  15    0x140adc  2      OPC=testl_r32_r32  
  jne .L_140ae0                 #  16    0x140ade  2      OPC=jne_label      
  retq                          #  17    0x140ae0  1      OPC=retq           
                                                                             
.size wcpcpy, .-wcpcpy
