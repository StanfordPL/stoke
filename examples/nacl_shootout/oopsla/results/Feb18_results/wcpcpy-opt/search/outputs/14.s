  .text
  .globl wcpcpy
  .type wcpcpy, @function

#! file-offset 0x180ac0
#! rip-offset  0x140ac0
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.wcpcpy:                        #        0x140ac0  0      OPC=<label>         
  nop                           #  1     0x140ac0  1      OPC=nop             
  nop                           #  2     0x140ac1  1      OPC=nop             
  nop                           #  3     0x140ac2  1      OPC=nop             
.L_140ae0:                      #        0x140ac3  0      OPC=<label>         
  addl $0x4, %esi               #  4     0x140ac3  3      OPC=addl_r32_imm8   
  movl -0x4(%r15,%rsi,1), %edx  #  5     0x140ac6  5      OPC=movl_r32_m32    
  andl %edi, %edi               #  6     0x140acb  2      OPC=andl_r32_r32_1  
  movl %edx, (%r15,%rdi,1)      #  7     0x140acd  4      OPC=movl_m32_r32    
  movq %rdi, %rax               #  8     0x140ad1  3      OPC=movq_r64_r64    
  addl $0x4, %edi               #  9     0x140ad4  3      OPC=addl_r32_imm8   
  testl %edx, %edx              #  10    0x140ad7  2      OPC=testl_r32_r32   
  jne .L_140ae0                 #  11    0x140ad9  2      OPC=jne_label       
  nop                           #  12    0x140adb  1      OPC=nop             
  nop                           #  13    0x140adc  1      OPC=nop             
  nop                           #  14    0x140add  1      OPC=nop             
  nop                           #  15    0x140ade  1      OPC=nop             
  nop                           #  16    0x140adf  1      OPC=nop             
  retq                          #  17    0x140ae0  1      OPC=retq            
                                                                              
.size wcpcpy, .-wcpcpy
