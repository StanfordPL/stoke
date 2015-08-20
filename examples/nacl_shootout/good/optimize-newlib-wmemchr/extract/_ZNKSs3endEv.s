  .text
  .globl _ZNKSs3endEv
  .type _ZNKSs3endEv, @function

#! file-offset 0xea700
#! rip-offset  0xaa700
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs3endEv:              #        0xaa700  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaa700  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0xaa702  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  3     0xaa704  4      OPC=movl_r32_m32    
  popq %r11                 #  4     0xaa708  2      OPC=popq_r64_1      
  leal -0xc(%rax), %edx     #  5     0xaa70a  3      OPC=leal_r32_m16    
  movl %edx, %edx           #  6     0xaa70d  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax  #  7     0xaa70f  4      OPC=addl_r32_m32    
  andl $0xffffffe0, %r11d   #  8     0xaa713  7      OPC=andl_r32_imm32  
  nop                       #  9     0xaa71a  1      OPC=nop             
  nop                       #  10    0xaa71b  1      OPC=nop             
  nop                       #  11    0xaa71c  1      OPC=nop             
  nop                       #  12    0xaa71d  1      OPC=nop             
  addq %r15, %r11           #  13    0xaa71e  3      OPC=addq_r64_r64    
  jmpq %r11                 #  14    0xaa721  3      OPC=jmpq_r64        
  nop                       #  15    0xaa724  1      OPC=nop             
  nop                       #  16    0xaa725  1      OPC=nop             
  nop                       #  17    0xaa726  1      OPC=nop             
                                                                         
.size _ZNKSs3endEv, .-_ZNKSs3endEv

