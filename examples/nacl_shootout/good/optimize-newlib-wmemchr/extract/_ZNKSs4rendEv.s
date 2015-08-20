  .text
  .globl _ZNKSs4rendEv
  .type _ZNKSs4rendEv, @function

#! file-offset 0xea760
#! rip-offset  0xaa760
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs4rendEv:             #        0xaa760  0      OPC=<label>         
  movl %esi, %esi           #  1     0xaa760  2      OPC=movl_r32_r32    
  movl %edi, %eax           #  2     0xaa762  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  3     0xaa764  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx  #  4     0xaa766  4      OPC=movl_r32_m32    
  movl %eax, %eax           #  5     0xaa76a  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)  #  6     0xaa76c  4      OPC=movl_m32_r32    
  popq %r11                 #  7     0xaa770  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  8     0xaa772  7      OPC=andl_r32_imm32  
  nop                       #  9     0xaa779  1      OPC=nop             
  nop                       #  10    0xaa77a  1      OPC=nop             
  nop                       #  11    0xaa77b  1      OPC=nop             
  nop                       #  12    0xaa77c  1      OPC=nop             
  addq %r15, %r11           #  13    0xaa77d  3      OPC=addq_r64_r64    
  jmpq %r11                 #  14    0xaa780  3      OPC=jmpq_r64        
  nop                       #  15    0xaa783  1      OPC=nop             
  nop                       #  16    0xaa784  1      OPC=nop             
  nop                       #  17    0xaa785  1      OPC=nop             
  nop                       #  18    0xaa786  1      OPC=nop             
                                                                         
.size _ZNKSs4rendEv, .-_ZNKSs4rendEv

