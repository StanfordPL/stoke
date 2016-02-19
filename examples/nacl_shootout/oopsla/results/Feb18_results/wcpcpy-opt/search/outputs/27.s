  .text
  .globl wcpcpy
  .type wcpcpy, @function

#! file-offset 0x180ac0
#! rip-offset  0x140ac0
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.wcpcpy:                        #        0x140ac0  0      OPC=<label>         
.L_140ae0:                      #        0x140ac0  0      OPC=<label>         
  addl $0x4, %esi               #  1     0x140ac0  6      OPC=addl_r32_imm32  
  movl -0x4(%r15,%rsi,1), %edx  #  2     0x140ac6  5      OPC=movl_r32_m32    
  andl %edi, %edi               #  3     0x140acb  2      OPC=andl_r32_r32    
  movl %edx, (%r15,%rdi,1)      #  4     0x140acd  4      OPC=movl_m32_r32    
  movq %rdi, %rax               #  5     0x140ad1  3      OPC=movq_r64_r64    
  addw $0x4, %di                #  6     0x140ad4  4      OPC=addw_r16_imm8   
  testl %edx, %edx              #  7     0x140ad8  2      OPC=testl_r32_r32   
  jne .L_140ae0                 #  8     0x140ada  2      OPC=jne_label       
  nop                           #  9     0x140adc  1      OPC=nop             
  nopl %eax                     #  10    0x140add  3      OPC=nopl_r32        
  retq                          #  11    0x140ae0  1      OPC=retq            
                                                                              
.size wcpcpy, .-wcpcpy
