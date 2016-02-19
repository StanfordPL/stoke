  .text
  .globl wcpcpy
  .type wcpcpy, @function

#! file-offset 0x180ac0
#! rip-offset  0x140ac0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcpcpy:                    #        0x140ac0  0      OPC=<label>        
  movl %edi, %edi           #  1     0x140ac0  2      OPC=movl_r32_r32   
  movl %esi, %esi           #  2     0x140ac2  2      OPC=movl_r32_r32   
  nop                       #  3     0x140ac4  1      OPC=nop            
  nop                       #  4     0x140ac5  1      OPC=nop            
  nop                       #  5     0x140ac6  1      OPC=nop            
  nop                       #  6     0x140ac7  1      OPC=nop            
  nop                       #  7     0x140ac8  1      OPC=nop            
  nop                       #  8     0x140ac9  1      OPC=nop            
  nop                       #  9     0x140aca  1      OPC=nop            
.L_140ae0:                  #        0x140acb  0      OPC=<label>        
  movl %esi, %esi           #  10    0x140acb  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %edx  #  11    0x140acd  4      OPC=movl_r32_m32   
  movq %rdi, %rax           #  12    0x140ad1  3      OPC=movq_r64_r64   
  addl $0x4, %esi           #  13    0x140ad4  3      OPC=addl_r32_imm8  
  movl %edi, %edi           #  14    0x140ad7  2      OPC=movl_r32_r32   
  movl %edx, (%r15,%rdi,1)  #  15    0x140ad9  4      OPC=movl_m32_r32   
  addl $0x4, %edi           #  16    0x140add  3      OPC=addl_r32_imm8  
  testl %edx, %edx          #  17    0x140ae0  2      OPC=testl_r32_r32  
  jne .L_140ae0             #  18    0x140ae2  2      OPC=jne_label      
  retq                      #  19    0x140ae4  1      OPC=retq           
                                                                         
.size wcpcpy, .-wcpcpy
