  .text
  .globl wcpcpy
  .type wcpcpy, @function

#! file-offset 0x180ac0
#! rip-offset  0x140ac0
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.wcpcpy:                        #        0x140ac0  0      OPC=<label>        
  nop                           #  1     0x140ac0  1      OPC=nop            
  andl %edi, %edi               #  2     0x140ac1  2      OPC=andl_r32_r32   
  nop                           #  3     0x140ac3  1      OPC=nop            
  nop                           #  4     0x140ac4  1      OPC=nop            
  nop                           #  5     0x140ac5  1      OPC=nop            
.L_140ae0:                      #        0x140ac6  0      OPC=<label>        
  addl $0x4, %esi               #  6     0x140ac6  3      OPC=addl_r32_imm8  
  movl -0x4(%r15,%rsi,1), %edx  #  7     0x140ac9  5      OPC=movl_r32_m32   
  movl %edi, %edi               #  8     0x140ace  2      OPC=movl_r32_r32   
  movl %edx, (%r15,%rdi,1)      #  9     0x140ad0  4      OPC=movl_m32_r32   
  movq %rdi, %rax               #  10    0x140ad4  3      OPC=movq_r64_r64   
  addl $0x4, %edi               #  11    0x140ad7  3      OPC=addl_r32_imm8  
  testl %edx, %edx              #  12    0x140ada  2      OPC=testl_r32_r32  
  jne .L_140ae0                 #  13    0x140adc  2      OPC=jne_label      
  nop                           #  14    0x140ade  1      OPC=nop            
  nop                           #  15    0x140adf  1      OPC=nop            
  retq                          #  16    0x140ae0  1      OPC=retq           
                                                                             
.size wcpcpy, .-wcpcpy
