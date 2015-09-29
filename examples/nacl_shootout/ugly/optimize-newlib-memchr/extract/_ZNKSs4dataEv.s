  .text
  .globl _ZNKSs4dataEv
  .type _ZNKSs4dataEv, @function

#! file-offset 0xeb020
#! rip-offset  0xab020
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs4dataEv:             #        0xab020  0      OPC=<label>         
  popq %r11                 #  1     0xab020  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xab022  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xab024  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xab026  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  5     0xab02a  7      OPC=andl_r32_imm32  
  nop                       #  6     0xab031  1      OPC=nop             
  nop                       #  7     0xab032  1      OPC=nop             
  nop                       #  8     0xab033  1      OPC=nop             
  nop                       #  9     0xab034  1      OPC=nop             
  addq %r15, %r11           #  10    0xab035  3      OPC=addq_r64_r64    
  jmpq %r11                 #  11    0xab038  3      OPC=jmpq_r64        
  nop                       #  12    0xab03b  1      OPC=nop             
  nop                       #  13    0xab03c  1      OPC=nop             
  nop                       #  14    0xab03d  1      OPC=nop             
  nop                       #  15    0xab03e  1      OPC=nop             
  nop                       #  16    0xab03f  1      OPC=nop             
  nop                       #  17    0xab040  1      OPC=nop             
  nop                       #  18    0xab041  1      OPC=nop             
  nop                       #  19    0xab042  1      OPC=nop             
  nop                       #  20    0xab043  1      OPC=nop             
  nop                       #  21    0xab044  1      OPC=nop             
  nop                       #  22    0xab045  1      OPC=nop             
  nop                       #  23    0xab046  1      OPC=nop             
                                                                         
.size _ZNKSs4dataEv, .-_ZNKSs4dataEv

