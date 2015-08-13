  .text
  .globl _ZNKSs3endEv
  .type _ZNKSs3endEv, @function

#! file-offset 0xea400
#! rip-offset  0xaa400
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs3endEv:              #        0xaa400  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaa400  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0xaa402  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  3     0xaa404  4      OPC=movl_r32_m32    
  popq %r11                 #  4     0xaa408  2      OPC=popq_r64_1      
  leal -0xc(%rax), %edx     #  5     0xaa40a  3      OPC=leal_r32_m16    
  movl %edx, %edx           #  6     0xaa40d  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax  #  7     0xaa40f  4      OPC=addl_r32_m32    
  andl $0xffffffe0, %r11d   #  8     0xaa413  7      OPC=andl_r32_imm32  
  nop                       #  9     0xaa41a  1      OPC=nop             
  nop                       #  10    0xaa41b  1      OPC=nop             
  nop                       #  11    0xaa41c  1      OPC=nop             
  nop                       #  12    0xaa41d  1      OPC=nop             
  addq %r15, %r11           #  13    0xaa41e  3      OPC=addq_r64_r64    
  jmpq %r11                 #  14    0xaa421  3      OPC=jmpq_r64        
  nop                       #  15    0xaa424  1      OPC=nop             
  nop                       #  16    0xaa425  1      OPC=nop             
  nop                       #  17    0xaa426  1      OPC=nop             
                                                                         
.size _ZNKSs3endEv, .-_ZNKSs3endEv

