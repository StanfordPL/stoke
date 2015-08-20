  .text
  .globl _ZNKSs4dataEv
  .type _ZNKSs4dataEv, @function

#! file-offset 0xea900
#! rip-offset  0xaa900
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs4dataEv:             #        0xaa900  0      OPC=<label>         
  popq %r11                 #  1     0xaa900  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xaa902  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaa904  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xaa906  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  5     0xaa90a  7      OPC=andl_r32_imm32  
  nop                       #  6     0xaa911  1      OPC=nop             
  nop                       #  7     0xaa912  1      OPC=nop             
  nop                       #  8     0xaa913  1      OPC=nop             
  nop                       #  9     0xaa914  1      OPC=nop             
  addq %r15, %r11           #  10    0xaa915  3      OPC=addq_r64_r64    
  jmpq %r11                 #  11    0xaa918  3      OPC=jmpq_r64        
  nop                       #  12    0xaa91b  1      OPC=nop             
  nop                       #  13    0xaa91c  1      OPC=nop             
  nop                       #  14    0xaa91d  1      OPC=nop             
  nop                       #  15    0xaa91e  1      OPC=nop             
  nop                       #  16    0xaa91f  1      OPC=nop             
  nop                       #  17    0xaa920  1      OPC=nop             
  nop                       #  18    0xaa921  1      OPC=nop             
  nop                       #  19    0xaa922  1      OPC=nop             
  nop                       #  20    0xaa923  1      OPC=nop             
  nop                       #  21    0xaa924  1      OPC=nop             
  nop                       #  22    0xaa925  1      OPC=nop             
  nop                       #  23    0xaa926  1      OPC=nop             
                                                                         
.size _ZNKSs4dataEv, .-_ZNKSs4dataEv

