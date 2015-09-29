  .text
  .globl _ZNKSs3endEv
  .type _ZNKSs3endEv, @function

#! file-offset 0xeae20
#! rip-offset  0xaae20
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs3endEv:              #        0xaae20  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaae20  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0xaae22  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  3     0xaae24  4      OPC=movl_r32_m32    
  popq %r11                 #  4     0xaae28  2      OPC=popq_r64_1      
  leal -0xc(%rax), %edx     #  5     0xaae2a  3      OPC=leal_r32_m16    
  movl %edx, %edx           #  6     0xaae2d  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax  #  7     0xaae2f  4      OPC=addl_r32_m32    
  andl $0xffffffe0, %r11d   #  8     0xaae33  7      OPC=andl_r32_imm32  
  nop                       #  9     0xaae3a  1      OPC=nop             
  nop                       #  10    0xaae3b  1      OPC=nop             
  nop                       #  11    0xaae3c  1      OPC=nop             
  nop                       #  12    0xaae3d  1      OPC=nop             
  addq %r15, %r11           #  13    0xaae3e  3      OPC=addq_r64_r64    
  jmpq %r11                 #  14    0xaae41  3      OPC=jmpq_r64        
  nop                       #  15    0xaae44  1      OPC=nop             
  nop                       #  16    0xaae45  1      OPC=nop             
  nop                       #  17    0xaae46  1      OPC=nop             
                                                                         
.size _ZNKSs3endEv, .-_ZNKSs3endEv

