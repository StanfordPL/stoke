  .text
  .globl wcpcpy
  .type wcpcpy, @function

#! file-offset 0x180ac0
#! rip-offset  0x140ac0
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.wcpcpy:                        #        0x140ac0  0      OPC=<label>         
.L_140ae0:                      #        0x140ac0  0      OPC=<label>         
  movl %edi, %eax               #  1     0x140ac0  2      OPC=movl_r32_r32    
  addl $0x4, %esi               #  2     0x140ac2  3      OPC=addl_r32_imm8   
  movl -0x4(%r15,%rsi,1), %edx  #  3     0x140ac5  5      OPC=movl_r32_m32    
  addl $0x4, %edi               #  4     0x140aca  6      OPC=addl_r32_imm32  
  movl %edx, -0x4(%r15,%rdi,1)  #  5     0x140ad0  5      OPC=movl_m32_r32    
  salq $0x1, %rdx               #  6     0x140ad5  3      OPC=salq_r64_one    
  jne .L_140ae0                 #  7     0x140ad8  2      OPC=jne_label       
  nop                           #  8     0x140ada  1      OPC=nop             
  nop                           #  9     0x140adb  1      OPC=nop             
  nop                           #  10    0x140adc  1      OPC=nop             
  nopl %eax                     #  11    0x140add  3      OPC=nopl_r32        
  nop                           #  12    0x140ae0  1      OPC=nop             
  retq                          #  13    0x140ae1  1      OPC=retq            
                                                                              
.size wcpcpy, .-wcpcpy
