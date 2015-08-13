  .text
  .globl _ZNKSt8messagesIwE5closeEi
  .type _ZNKSt8messagesIwE5closeEi, @function

#! file-offset 0xf1d60
#! rip-offset  0xb1d60
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIwE5closeEi:    #        0xb1d60  0      OPC=<label>         
  movl %edi, %edi               #  1     0xb1d60  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0xb1d62  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax      #  3     0xb1d64  4      OPC=movl_r32_m32    
  movl %eax, %eax               #  4     0xb1d68  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax  #  5     0xb1d6a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax        #  6     0xb1d6f  6      OPC=andl_r32_imm32  
  nop                           #  7     0xb1d75  1      OPC=nop             
  nop                           #  8     0xb1d76  1      OPC=nop             
  nop                           #  9     0xb1d77  1      OPC=nop             
  addq %r15, %rax               #  10    0xb1d78  3      OPC=addq_r64_r64    
  jmpq %rax                     #  11    0xb1d7b  2      OPC=jmpq_r64        
  nop                           #  12    0xb1d7d  1      OPC=nop             
  nop                           #  13    0xb1d7e  1      OPC=nop             
  nop                           #  14    0xb1d7f  1      OPC=nop             
  nop                           #  15    0xb1d80  1      OPC=nop             
  nop                           #  16    0xb1d81  1      OPC=nop             
  nop                           #  17    0xb1d82  1      OPC=nop             
  nop                           #  18    0xb1d83  1      OPC=nop             
  nop                           #  19    0xb1d84  1      OPC=nop             
  nop                           #  20    0xb1d85  1      OPC=nop             
                                                                             
.size _ZNKSt8messagesIwE5closeEi, .-_ZNKSt8messagesIwE5closeEi

