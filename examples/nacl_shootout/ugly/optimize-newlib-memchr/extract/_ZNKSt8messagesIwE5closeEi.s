  .text
  .globl _ZNKSt8messagesIwE5closeEi
  .type _ZNKSt8messagesIwE5closeEi, @function

#! file-offset 0xf2780
#! rip-offset  0xb2780
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIwE5closeEi:    #        0xb2780  0      OPC=<label>         
  movl %edi, %edi               #  1     0xb2780  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0xb2782  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax      #  3     0xb2784  4      OPC=movl_r32_m32    
  movl %eax, %eax               #  4     0xb2788  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax  #  5     0xb278a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax        #  6     0xb278f  6      OPC=andl_r32_imm32  
  nop                           #  7     0xb2795  1      OPC=nop             
  nop                           #  8     0xb2796  1      OPC=nop             
  nop                           #  9     0xb2797  1      OPC=nop             
  addq %r15, %rax               #  10    0xb2798  3      OPC=addq_r64_r64    
  jmpq %rax                     #  11    0xb279b  2      OPC=jmpq_r64        
  nop                           #  12    0xb279d  1      OPC=nop             
  nop                           #  13    0xb279e  1      OPC=nop             
  nop                           #  14    0xb279f  1      OPC=nop             
  nop                           #  15    0xb27a0  1      OPC=nop             
  nop                           #  16    0xb27a1  1      OPC=nop             
  nop                           #  17    0xb27a2  1      OPC=nop             
  nop                           #  18    0xb27a3  1      OPC=nop             
  nop                           #  19    0xb27a4  1      OPC=nop             
  nop                           #  20    0xb27a5  1      OPC=nop             
                                                                             
.size _ZNKSt8messagesIwE5closeEi, .-_ZNKSt8messagesIwE5closeEi

