  .text
  .globl _ZNKSs4rendEv
  .type _ZNKSs4rendEv, @function

#! file-offset 0xea460
#! rip-offset  0xaa460
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs4rendEv:             #        0xaa460  0      OPC=<label>         
  movl %esi, %esi           #  1     0xaa460  2      OPC=movl_r32_r32    
  movl %edi, %eax           #  2     0xaa462  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  3     0xaa464  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx  #  4     0xaa466  4      OPC=movl_r32_m32    
  movl %eax, %eax           #  5     0xaa46a  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)  #  6     0xaa46c  4      OPC=movl_m32_r32    
  popq %r11                 #  7     0xaa470  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  8     0xaa472  7      OPC=andl_r32_imm32  
  nop                       #  9     0xaa479  1      OPC=nop             
  nop                       #  10    0xaa47a  1      OPC=nop             
  nop                       #  11    0xaa47b  1      OPC=nop             
  nop                       #  12    0xaa47c  1      OPC=nop             
  addq %r15, %r11           #  13    0xaa47d  3      OPC=addq_r64_r64    
  jmpq %r11                 #  14    0xaa480  3      OPC=jmpq_r64        
  nop                       #  15    0xaa483  1      OPC=nop             
  nop                       #  16    0xaa484  1      OPC=nop             
  nop                       #  17    0xaa485  1      OPC=nop             
  nop                       #  18    0xaa486  1      OPC=nop             
                                                                         
.size _ZNKSs4rendEv, .-_ZNKSs4rendEv

