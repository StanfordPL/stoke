  .text
  .globl _ZNKSt8messagesIcE5closeEi
  .type _ZNKSt8messagesIcE5closeEi, @function

#! file-offset 0xb90c0
#! rip-offset  0x790c0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIcE5closeEi:    #        0x790c0  0      OPC=<label>         
  movl %edi, %edi               #  1     0x790c0  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0x790c2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax      #  3     0x790c4  4      OPC=movl_r32_m32    
  movl %eax, %eax               #  4     0x790c8  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax  #  5     0x790ca  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax        #  6     0x790cf  6      OPC=andl_r32_imm32  
  nop                           #  7     0x790d5  1      OPC=nop             
  nop                           #  8     0x790d6  1      OPC=nop             
  nop                           #  9     0x790d7  1      OPC=nop             
  addq %r15, %rax               #  10    0x790d8  3      OPC=addq_r64_r64    
  jmpq %rax                     #  11    0x790db  2      OPC=jmpq_r64        
  nop                           #  12    0x790dd  1      OPC=nop             
  nop                           #  13    0x790de  1      OPC=nop             
  nop                           #  14    0x790df  1      OPC=nop             
  nop                           #  15    0x790e0  1      OPC=nop             
  nop                           #  16    0x790e1  1      OPC=nop             
  nop                           #  17    0x790e2  1      OPC=nop             
  nop                           #  18    0x790e3  1      OPC=nop             
  nop                           #  19    0x790e4  1      OPC=nop             
  nop                           #  20    0x790e5  1      OPC=nop             
                                                                             
.size _ZNKSt8messagesIcE5closeEi, .-_ZNKSt8messagesIcE5closeEi

